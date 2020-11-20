CREATE TABLE [dim].[Solicitante] (
    [SurrogateKey]      INT            IDENTITY (1, 1) NOT NULL,
    [BusinessKey]       NVARCHAR (10)  CONSTRAINT [DF_Soliciante_BusinessKey] DEFAULT (N'??????????') NOT NULL,
    [NombreSolicitante] NVARCHAR (50)  CONSTRAINT [DF_Soliciante_NombreSolicitante] DEFAULT (N'No Informado') NOT NULL,
    [Población]         NVARCHAR (50)  CONSTRAINT [DF_Soliciante_Población] DEFAULT ('No Informada') NOT NULL,
    [CodigoPostal]      NVARCHAR (10)  CONSTRAINT [DF_Soliciante_CodigoPostal] DEFAULT ('???????????') NOT NULL,
    [Provincia]         NVARCHAR (50)  CONSTRAINT [DF_Soliciante_Provincia] DEFAULT ('No Informada') NOT NULL,
    [Direccion]         NVARCHAR (50)  CONSTRAINT [DF_Soliciante_Direccion] DEFAULT (N'No Informada') NOT NULL,
    [Telef1]            NVARCHAR (20)  CONSTRAINT [DF_Soliciante_Telef1] DEFAULT (N'No Informado') NOT NULL,
    [RowStartDate]      DATETIME       CONSTRAINT [DF_Soliciante_RowSartDate] DEFAULT ('9999-12-31') NOT NULL,
    [RowEndDate]        DATETIME       CONSTRAINT [DF_Soliciante_RowEndDate] DEFAULT ('9999-12-31') NOT NULL,
    [RowChangeDate]     DATETIME       CONSTRAINT [DF_Soliciante_RowChangeDate] DEFAULT ('9999-12-31') NOT NULL,
    [RowChangeReason]   NVARCHAR (200) CONSTRAINT [DF_Soliciante_RowChangeReason] DEFAULT ('Sin Cambios') NOT NULL,
    [RowIsCurrent]      NCHAR (1)      CONSTRAINT [DF_Soliciante_RowIsCurrent] DEFAULT ('S') NOT NULL,
    [AuditKey]          INT            CONSTRAINT [DF_Soliciante_AuditKey] DEFAULT ((-1)) NOT NULL,
    CONSTRAINT [PK_Soliciante] PRIMARY KEY CLUSTERED ([SurrogateKey] ASC)
);

