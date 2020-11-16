CREATE TABLE [dtm].[Date] (
    [DateKey]                              INT            NOT NULL,
    [Date]                                 DATE           NOT NULL,
    [FullDate_Description]                 NVARCHAR (100) NULL,
    [EnglishDate_Description]              AS             ((((CONVERT([nvarchar](2),[DayNumberOfMonth])+N' ')+[EnglishMonthName])+N' ')+CONVERT([nvarchar](4),[CalendarYear])),
    [DayNumberOfWeek]                      SMALLINT       NULL,
    [DayNumberOfMonth]                     SMALLINT       NULL,
    [DayNumberOfYear]                      SMALLINT       NULL,
    [WeekNumberOfYear]                     SMALLINT       NULL,
    [ISOWeekNumberOfYear]                  SMALLINT       NULL,
    [MonthNumberOfYear]                    SMALLINT       NULL,
    [CalendarQuarterOfYear]                SMALLINT       NULL,
    [CalendarSemesterOfYear]               SMALLINT       NULL,
    [CalendarYear]                         SMALLINT       NULL,
    [CalendarYearWeek]                     NVARCHAR (25)  NULL,
    [CalendarYearISOWeek]                  NVARCHAR (25)  NULL,
    [CalendarYearMonth]                    NVARCHAR (25)  NULL,
    [CalendarYearQuarter]                  NVARCHAR (25)  NULL,
    [CalendarYearSemester]                 NVARCHAR (25)  NULL,
    [CalendarYearWeek_Description]         NVARCHAR (25)  NULL,
    [CalendarYearISOWeek_Description]      NVARCHAR (25)  NULL,
    [CalendarYearWeek_FullDescription]     AS             ((((((((((((((N'Semana Nº'+CONVERT([nvarchar],datepart(week,[Date])))+N'  ( del ')+CONVERT([nvarchar],datepart(day,dateadd(day,(-6),[Date]))))+N'/')+CONVERT([nvarchar],datepart(month,dateadd(day,(-6),[Date]))))+N'/')+CONVERT([nvarchar],datepart(year,dateadd(day,(-6),[Date]))))+N' al ')+CONVERT([nvarchar],datepart(day,[Date])))+N'/')+CONVERT([nvarchar],datepart(month,[Date])))+N'/')+CONVERT([nvarchar],datepart(year,[Date])))+N' )'),
    [CalendarYearMonth_Description]        NVARCHAR (25)  NULL,
    [EnglishCalendarYearMonth_Description] AS             (([EnglishMonthName]+N' ')+CONVERT([nvarchar](4),[CalendarYear])),
    [CalendarYearQuarter_Description]      NVARCHAR (25)  NULL,
    [CalendarYearSemester_Description]     NVARCHAR (25)  NULL,
    [CalendarYear_Description]             NVARCHAR (25)  NULL,
    [EnglishDayNameOfWeek]                 NVARCHAR (11)  NULL,
    [SpanishDayNameOfWeek]                 NVARCHAR (11)  NULL,
    [CatalanDayNameOfWeek]                 NVARCHAR (11)  NULL,
    [EnglishMonthName]                     NVARCHAR (11)  NULL,
    [SpanishMonthName]                     NVARCHAR (11)  NULL,
    [CatalanMonthName]                     NVARCHAR (11)  NULL,
    CONSTRAINT [PK_Date_DateKey] PRIMARY KEY CLUSTERED ([DateKey] ASC),
    CONSTRAINT [AK_Date_Date] UNIQUE NONCLUSTERED ([Date] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clave única. /* Formato calculado AAAAMMDD ', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'DateKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Fecha descrita. Clave alternativa', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descripción de la fecha en formato texto*', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'FullDate_Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de día de la semana; 1 a 7 ', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'DayNumberOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de día del mes; 1 a 31', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'DayNumberOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de día del año; 1 a 366', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'DayNumberOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de semana del año; 1 a 53', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'WeekNumberOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de mes del año; 1 a 12', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'MonthNumberOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de trimestre del año; 1 a 4', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CalendarQuarterOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número de semestre del año; 1 a 2', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CalendarSemesterOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Número del año', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CalendarYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador único de la semana: Year - Week', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CalendarYearWeek';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador único del mes: Year - Month', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CalendarYearMonth';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador único del trimestre: Year - Quarter', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CalendarYearQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identificador único del semestre: Year - Semester', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CalendarYearSemester';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descriptor único de la semana: example - ''Semana 52-2016''', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CalendarYearWeek_Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descriptor único del mes: example - ''2007-12''', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CalendarYearMonth_Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descriptor único del trimestre: example - ''Q2/2007''', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CalendarYearQuarter_Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descriptor único del semestre: example - ''H1.07''', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CalendarYearSemester_Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Descriptor único del año natural: example - ''CY 2007''', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CalendarYear_Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre inglés del día de la semana', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'EnglishDayNameOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre castellano del día de la semana', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'SpanishDayNameOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre catalán del día de la semana', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CatalanDayNameOfWeek';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre inglés del mes', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'EnglishMonthName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre castellano del mes ', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'SpanishMonthName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nombre catalán del mes', @level0type = N'SCHEMA', @level0name = N'dtm', @level1type = N'TABLE', @level1name = N'Date', @level2type = N'COLUMN', @level2name = N'CatalanMonthName';

