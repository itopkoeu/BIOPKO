CREATE PROCEDURE [audit].[spGetPkgExecutionKey]
                @PackageName nvarchar(50),
                @PackageID uniqueidentifier,
                @VersionGUID uniqueidentifier,
                @VersionMajor int,
                @VersionMinor int,
                @VersionBuild int,
                @StartTime datetime,
                @ParentPkgExecKey integer = 0,
                @PkgExecKey integer OUTPUT
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
                
                SET @PkgExecKey = -1

                INSERT INTO [audit].[PkgExecution] (PackageName, PackageID, VersionGUID, VersionMajor, VersionMinor, VersionBuild, StartTime, ParentPkgExecKey)
                VALUES (@PackageName, @PackageID, @VersionGUID, @VersionMajor, @VersionMinor, @VersionBuild, @StartTime, @ParentPkgExecKey)

                SET @PkgExecKey = (SELECT MAX(PkgExecKey) FROM [audit].[PkgExecution])
                
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
