/*
=============================================================================================================================================================
	Autor: José Miguel Calzada Lisbona
	Fecha: 30-11-2020
	Descripción: SP que inserta los registros nuevos para controlar la última carga correcta
	Historial: 
=============================================================================================================================================================
*/

CREATE PROCEDURE [audit].[spInsertLastLoadSuccessTime]
	@ParentPkgExecKey int
AS
BEGIN
	DECLARE @ErrorProcedure nvarchar(126)
    DECLARE @ErrorMessage nvarchar(2048)
    DECLARE @ErrorNumber integer
    DECLARE @ErrorSeverity integer
    DECLARE @ErrorState integer
    DECLARE @ErrorLine integer
    DECLARE @ReturnCode integer

BEGIN TRY
	INSERT INTO audit.LastSuccessLoads (SchemaName, TableName)
      
    SELECT s.name, t.name
    FROM sys.tables t
    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id

    EXCEPT

    SELECT SchemaName, TableName
    FROM audit.LastSuccessLoads

END TRY
BEGIN CATCH
    SET @ErrorProcedure = ERROR_PROCEDURE() 
    SET @ErrorMessage = ERROR_MESSAGE() 
    SET @ErrorNumber = ERROR_NUMBER()  
    SET @ErrorSeverity = ERROR_SEVERITY() 
    SET @ErrorState = ERROR_STATE() 
    SET @ErrorLine = ERROR_LINE()
    SET @ReturnCode = 1 

    EXEC err.spManageError  @ParentPkgExecKey, @ErrorProcedure, @ErrorMessage, @ErrorNumber, @ErrorSeverity, @ErrorState, @ErrorLine, @ReturnCode 

    RETURN 1   

END CATCH
RETURN 0

END
