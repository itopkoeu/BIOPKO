CREATE TABLE [fdp].[VBAK] (
    [MANDT]          NVARCHAR (3)    NOT NULL,
    [VBELN]          NVARCHAR (10)   NOT NULL,
    [KUNNR]          NVARCHAR (10)   NOT NULL,
    [ERDAT]          NVARCHAR (8)    NOT NULL,
    [ERZET]          NVARCHAR (6)    NOT NULL,
    [AUART]          NVARCHAR (4)    NOT NULL,
    [AUGRU]          NVARCHAR (3)    NOT NULL,
    [NETWR]          NUMERIC (15, 2) NOT NULL,
    [WAERK]          NVARCHAR (5)    NOT NULL,
    [VKORG]          NVARCHAR (4)    NOT NULL,
    [VTWEG]          NVARCHAR (2)    NOT NULL,
    [SPART]          NVARCHAR (2)    NOT NULL,
    [KNUMV]          NVARCHAR (10)   NOT NULL,
    [VDATU]          NVARCHAR (8)    NOT NULL,
    [AEDAT]          NVARCHAR (8)    NOT NULL,
    [KOKRS]          NVARCHAR (4)    NOT NULL,
    [InsertAuditKey] INTEGER NOT NULL,
    [UpdateAuditKey] INTEGER NOT NULL,
    [DataqualityFlag] NCHAR(1) NOT NULL, 
    CONSTRAINT [PK_VBAK] PRIMARY KEY ([MANDT], [VBELN])
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Mandante. PK 0',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'MANDT'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Documento de venta. PK 1',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'VBELN'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Solicitante',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'KUNNR'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fecha de creación del registro',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'ERDAT'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Hora de creación del registro',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'ERZET'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Tipo de documento',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'AUART'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Motivo del pedido',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'AUGRU'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Valor Neto',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'NETWR'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Moneda',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'WAERK'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Organización de ventas',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'VKORG'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Canal',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'VTWEG'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Sector',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'SPART'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Condición documento',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'KNUMV'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fecha preferente de entrega',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'VDATU'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fecha de modificación  del registro',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'AEDAT'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Sociedad CO',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'KOKRS'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Metadatos de inserción',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'InsertAuditKey'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Metadatos de modificación',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'UpdateAuditKey'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Indicador de calidad',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAK',
    @level2type = N'COLUMN',
    @level2name = N'DataqualityFlag'