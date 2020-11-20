CREATE PROCEDURE [audit].[spUpdatePkgExecution]
                @PkgExecKey integer,
                @SuccessFlag nchar(1)
                
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
                SET NOCOUNT ON;

                UPDATE audit.PkgExecution
                SET StopTime = getdate()
                   ,SuccessFlag = @SuccessFlag  
                WHERE PkgExecKey = @PkgExecKey
                
                RETURN 0
END TRY
BEGIN CATCH
                SET @ErrorProcedure = ERROR_PROCEDURE() 
                SET @ErrorMessage = ERROR_MESSAGE() 
                SET @ErrorNumber = ERROR_NUMBER()  
                SET @ErrorSeverity = ERROR_SEVERITY() 
                SET @ErrorState = ERROR_STATE() 
                SET @ErrorLine = ERROR_LINE() 
                SET @ReturnCode = 1
                
                EXEC err.spManageError  @PkgExecKey, @ErrorProcedure, @ErrorMessage, @ErrorNumber, @ErrorSeverity, @ErrorState, @ErrorLine, @ReturnCode
                
                RETURN 1            
END CATCH
END
