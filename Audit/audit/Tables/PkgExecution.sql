CREATE TABLE [audit].[PkgExecution] (
    [PkgExecKey]       INT              IDENTITY (1, 1) NOT NULL,
    [ParentPkgExecKey] INT              DEFAULT ((0)) NOT NULL,
    [PackageName]      NVARCHAR (50)    NOT NULL,
    [PackageID]        UNIQUEIDENTIFIER NOT NULL,
    [VersionGUID]      UNIQUEIDENTIFIER NOT NULL,
    [VersionMajor]     INT              DEFAULT ((1)) NOT NULL,
    [VersionMinor]     INT              DEFAULT ((0)) NOT NULL,
    [VersionBuild]     INT              DEFAULT ((0)) NOT NULL,
    [StartTime]        DATETIME         CONSTRAINT [DF_PkgExecution_StartDT] DEFAULT (getdate()) NOT NULL,
    [StopTime]         DATETIME         NULL,
    [SuccessFlag]      NCHAR (1)        DEFAULT (N'N') NOT NULL,
    [Duration]         AS               (datediff(second,[StartTime],[StopTime])) PERSISTED NOT NULL,
    CONSTRAINT [PK_PkgExecution] PRIMARY KEY CLUSTERED ([PkgExecKey] ASC),
    CONSTRAINT [FK_PkgExecution_PkgExecution] FOREIGN KEY ([ParentPkgExecKey]) REFERENCES [audit].[PkgExecution] ([PkgExecKey])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave única', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'PkgExecution', @level2type = N'COLUMN', @level2name = N'PkgExecKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave única del paquete que llama a la ejecución de este. 0 para ninguno.', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'PkgExecution', @level2type = N'COLUMN', @level2name = N'ParentPkgExecKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del paquete o procedimiento almacenado', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'PkgExecution', @level2type = N'COLUMN', @level2name = N'PackageName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador único del paquete o procedimiento almacenado', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'PkgExecution', @level2type = N'COLUMN', @level2name = N'PackageID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador único de la versión del paquete o procedimiento almacenado', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'PkgExecution', @level2type = N'COLUMN', @level2name = N'VersionGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Versión principal', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'PkgExecution', @level2type = N'COLUMN', @level2name = N'VersionMajor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Versión secundaria', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'PkgExecution', @level2type = N'COLUMN', @level2name = N'VersionMinor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Versión de compilación', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'PkgExecution', @level2type = N'COLUMN', @level2name = N'VersionBuild';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Hora de inicio de la ejecución', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'PkgExecution', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Hora de final de la ejecución', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'PkgExecution', @level2type = N'COLUMN', @level2name = N'StopTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicador de finalización correcta ''Y'' o incorrecta ''N''', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'PkgExecution', @level2type = N'COLUMN', @level2name = N'SuccessFlag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiempo de ejecución en segundos', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'PkgExecution', @level2type = N'COLUMN', @level2name = N'Duration';

