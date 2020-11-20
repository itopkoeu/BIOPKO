CREATE TABLE [audit].[AuditDimension] (
    [AuditKey]               INT           IDENTITY (1, 1) NOT NULL,
    [TableProcessKey]        INT           NOT NULL,
    [BranchName]             NVARCHAR (50) NOT NULL,
    [BranchRowCnt]           INT           DEFAULT ((0)) NOT NULL,
    [ProcessingSummaryGroup] NVARCHAR (15) DEFAULT (N'Standard') NOT NULL,
    CONSTRAINT [PK_AuditDimension] PRIMARY KEY CLUSTERED ([AuditKey] ASC),
    CONSTRAINT [FK_AuditDimension_TableProcessing] FOREIGN KEY ([TableProcessKey]) REFERENCES [audit].[TableProcessing] ([TableProcessKey])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave única', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'AuditDimension', @level2type = N'COLUMN', @level2name = N'AuditKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave externa a la ejecución de tabla', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'AuditDimension', @level2type = N'COLUMN', @level2name = N'TableProcessKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre de la rama de introducción de datos', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'AuditDimension', @level2type = N'COLUMN', @level2name = N'BranchName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de registros afectados por esta rama', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'AuditDimension', @level2type = N'COLUMN', @level2name = N'BranchRowCnt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Grupo a que pertenece la rama "Standard" o "No Standard"', @level0type = N'SCHEMA', @level0name = N'audit', @level1type = N'TABLE', @level1name = N'AuditDimension', @level2type = N'COLUMN', @level2name = N'ProcessingSummaryGroup';

