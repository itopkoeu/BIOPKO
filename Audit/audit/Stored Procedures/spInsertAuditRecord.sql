CREATE PROCEDURE [audit].[spInsertAuditRecord]
                @TableProcessKey integer,
                @TableName nvarchar(128),
                @PkgExecKey integer,
                @BranchName nvarchar(50),
                @BranchRowCnt integer,
                @ProcessingSummaryGroup nvarchar(15)
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
                SET NOCOUNT ON

                INSERT INTO [audit].[AuditDimension] (TableProcessKey, BranchName, BranchRowCnt, ProcessingSummaryGroup)
                VALUES (@TableProcessKey, @BranchName, @BranchRowCnt, @ProcessingSummaryGroup)

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

               EXEC err.spManageError  @TableName, @PkgExecKey, @TableProcessKey, @ErrorProcedure, @ErrorMessage, @ErrorNumber, @ErrorSeverity, @ErrorState, @ErrorLine, @ReturnCode
                
                RETURN 1  
END CATCH
RETURN
END
