CREATE TABLE [dim].[Descuentos] (
    [SurrogateKey]              INT          NOT NULL,
    [BusinessKey]               INT          NOT NULL,
    [ClaseCondicion]            NVARCHAR (4) NOT NULL,
    [DescripcionClaseCondicion] NCHAR (20)   NOT NULL,
    [ImporteClaseCondicion]     INT          NOT NULL,
    CONSTRAINT [PK_dimDescuentos] PRIMARY KEY CLUSTERED ([SurrogateKey] ASC)
);

