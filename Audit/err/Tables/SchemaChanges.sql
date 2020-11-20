CREATE TABLE [err].[SchemaChanges] (
    [ChangeKey]                INT             IDENTITY (1, 1) NOT NULL,
    [Fecha]                    DATETIME        CONSTRAINT [DF_SchemaChanges_Fecha] DEFAULT (getdate()) NOT NULL,
    [TABLE_SCHEMA]             NVARCHAR (128)  NOT NULL,
    [TABLE_NAME]               NVARCHAR (128)  NOT NULL,
    [COLUMN_NAME]              NVARCHAR (128)  NOT NULL,
    [COLUMN_DEFAULT]           NVARCHAR (4000) NOT NULL,
    [IS_NULLABLE]              VARCHAR (3)     NOT NULL,
    [DATA_TYPE]                NVARCHAR (128)  NOT NULL,
    [CHARACTER_MAXIMUM_LENGTH] INT             NOT NULL,
    [NUMERIC_PRECISION]        TINYINT         NOT NULL,
    [NUMERIC_SCALE]            INT             NOT NULL,
    [DATETIME_PRECISION]       SMALLINT        NOT NULL,
    [CHARACTER_SET_NAME]       NVARCHAR (128)  NOT NULL,
    [COLLATION_NAME]           NVARCHAR (128)  NOT NULL,
    CONSTRAINT [PK_SchemaChanges] PRIMARY KEY CLUSTERED ([ChangeKey] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave única', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'ChangeKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Fecha en que se detectó el cambio', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'Fecha';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre del esquema que contien la tabla', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'TABLE_SCHEMA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre de la tabla', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'TABLE_NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre de la columna', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'COLUMN_NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Valor por defecto de la columna', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'COLUMN_DEFAULT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nulabilidad de la columna (YES si admite nulos, NO si no los admite)', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'IS_NULLABLE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tipo de datos ', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'DATA_TYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Longitud máxima en caracteres', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'CHARACTER_MAXIMUM_LENGTH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Precisión de los datos numéricos', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'NUMERIC_PRECISION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Escala de los datos numéricos', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'NUMERIC_SCALE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Código del subtipo de los datos de fecha y hora e ISO', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'DATETIME_PRECISION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre único del conjunto de caracteres para los datos de tipo caracter', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'CHARACTER_SET_NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre único de la intercalación para los datos de tipo carácter', @level0type = N'SCHEMA', @level0name = N'err', @level1type = N'TABLE', @level1name = N'SchemaChanges', @level2type = N'COLUMN', @level2name = N'COLLATION_NAME';

