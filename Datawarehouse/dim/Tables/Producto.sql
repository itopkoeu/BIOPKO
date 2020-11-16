CREATE TABLE [dim].[Producto] (
    [SurrogateKey]        INT            NOT NULL,
    [BusinessKey]         NVARCHAR (18)  COLLATE Modern_Spanish_CI_AS NOT NULL,
    [NombreProducto]      NVARCHAR (40)  COLLATE Modern_Spanish_CI_AS NOT NULL,
    [CodigoFamilia]       NVARCHAR (5)   COLLATE Modern_Spanish_CI_AS NOT NULL,
    [NombreFamilia]       NVARCHAR (40)  COLLATE Modern_Spanish_CI_AS NOT NULL,
    [CodigoLinea]         NVARCHAR (5)   COLLATE Modern_Spanish_CI_AS NOT NULL,
    [NombreLinea]         NVARCHAR (40)  COLLATE Modern_Spanish_CI_AS NOT NULL,
    [CodigoNacional]      NVARCHAR (48)  COLLATE Modern_Spanish_CI_AS NULL,
    [CodigoClasificacion] NVARCHAR (5)   COLLATE Modern_Spanish_CI_AS NULL,
    [NombreClasificacion] NVARCHAR (100) COLLATE Modern_Spanish_CI_AS NULL,
    [RowStartDate]        DATETIME       NOT NULL,
    [RowEndDate]          DATETIME       NOT NULL,
    [RowChangeDate]       DATETIME       NOT NULL,
    [RowChangeReason]     NVARCHAR (200) COLLATE Modern_Spanish_CI_AS NOT NULL,
    [RowIsCurrent]        NCHAR (1)      COLLATE Modern_Spanish_CI_AS NOT NULL,
    [AuditKey]            INT            NOT NULL,
    CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED ([SurrogateKey] ASC)
);

