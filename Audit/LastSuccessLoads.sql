CREATE TABLE [audit].[LastSuccessLoads]
(
    [SourceName] NVARCHAR(128) NOT NULL DEFAULT N'No informado', 
    [SrcDataBaseName] NVARCHAR(128) NOT NULL DEFAULT N'No informado', 
    [SrcSchemaName] NVARCHAR(128) NOT NULL DEFAULT N'No informado', 
    [SrcTableName] NVARCHAR(128) NOT NULL DEFAULT N'No informado', 
    [SchemaName] NVARCHAR(128) NOT NULL DEFAULT N'No informado', 
    [TableName] NVARCHAR(128) NOT NULL DEFAULT N'No informado', 
    [LastSuccessLoadTime] DATETIME NOT NULL DEFAULT '01-01-1753 00:00:00.000', 
    CONSTRAINT [PK_LastSuccessLoads] PRIMARY KEY ([SchemaName], [TableName])
)

GO

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Instancia, conjunto de archivos, carpeta o BD desde donde se carga la tabla',
    @level0type = N'SCHEMA',
    @level0name = N'audit',
    @level1type = N'TABLE',
    @level1name = N'LastSuccessLoads',
    @level2type = N'COLUMN',
    @level2name = 'SourceName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Base de datos desde donde se carga la tabla',
    @level0type = N'SCHEMA',
    @level0name = N'audit',
    @level1type = N'TABLE',
    @level1name = N'LastSuccessLoads',
    @level2type = N'COLUMN',
    @level2name = 'SrcDataBaseName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Esquema al que pertenece la tabla original',
    @level0type = N'SCHEMA',
    @level0name = N'audit',
    @level1type = N'TABLE',
    @level1name = N'LastSuccessLoads',
    @level2type = N'COLUMN',
    @level2name = 'SrcSchemaName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Nombre de la tabla original',
    @level0type = N'SCHEMA',
    @level0name = N'audit',
    @level1type = N'TABLE',
    @level1name = N'LastSuccessLoads',
    @level2type = N'COLUMN',
    @level2name = 'SrcTableName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Esquema al que pertenece la tabla en Staging',
    @level0type = N'SCHEMA',
    @level0name = N'audit',
    @level1type = N'TABLE',
    @level1name = N'LastSuccessLoads',
    @level2type = N'COLUMN',
    @level2name = N'SchemaName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Nombre de la tabla en Staging',
    @level0type = N'SCHEMA',
    @level0name = N'audit',
    @level1type = N'TABLE',
    @level1name = N'LastSuccessLoads',
    @level2type = N'COLUMN',
    @level2name = N'TableName'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Fecha y hora de la última carga correcta',
    @level0type = N'SCHEMA',
    @level0name = N'audit',
    @level1type = N'TABLE',
    @level1name = N'LastSuccessLoads',
    @level2type = N'COLUMN',
    @level2name = N'LastSuccessLoadTime'