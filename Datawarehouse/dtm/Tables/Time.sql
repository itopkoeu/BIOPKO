CREATE TABLE [dtm].[Time] (
    [TimeKey]              INT           NOT NULL,
    [Time]                 TIME (0)      NULL,
    [Time12]               NVARCHAR (11) NOT NULL,
    [Time24]               NVARCHAR (8)  NOT NULL,
    [HourName]             NVARCHAR (5)  NOT NULL,
    [MinuteName]           NVARCHAR (8)  NOT NULL,
    [Hour12]               SMALLINT      NOT NULL,
    [Hour24]               SMALLINT      NOT NULL,
    [MinuteNumber]         SMALLINT      NOT NULL,
    [SecondNumber]         SMALLINT      NOT NULL,
    [HalfHourNumber]       SMALLINT      NOT NULL,
    [QuarterNumber]        SMALLINT      NOT NULL,
    [HalfHour]             NVARCHAR (4)  NOT NULL,
    [Quarter]              NVARCHAR (4)  NOT NULL,
    [HalfHour_Description] NVARCHAR (20) NOT NULL,
    [Quarter_Description]  NVARCHAR (20) NOT NULL,
    [AMPM]                 NVARCHAR (2)  NOT NULL,
    CONSTRAINT [PK_dTime_TimeKey] PRIMARY KEY CLUSTERED ([TimeKey] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave única', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Time', @level2type = N'COLUMN', @level2name = N'TimeKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Hora en formato hh:mm:ss AM/PM', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Time', @level2type = N'COLUMN', @level2name = N'Time12';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Hora en formato HH:mm:ss', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Time', @level2type = N'COLUMN', @level2name = N'Time24';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Hora en formato hh AM/PM', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Time', @level2type = N'COLUMN', @level2name = N'HourName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Hora en formato hh:mm AM/PM', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Time', @level2type = N'COLUMN', @level2name = N'MinuteName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de la hora de 0 a 11', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Time', @level2type = N'COLUMN', @level2name = N'Hour12';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de la hora de 0 a 23', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Time', @level2type = N'COLUMN', @level2name = N'Hour24';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número del minuto de 0 a 59', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Time', @level2type = N'COLUMN', @level2name = N'MinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número del segundo de 0 a 59', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Time', @level2type = N'COLUMN', @level2name = N'SecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de la media hora de 1 a 2', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Time', @level2type = N'COLUMN', @level2name = N'HalfHour_Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número del cuarto de hora de 1 a 4', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Time', @level2type = N'COLUMN', @level2name = N'Quarter_Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indicador de antes o depués del mediodía AM o PM', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Time', @level2type = N'COLUMN', @level2name = N'AMPM';

