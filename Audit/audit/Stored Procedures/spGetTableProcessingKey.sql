CREATE PROCEDURE [audit].[spGetTableProcessingKey]
                @PkgExecKey integer,
                @TableName nvarchar(128),
                @ExtractRowCnt integer,
                @TableInitialRowCnt integer,
                @TableProcessKey integer OUTPUT
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
                
                SET @TableProcessKey = -1

                INSERT INTO [audit].[TableProcessing] (PkgExecKey, TableName, ExtractRowCnt, TableInitialRowCnt)
                VALUES (@PkgExecKey, @TableName, @ExtractRowCnt, @TableInitialRowCnt)

                SET @TableProcessKey = (SELECT Max(TableProcessKey)             FROM [audit].[TableProcessing] 
                WHERE PkgExecKey = @PkgExecKey AND TableName = @TableName)
                               
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
