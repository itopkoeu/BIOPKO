CREATE PROCEDURE [etl].[spLoad_fdpVBAK]
/*
=============================================================================================================================================================
	Autor: José Miguel Calzada Lisbona
	Fecha: 01-12-2020
	Descripción: SP que realiza una carga incremental usando una vista de extracción
	Historial: 
=============================================================================================================================================================
*/

-- Parámetros 
	@TableSchema nvarchar(128), -- Control de errores
	@TableName nvarchar(128), -- Control de errores
	@PkgExecKey int, -- Auditoría
	@TableProcessKey int, -- Auditoría
	@LastSuccessLoad datetime = '01-01-1753', -- Fecha de la última carga correcta
	@InsertedRows int OUTPUT, -- Auditoría
	@UpdatedRows int OUTPUT, -- Auditoría
	@DeletedRows int OUTPUT -- Auditoría

AS
BEGIN
    -- Variable tipo tabla para guardar las cantidades de filas insertadas, actualizadas y borradas
	-- Las columnas "InsertKey" y "DeleteKey" deben ser del mismo tipo que la clave principal de la tabla que se carga.
	-- Si la clave principal es compuesta, debería montarse una pseudoclave concatenando los valores de las columnas que la formen 
	DECLARE @OutputRowSet Table (RowAction nvarchar(10), InsertKey nvarchar(20), DeleteKey nvarchar(20))

	-- Variables para registro del error 
	DECLARE @ErrorProcedure nvarchar(126)
	DECLARE @ErrorMessage nvarchar(2048)
	DECLARE @ErrorNumber integer
	DECLARE @ErrorSeverity integer
	DECLARE @ErrorState integer
	DECLARE @ErrorLine integer
	DECLARE @ReturnCode integer = 0

	-- Evita que se devuelva el mensaje que muestra el recuento del número de filas afectadas por una instrucción o un procedimiento almacenado. 	
	SET NOCOUNT ON;
		
	BEGIN TRY

		MERGE fdp.VBAK AS target
		USING (SELECT MANDT -- Mandante. PK 0
					 ,VBELN -- Documento de venta. PK 1
	                 ,KUNNR --Solicitante
	                 ,ERDAT -- Fecha de creación del registro o del documento
	                 ,ERZET -- Hora de creación del registro o del documento
	                 ,AUART -- Tipo de documento
	                 ,AUGRU -- Motivo del pedido
	                 ,NETWR -- Valor Neto
	                 ,WAERK -- Moneda
	                 ,VKORG -- Organización de ventas
	                 ,VTWEG -- Canal
	                 ,SPART -- Sector
	                 ,KNUMV -- Condición documento
	                 ,VDATU -- Fecha preferente de entrega
	                 ,AEDAT -- Fecha de modificación  del registro o del documento
	                 ,KOKRS -- Sociedad CO
		FROM [origen].[vVBAK]
		WHERE ERDAT >= @LastSuccessLoad OR AEDAT >= @LastSuccessLoad) AS source -- Podemos usar una consulta directamente aquí o una vista de extracción
		ON target.MANDT = source.MANDT AND target.VBELN = source.VBELN   
		WHEN NOT MATCHED THEN -- Cuando la fila no se encuentra en Staging pero sí en Producción se inserta 
		INSERT (MANDT
			   ,VBELN
			   ,KUNNR
			   ,ERDAT
			   ,ERZET
			   ,AUART
			   ,AUGRU
			   ,NETWR
			   ,WAERK
			   ,VKORG
			   ,VTWEG
			   ,SPART
			   ,KNUMV
			   ,VDATU
			   ,AEDAT
			   ,KOKRS
			   ,InsertAuditKey -- Metadatos de auditoría
			   ,UpdateAuditKey -- Metadatos de auditoría
			   ,DataqualityFlag) -- -- Metadatos de control de calidad
		VALUES (source.MANDT
               ,source.VBELN
               ,source.KUNNR
               ,source.ERDAT
               ,source.ERZET
               ,source.AUART
               ,source.AUGRU
               ,source.NETWR
               ,source.WAERK
               ,source.VKORG
               ,source.VTWEG
               ,source.SPART
               ,source.KNUMV
               ,source.VDATU
               ,source.AEDAT
               ,source.KOKRS
			   ,@TableProcessKey -- Parámetro recibido desde el objeto que llamó al SP
			   ,-1 -- Valor por defecto que enlaza con el registro desconocido de Audit.audit.TableProcessing
		       ,'0') -- Valor por defecto que indica que el registro no tiene incidencias de control de calidad

		 WHEN NOT MATCHED BY SOURCE THEN DELETE -- Cuando la fila no se encuentra en Producción pero sí en Staging se borra

		 -- Cuando la fila se encuentra en Producción y en Staging y hay cambios en cualquier columna...
		 WHEN MATCHED THEN -- ... se actualiza todo excepto la clave única, la clave de inserción y el indicador de calidad
		 UPDATE SET target.KUNNR = source.KUNNR
					 ,target.ERDAT = source.ERDAT
					 ,target.ERZET = source.ERZET
					 ,target.AUART = source.AUART
					 ,target.AUGRU = source.AUGRU
					 ,target.NETWR = source.NETWR
					 ,target.WAERK = source.WAERK
					 ,target.VKORG = source.VKORG
					 ,target.VTWEG = source.VTWEG
					 ,target.SPART = source.SPART
					 ,target.KNUMV = source.KNUMV
					 ,target.VDATU = source.VDATU
					 ,target.AEDAT = source.AEDAT
					 ,target.KOKRS = source.KOKRS
					 ,target.UpdateAuditKey=  @TableProcessKey -- Parámetro recibido desde el objeto que llamó al SP
         -- Enviamos la salida de MERGE a la variable tipo tabla declarada arriba. Si es necesario convertimos el tipo de datos de la clave única al de la columna
		 OUTPUT $action, CAST((INSERTED.MANDT + INSERTED.VBELN) AS nvarchar(20)), CAST((DELETED.MANDT + DELETED.VBELN) AS nvarchar(20)) INTO @OutputRowSet;

		 -- Asignamos las cantidades de registros afectados por las diferentes operaciones a los parámetros de salida
		 SET @InsertedRows = (SELECT COUNT(InsertKey) FROM @OutputRowSet WHERE RowAction = 'INSERT')
		 SET @UpdatedRows = (SELECT COUNT(InsertKey) FROM @OutputRowSet WHERE RowAction = 'UPDATE')
		 SET @DeletedRows = (SELECT COUNT(DeleteKey) FROM @OutputRowSet WHERE RowAction = 'DELETE')
		  
	END TRY
	BEGIN CATCH
		--------------------------------------------------------------
	    -- Error en la instrucción MERGE
	    --------------------------------------------------------------
	 	SET @ReturnCode = 1 -- Ponemos el código de retorno a un valor distinto de 0
 		
		-- Capturamos los valores de las funciones de control de errores para enviarlos a los procedimientos que los tratan
 		SET @ErrorProcedure = ERROR_PROCEDURE() 
		SET @ErrorMessage = ERROR_MESSAGE() 
		SET @ErrorNumber = ERROR_NUMBER()  
		SET @ErrorSeverity = ERROR_SEVERITY() 
		SET @ErrorState = ERROR_STATE() 
		SET @ErrorLine = ERROR_LINE() 
		
		-- Llamamos a los procedimientos de tratamiento de errores
		EXEC Audit.err.spManageError @TableName, @PkgExecKey, @TableProcessKey, @ErrorProcedure, @ErrorMessage, @ErrorNumber, @ErrorSeverity, @ErrorState, @ErrorLine, @ReturnCode 
	
		RETURN @ReturnCode
	END CATCH
	
	RETURN @ReturnCode
END





GO

