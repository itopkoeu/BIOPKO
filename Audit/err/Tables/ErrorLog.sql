CREATE TABLE [err].[ErrorLog] (
    [ErrorKey]        INT             IDENTITY (1, 1) NOT NULL,
    [ErrorTime]       DATETIME        CONSTRAINT [DF_ErrorLog_ErrorTime] DEFAULT (getdate()) NOT NULL,
    [TableName]       NVARCHAR (128)  NOT NULL,
    [PkgExecKey]      INT             NOT NULL,
    [TableProcessKey] INT             NOT NULL,
    [AuditKey]        INT             NOT NULL,
    [ErrorProcedure]  NVARCHAR (126)  NOT NULL,
    [ErrorMessage]    NVARCHAR (2048) NOT NULL,
    [ErrorNumber]     INT             NOT NULL,
    [ErrorSeverity]   INT             NOT NULL,
    [ErrorState]      INT             NOT NULL,
    [ErrorLine]       INT             NOT NULL,
    [ReturnCode]      INT             NOT NULL,
    CONSTRAINT [PK_ErrorsLog] PRIMARY KEY CLUSTERED ([ErrorKey] ASC),
    CONSTRAINT [FK_PkgErrorLog_AuditDimension] FOREIGN KEY ([AuditKey]) REFERENCES [audit].[AuditDimension] ([AuditKey]),
    CONSTRAINT [FK_PkgErrorLog_PkgExecution] FOREIGN KEY ([PkgExecKey]) REFERENCES [audit].[PkgExecution] ([PkgExecKey]),
    CONSTRAINT [FK_PkgErrorLog_TableProcessing] FOREIGN KEY ([TableProcessKey]) REFERENCES [audit].[TableProcessing] ([TableProcessKey])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave externa a la tabla audit.AuditDimension', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave única', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Fecha y hora del error', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Esquema y nombre de la tabla donde se produjo el error', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'TableName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave externa a la tabla audit.PkgExecution', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'PkgExecKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave externa a la tabla audit.TableProcessing', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'TableProcessKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave externa a la tabla audit.AuditDimension', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'AuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del procedimiento donde ocurrió el error', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorProcedure';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Texto descriptivo del error', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorMessage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número del error', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Severidad del error', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorSeverity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de estado del error', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de linea en que ocurrió el error', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ErrorLine';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Código devuelto por el paquete o módulo', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'COLUMN', @level2name = N'ReturnCode';

