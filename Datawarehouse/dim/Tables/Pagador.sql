CREATE TABLE [dim].[Pagador] (
    [SurrogateKey]    INT            IDENTITY (1, 1) NOT NULL,
    [BusinessKey]     NVARCHAR (10)  NOT NULL,
    [NombrePagador]   NVARCHAR (50)  NOT NULL,
    [Población]       NVARCHAR (50)  NOT NULL,
    [CodigoPostal]    NVARCHAR (10)  NOT NULL,
    [Provincia]       NVARCHAR (50)  NOT NULL,
    [Direccion]       NVARCHAR (50)  NOT NULL,
    [Telef1]          NVARCHAR (20)  NOT NULL,
    [Telef2]          NVARCHAR (20)  NOT NULL,
    [GrupoCliente]    NVARCHAR (250) NOT NULL,
    [RowStartDate]    DATETIME       NOT NULL,
    [RowEndDate]      DATETIME       NOT NULL,
    [RowChangeDate]   DATETIME       NOT NULL,
    [RowChangeReason] NVARCHAR (200) NOT NULL,
    [RowIsCurrent]    NCHAR (1)      NOT NULL,
    [AuditKey]        INT            NOT NULL
);

