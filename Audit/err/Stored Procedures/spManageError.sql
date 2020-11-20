CREATE PROCEDURE [err].[spManageError]
@TableName nvarchar(128) = 'Desconocida',
@PkgExecKey integer = -1,
@TableProcessKey integer = -1,
@AuditKey integer = -1,
@ErrorProcedure nvarchar(126) = 'Desconocido',
@ErrorMessage nvarchar(2048) = 'Desconocido',
@ErrorNumber integer = -1,
@ErrorSeverity integer = -1,
@ErrorState integer = -1,
@ErrorLine integer = -1,
@ReturnCode integer = -1

AS
BEGIN

BEGIN TRY
INSERT INTO [err].[ErrorLog] (TableName, PkgExecKey, TableProcessKey, AuditKey, ReturnCode, ErrorProcedure, ErrorMessage, ErrorNumber, ErrorSeverity, ErrorState, ErrorLine)
VALUES (@TableName, @PkgExecKey, @TableProcessKey, @AuditKey, @ReturnCode, @ErrorProcedure, @ErrorMessage, @ErrorNumber, @ErrorSeverity, @ErrorState, @ErrorLine)
END TRY
BEGIN CATCH
RAISERROR(60000, -1, -1)
END CATCH

END
