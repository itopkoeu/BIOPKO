CREATE TABLE [dim].[Producto] (
    [SurrogateKey]        INT            NOT NULL,
    [BusinessKey]         NVARCHAR (18)  NOT NULL,
    [NombreProducto]      NVARCHAR (40)  NOT NULL,
    [CodigoFamilia]       NVARCHAR (5)   NOT NULL,
    [NombreFamilia]       NVARCHAR (40)  NOT NULL,
    [CodigoLinea]         NVARCHAR (5)   NOT NULL,
    [NombreLinea]         NVARCHAR (40)  NOT NULL,
    [CodigoNacional]      NVARCHAR (48)  NULL,
    [CodigoClasificacion] NVARCHAR (5)   NULL,
    [NombreClasificacion] NVARCHAR (100) NULL,
    [RowStartDate]        DATETIME       NOT NULL,
    [RowEndDate]          DATETIME       NOT NULL,
    [RowChangeDate]       DATETIME       NOT NULL,
    [RowChangeReason]     NVARCHAR (200) NOT NULL,
    [RowIsCurrent]        NCHAR (1)      NOT NULL,
    [AuditKey]            INT            NOT NULL,
    CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED ([SurrogateKey] ASC)
);

