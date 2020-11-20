CREATE TABLE [audit].[TableProcessing] (
    [TableProcessKey]    INT            IDENTITY (1, 1) NOT NULL,
    [PkgExecKey]         INT            NOT NULL,
    [TableName]          NVARCHAR (128) NOT NULL,
    [ExtractRowCnt]      INT            NOT NULL,
    [InsertStdRowCnt]    INT            DEFAULT ((0)) NOT NULL,
    [InsertNonStdRowCnt] INT            DEFAULT ((0)) NOT NULL,
    [UpdateRowCnt]       INT            DEFAULT ((0)) NOT NULL,
    [ErrorRowCnt]        INT            DEFAULT ((0)) NOT NULL,
    [TableInitialRowCnt] INT            NOT NULL,
    [TableFinalRowCnt]   INT            NULL,
    [SuccessFlag]        NCHAR (1)      DEFAULT (N'N') NOT NULL,
    [StartTime]          DATETIME       CONSTRAINT [DF_TableProcessing_StartDT] DEFAULT (getdate()) NOT NULL,
    [StopTime]           DATETIME       NULL,
    [Duration]           AS             (datediff(second,[StartTime],[StopTime])) PERSISTED NOT NULL,
    CONSTRAINT [PK_TableProcessing] PRIMARY KEY CLUSTERED ([TableProcessKey] ASC),
    CONSTRAINT [FK_TableProcessing_PkgExecution] FOREIGN KEY ([PkgExecKey]) REFERENCES [audit].[PkgExecution] ([PkgExecKey])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave única', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'TableProcessKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave externa a la ejecución de paquete que procesó la tabla', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'PkgExecKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre de la tabla', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'TableName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de filas extraídas del origen de datos', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'ExtractRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de filas insertadas por el método normal', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'InsertStdRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de filas insertadas por cualquier método diferente al normal', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'InsertNonStdRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de filas actualizadas', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'UpdateRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de filas que registraron errores', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'ErrorRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de filas existentes en la tabla antes de procesarse', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'TableInitialRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de filas existentes en la tabla después de procesarse', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'TableFinalRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicador de finalización correcta ''Y'' o incorrecta ''N''', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'SuccessFlag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Hora de inicio de la ejecución', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Hora de final de la ejecución', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'StopTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tiempo empleado en segundos', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'TableProcessing', @level2type = N'COLUMN', @level2name = N'Duration';

