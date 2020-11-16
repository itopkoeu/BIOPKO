CREATE PROCEDURE [audit].[spUpdateTableProcessing]
                @PkgExecKey integer,
                @TableName nvarchar(128),
                @TableProcessKey integer,
                @InsertStdRowCnt integer,
                @InsertNonStdRowCnt integer,
                @UpdateRowCnt integer,
                @ErrorRowCnt integer,
                @TableFinalRowCnt integer,
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

                UPDATE audit.TableProcessing
                SET InsertStdRowCnt = @InsertStdRowCnt,
                    InsertNonStdRowCnt = @InsertNonStdRowCnt,
                    UpdateRowCnt = @UpdateRowCnt,
                    ErrorRowCnt = @ErrorRowCnt,
                    TableFinalRowCnt = @TableFinalRowCnt,
                    SuccessFlag = @SuccessFlag,
                               StopTime = GETDATE()
                WHERE TableProcessKey = @TableProcessKey
                               
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
                
                EXEC err.spManageError  @TableName, @PkgExecKey, @ErrorProcedure, @ErrorMessage, @ErrorNumber, @ErrorSeverity, @ErrorState, @ErrorLine, @ReturnCode
                
                RETURN 1            
END CATCH
END
