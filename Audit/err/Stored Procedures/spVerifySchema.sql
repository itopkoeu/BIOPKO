CREATE PROCEDURE [err].[spVerifySchema]
                @SourceType nvarchar(128) = 'SQLSERVER', -- Indica desde qué tipo de SGBD se carga la tabla
                @TableSchema nvarchar(128),
                @TableName nvarchar(128),
                @PkgExecKey int

AS
BEGIN
                -- Variables para sp_send_dbmail
                DECLARE @Perfil AS nvarchar(255)
                DECLARE @A AS varchar(max)
                DECLARE @CC AS varchar(max)
                DECLARE @Asunto AS nvarchar(255)
                DECLARE @Texto AS nvarchar(max)
                DECLARE @Formato AS varchar(20)
                DECLARE @Importancia AS varchar(6)

                -- Variables para registro del error 
                DECLARE @ErrorProcedure nvarchar(126)
                DECLARE @ErrorMessage nvarchar(2048)
                DECLARE @ErrorNumber integer
                DECLARE @ErrorSeverity integer
                DECLARE @ErrorState integer
                DECLARE @ErrorLine integer
                DECLARE @ReturnCode integer
                
                
                SET NOCOUNT ON;
                

                
                --------------------------------------------------------------
                -- Insertar error en la tabla de registro
                --------------------------------------------------------------
                BEGIN TRY
                               
                               IF @TableSchema = 'aux' RETURN 0 --El esquema aux reune tablas que se llenan a partir de una query y el esquema de las tablas se verifica previamente
                               
                               IF @SourceType = 'SQLSERVER'
                               BEGIN
                                               INSERT INTO err.SchemaChanges(
                                                  TABLE_SCHEMA 
                                     ,TABLE_NAME
                                                 ,COLUMN_NAME
                                                 ,COLUMN_DEFAULT
                                                 ,IS_NULLABLE
                                                 ,DATA_TYPE
                                                 ,CHARACTER_MAXIMUM_LENGTH
                                                 ,NUMERIC_PRECISION
                                                 ,NUMERIC_SCALE
                                                 ,DATETIME_PRECISION
                                                 ,CHARACTER_SET_NAME
                                                 ,COLLATION_NAME)
                                               SELECT * from audit.fnCompareSchema(@TableSchema, @TableName)
                               END
                --            ELSE IF @SourceType = 'ORACLE'
                --            BEGIN
                --                            SELECT * from etl.fnCompareSchemaOra11g(@TableSchema, @TableName)
                --  END  
                               
                               IF @@ROWCOUNT > 0 RAISERROR(50001,11,1)                               

                               SET @ReturnCode = 0 -- Fin de ejecución correcto sin detección de cambios en esquema                                

                END TRY
                BEGIN CATCH
                               SET @ReturnCode = 2 -- Cambios en esquema
                              
                               SET @ErrorProcedure = ERROR_PROCEDURE() 
                               SET @ErrorMessage = ERROR_MESSAGE() 
                               SET @ErrorNumber = ERROR_NUMBER()  
                               SET @ErrorSeverity = ERROR_SEVERITY() 
                               SET @ErrorState = ERROR_STATE() 
                               SET @ErrorLine = ERROR_LINE() 
                               
                               EXEC err.spManageError  @TableName, @PkgExecKey, -1, -1, @ErrorProcedure, @ErrorMessage, @ErrorNumber, @ErrorSeverity, @ErrorState, @ErrorLine, @ReturnCode 

                RETURN @ReturnCode 

                END CATCH
                
                RETURN @ReturnCode
END
