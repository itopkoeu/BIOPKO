
CREATE VIEW [etl].[dimSolicitante] AS 

 SELECT  KNA1.KUNNR BusinessKey
 , KNA1.NAME1 NombreSolicitante
 , KNA1.ORT01 Población
 , KNA1.PSTLZ CodigoPostal
 , T005U.BEZEI Provincia
 , KNA1.STRAS Direccion
 , KNA1.TELF1 Telefono
 
   FROM [Staging].[fdp].[KNA1] KNA1

   LEFT JOIN FDGSAP01.[FDP].[fdp].[T005U] 	T005U	
   ON T005U.BLAND = KNA1.REGIO
   AND T005U.SPRAS = 'S'
   AND T005U.LAND1 = KNA1.LAND1
   AND T005U.MANDT = KNA1.MANDT



