CREATE TABLE [fdp].[VBAP] (
    [MANDT]                 NVARCHAR (3)    NOT NULL,
    [VBELN]                 NVARCHAR (10)   NOT NULL,
    [POSNR]                 NVARCHAR (6)    NOT NULL,
    [MATNR]                 NVARCHAR (18)   NOT NULL,
    [ARKTX]                 NVARCHAR (40)   NOT NULL,
    [PSTYV]                 NVARCHAR (4)    NOT NULL,  
    [ZMENG]                 NUMERIC (13, 3) NOT NULL,  
    [KWMENG]                NUMERIC (15, 3) NOT NULL,
    [KLMENG]                NUMERIC (15, 3) NOT NULL,    
    [ZIEME]                 NVARCHAR (3)    NOT NULL,
    [PRODH]                 NVARCHAR (18)   NOT NULL,
    [NETWR]                 NUMERIC (15, 2) NOT NULL,
    [WAERK]                 NVARCHAR (5)    NOT NULL,
    [WERKS]                 NVARCHAR (4)    NOT NULL,
    [VSTEL]                 NVARCHAR (4)    NOT NULL,
    [PAOBJNR]               NVARCHAR (10)   NOT NULL,
    [PCTRF]                 NVARCHAR (10)   NOT NULL,
    [AEDAT]                 NVARCHAR (8)    NOT NULL,
    [InsertAuditKey] INTEGER NOT NULL,
    [UpdateAuditKey] INTEGER NOT NULL,
    [DataqualityFlag] NCHAR(1) NOT NULL, 
    CONSTRAINT [PK_VBAP] PRIMARY KEY ([MANDT], [VBELN], [POSNR]), 
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Mandante. PK 0',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'MANDT'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Documento de venta. PK 1',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'VBELN'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Posición. PK 2',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'POSNR'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Material',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'MATNR'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Descripción material pedido de ventas',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'ARKTX'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Tipo de posición',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'PSTYV'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Cantidad prevista',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'ZMENG'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Cantidad pedido acumulada',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'KWMENG'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Cantidad pedido acumulada confirmada',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'KLMENG'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Unidad de medida cantidad prevista',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'ZIEME'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Jerarquía de producto',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'PRODH'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Valor neto posición',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'NETWR'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Moneda',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'WAERK'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Centro',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'WERKS'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Puesto expedición',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'VSTEL'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Objeto Pa',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'PAOBJNR'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'CeBe',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'PCTRF'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fecha de modificación  del registro',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'AEDAT'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Metadatos de inserción',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'InsertAuditKey'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Metadatos de modificación',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'UpdateAuditKey'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Indicador de calidad',
    @level0type = N'SCHEMA',
    @level0name = N'fdp',
    @level1type = N'TABLE',
    @level1name = N'VBAP',
    @level2type = N'COLUMN',
    @level2name = N'DataqualityFlag'