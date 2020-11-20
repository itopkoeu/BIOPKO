CREATE PROCEDURE [etl].[spFillDate]
    @StartingDate date = '19000101' -- Fecha mínima de SQL Server
   ,@YearsToAdd tinyint = 25
   ,@Verbose bit = 0 -- Indica si se muestran mensajes
   ,@FirstDayOfWeek tinyint = 1 -- 1= Lunes, 7=Domingo
   ,@Language nvarchar(20) = 'us_english'
   ,@UserLanguage nvarchar(20) = 'es-es'
   ,@WeekPrefix nvarchar(20) = 'Setmana'
   ,@QuarterPrefix nvarchar(2) = 'T'
   ,@SemesterPrefix nvarchar(2) = 'S'
   ,@CalendarYearPrefix nvarchar(3) = 'ANY' 
AS
BEGIN

BEGIN TRY
SET NOCOUNT ON

DECLARE @ReturnCode int = 0

-- Guardamos los días de inicio de semana y el lenguaje anteriores
DECLARE @PrevDateFirst int = @@DATEFIRST
DECLARE @PrevLanguage nvarchar(50) = @@LANGUAGE

-- Declaración e inicialización de las variables de trabajo
-- .. Fecha actual en proceso
  DECLARE @CurrentDate date
  DECLARE @EndingYear int
  DECLARE @EndingDate date
  DECLARE @FirstISOWeekYear smallint

-- Fijamos la fecha de finalización en el último día del nº año pr delante del actual
SET @EndingYear = DATEPART(year, GETDATE()) + @YearsToAdd
SET @EndingDate = CONVERT(date, CAST(@EndingYear AS nvarchar(4)) + '1231') -- Último día del nº año por delante de la fecha de creación
SET @CurrentDate = @StartingDate

-- Fijamos el día de inicio de semana y el lenguaje que necesitamos
SET DATEFIRST @FirstDayOfWeek
  
                -- Mostramos los parámetros si se nos solicita
                IF @Verbose = 1
                               BEGIN
                                               PRINT 'Generando el contenido de dimDate.'
                                               PRINT 'Fecha de inicio: ' + CAST(@StartingDate AS nchar(19));
                                               PRINT 'Años de anticipo :' + CAST(@YearsToAdd AS nvarchar(3))
                                               PRINT 'Fecha final: ' +  CAST(@EndingDate AS nchar(19));
                                               PRINT 'Primer día de la semana por defecto: ' + CASE WHEN @FirstDayOfWeek = 1 THEN 'Lunes' WHEN @FirstDayOfWeek = 2 THEN 'Martes' WHEN @FirstDayOfWeek = 3 THEN 'Miércoles' WHEN @FirstDayOfWeek = 4 THEN 'Jueves' WHEN @FirstDayOfWeek = 5 THEN 'Viernes' WHEN @FirstDayOfWeek = 6 THEN 'Sábado' WHEN @FirstDayOfWeek = 7 THEN 'Domingo' END;
                                               PRINT 'Nuevo primer día de la semana: ' + CASE WHEN @FirstDayOfWeek = 1 THEN 'Lunes' WHEN @FirstDayOfWeek = 2 THEN 'Martes' WHEN @FirstDayOfWeek = 3 THEN 'Miércoles' WHEN @FirstDayOfWeek = 4 THEN 'Jueves' WHEN @FirstDayOfWeek = 5 THEN 'Viernes' WHEN @FirstDayOfWeek = 6 THEN 'Sábado' WHEN @FirstDayOfWeek = 7 THEN 'Domingo' END;
                                               PRINT 'Idioma por defecto: ' + @PrevLanguage
                                               PRINT 'Nuevo idioma por defecto: ' + @Language
                               END -- Mostramos los parámetros

                -- Comprobar que los valores de los parámetros son correctos
                -- .. EndingDate > StartingDate
                IF (@EndingDate <= @StartingDate)
                                               RAISERROR ('ERROR: La fecha final debe de ser mayor que la fecha inicial', 9, 1)
                IF @StartingDate < '17530101' RAISERROR ('ERROR: La fecha inicial no puede ser menor que 01-01-1753', 9, 1)
                IF @FirstDayOfWeek NOT BETWEEN 1 AND 7 RAISERROR ('ERROR: El día inicial de la semana debe estar comprendido entre 1 y 7', 9, 1)

                -- Bucle de creación de contenido
                WHILE @CurrentDate <= @EndingDate
                BEGIN

                               SET LANGUAGE English
                               INSERT INTO [dtm].[Date]
                                                                  (
                                                                   [DateKey]
                                                                  ,[Date]
                                                                  ,[DayNumberOfWeek]
                                                                  ,[EnglishDayNameOfWeek]
                                                                  ,[DayNumberOfMonth]
                                                                  ,[DayNumberOfYear]
                                                                  ,[WeekNumberOfYear]
                                                                  ,[ISOWeekNumberOfYear]
                                                                  ,[EnglishMonthName]
                                                                  ,[MonthNumberOfYear]
                                                                  ,[CalendarQuarterOfYear]
                                                                  ,[CalendarYear]
                                                                  ,[CalendarSemesterOfYear]
                                                                  ,[CalendarYearWeek]
                                                                  ,[CalendarYearISOWeek]
                                                                  ,[CalendarYearMonth]
                                                                  ,[CalendarYearQuarter]
                                                                  ,[CalendarYearSemester]
                                                                               )
                                               VALUES
                                                                  (
                                                                               (DATEPART(year , @CurrentDate) * 10000) + (DATEPART(month , @CurrentDate)*100) + DATEPART(day , @CurrentDate)
                                                                               , @CurrentDate
                                                                               , DATEPART(dw , @CurrentDate)
                                                                               , DATENAME(dw, @CurrentDate)
                                                                               , DATEPART(day , @CurrentDate)
                                                                               , DATEPART(dayofyear , @CurrentDate)
                                                                               , DATEPART(wk , @CurrentDate)
                                                                               , DATEPART(isowk, @CurrentDate)
                                                                               , DATENAME(month, @CurrentDate)
                                                                               , DATEPART(month , @CurrentDate)
                                                                               , DATEPART(quarter , @CurrentDate)
                                                                               , DATEPART(year , @CurrentDate)
                                                                               , CASE WHEN DATEPART(quarter , @CurrentDate) < 3 THEN 1 ELSE 2 END
                                                                               ,CAST(DATEPART(year , @CurrentDate) as char(4))+'-'+ RIGHT('0'+CAST(DATEPART(wk , @CurrentDate) AS varchar(2)),2)
                                                                               ,CAST(DATEPART(year , @CurrentDate) as char(4))+'-'+ RIGHT('0'+CAST(DATEPART(isowk , @CurrentDate) AS varchar(2)),2)
                                                                               ,CAST(DATEPART(year , @CurrentDate) as char(4))+'-'+ RIGHT('0'+CAST(DATEPART(month , @CurrentDate) AS varchar(2)),2)
                                                                               ,CAST(DATEPART(year , @CurrentDate) as char(4))+'-'+ CAST(DATEPART(quarter , @CurrentDate) AS varchar(1))
                                                                               ,CAST(DATEPART(year , @CurrentDate) as char(4))+'-'+ CAST(CASE WHEN DATEPART(quarter , @CurrentDate) < 3 THEN 1 ELSE 2 END AS char(2))
                                                                               )              
                                               ; 
                                               -- Incremento del contador
                                               SELECT @CurrentDate = DATEADD(day,1,@CurrentDate)

                END -- Bucle WHILE
                

                -- Update de los nombre no ingleses
                -- .. SPANISH / Spain / es-ES
                               SET LANGUAGE Spanish

                               UPDATE dtm.Date
                               SET SpanishDayNameOfWeek = DATENAME(dw, [Date])
                                 , SpanishMonthName = DATENAME(month, [Date])

                               -- .. CATALAN

                               UPDATE dtm.Date
                               SET CatalanDayNameOfWeek = 
                                               CASE DayNumberOfWeek
                                                               WHEN 1 THEN 'Dilluns'
                                                               WHEN 2 THEN 'Dimarts'
                                                               WHEN 3 THEN 'Dimecres'
                                                               WHEN 4 THEN 'Dijous'
                                                               WHEN 5 THEN 'Divendres'
                                                               WHEN 6 THEN 'Dissabte'
                                                               WHEN 7 THEN 'Diumenge'
                                               END,
                                   CatalanMonthName = 
                                               CASE MonthNumberOfYear
                                                               WHEN 1 THEN 'Gener'
                                                               WHEN 2 THEN 'Febrer'
                                                               WHEN 3 THEN 'Març'
                                                               WHEN 4 THEN 'Abril'
                                                               WHEN 5 THEN 'Maig'
                                                               WHEN 6 THEN 'Juny'
                                                               WHEN 7 THEN 'Juliol'
                                                               WHEN 8 THEN 'Agost'
                                                               WHEN 9 THEN 'Setembre'
                                                               WHEN 10 THEN 'Octubre'
                                                               WHEN 11 THEN 'Novembre'
                                                               WHEN 12 THEN 'Desembre'
                                               END

                               -- Insertar descripciones
                ---- FullDate: 'January 1st, 2000'
                ---- CalendarYearWeek_Description: 'week 52-2000'
                ---- CalendarYearMonth_Description: 'week January 2000'
                ---- CalendarYearQuarter_Description: 'week Q3/2000'
                ---- CalendarYearSemester_Description: 'week H1-2000'
                ---- CalendarYear_Description: 'CY01'
                               UPDATE dtm.Date
                               SET [FullDate_Description] = FORMAT([Date], 'D', 'es-es')
                                 , [CalendarYearWeek_Description] = @WeekPrefix + ' ' + RIGHT('0'+DATENAME(ww , [Date]),2)+'-'+DATENAME(year , [Date])
                                 , [CalendarYearISOWeek_Description] = @WeekPrefix + ' ' + RIGHT('0'+DATENAME(isowk , [Date]),2)+'-'+DATENAME(year , [Date])
                                 , [CalendarYearMonth_Description] = DATENAME(month, [Date]) +' '+DATENAME(year , [Date])
                                 , [CalendarYearQuarter_Description] = DATENAME(quarter , [Date])+ @QuarterPrefix + '-' + DATENAME(yy , [Date])
                                 , [CalendarYearSemester_Description] = CAST([CalendarSemesterOfYear] as nchar(1))+ @SemesterPrefix + '-'+DATENAME(yy , [Date])
                                  , [CalendarYear_Description] = @CalendarYearPrefix + ' ' + CAST([CalendarYear] as nchar(4))
                               
                               IF @UserLanguage = 'ca-es'
                               BEGIN
                                               UPDATE dtm.Date
                                               SET [FullDate_Description] = FORMAT([Date], 'D', 'ca-es')
                                               ,[CalendarYearMonth_Description] = CatalanMonthName + ' '+DATENAME(year , [Date])

                                               INSERT INTO dtm.Date
                                                               (DateKey
                                                               ,Date
                                                               ,FullDate_Description
                                                               ,DayNumberOfWeek
                                                               ,DayNumberOfMonth
                                                               ,DayNumberOfYear
                                                               ,WeekNumberOfYear
                                                               ,ISOWeekNumberOfYear
                                                               ,MonthNumberOfYear
                                                               ,CalendarQuarterOfYear
                                                               ,CalendarSemesterOfYear
                                                               ,CalendarYear
                                                               ,CalendarYearWeek
                                                               ,CalendarYearISOWeek
                                                               ,CalendarYearMonth
                                                               ,CalendarYearQuarter
                                                               ,CalendarYearSemester
                                                               ,CalendarYearWeek_Description
                                                               ,CalendarYearISOWeek_Description
                                                               ,CalendarYearMonth_Description
                                                               ,CalendarYearQuarter_Description
                                                               ,CalendarYearSemester_Description
                                                               ,CalendarYear_Description
                                                               ,EnglishDayNameOfWeek
                                                               ,SpanishDayNameOfWeek
                                                               ,CatalanDayNameOfWeek
                                                               ,EnglishMonthName
                                                               ,SpanishMonthName
                                                               ,CatalanMonthName)  
                                               VALUES(-1 -- DateKey
                                                     ,'99991231' -- Date
                                                                 ,'Desconeguda' -- FullDate_Description
                                                                 ,-1 -- DayNumberOfWeek
                                                                 ,-1 -- DayNumberOfMonth
                                                                 ,-1 -- DayNumberOfYear
                                                                 ,-1 -- WeekNumberOfYear
                                                                 ,-1 -- ISOWeekNumberOfYear
                                                                 ,-1 -- MonthNumberOfYear
                                                                 ,-1 -- CalendarQuarterOfYear
                                                                 ,-1 -- CalendarSemesterOfYear
                                                                 ,-1 -- CalendarYear
                                                                 ,'Desconeguda' -- CalendarYearWeek
                                                                 ,'Desconeguda' -- CalendarYearISOWeek
                                                                 ,'Desconegut' -- CalendarYearMonth
                                                                 ,'Desconegut' -- CalendarYearQuarter
                                                                 ,'Desconegut' -- CalendarYearSemester
                                                                 ,'Desconeguda' -- CalendarYearWeek_Description
                                                                 ,'Desconeguda' -- CalendarYearISOWeek_Description
                                                                 ,'Desconegut' -- CalendarYearMonth_Description
                                                                 ,'Desconegut' -- CalendarYearQuarter_Description
                                                                 ,'Desconegut' -- CalendarYearSemester_Description
                                                                 ,'Desconegut' -- CalendarYear_Description
                                                                 ,'Unknown' -- EnglishDayNameOfWeek
                                                                 ,'Desconocido' -- SpanishDayNameOfWeek
                                                                 ,'Desconegut' -- CatalanDayNameOfWeek
                                                                 ,'Unknown' -- EnglishMonthName
                                                                 ,'Desconocido' -- SpanishMonthName
                                                                 ,'Desconegut') -- CatalanMonthName
                               END
                               ELSE
                               BEGIN
                                               -- Insertar el registro neutro
                                               INSERT INTO dtm.Date
                                                               (DateKey
                                                               ,Date
                                                               ,FullDate_Description
                                                               ,DayNumberOfWeek
                                                               ,DayNumberOfMonth
                                                               ,DayNumberOfYear
                                                               ,WeekNumberOfYear
                                                               ,ISOWeekNumberOfYear
                                                               ,MonthNumberOfYear
                                                               ,CalendarQuarterOfYear
                                                               ,CalendarSemesterOfYear
                                                               ,CalendarYear
                                                               ,CalendarYearWeek
                                                               ,CalendarYearISOWeek
                                                               ,CalendarYearMonth
                                                               ,CalendarYearQuarter
                                                               ,CalendarYearSemester
                                                               ,CalendarYearWeek_Description
                                                               ,CalendarYearISOWeek_Description
                                                               ,CalendarYearMonth_Description
                                                               ,CalendarYearQuarter_Description
                                                               ,CalendarYearSemester_Description
                                                               ,CalendarYear_Description
                                                               ,EnglishDayNameOfWeek
                                                               ,SpanishDayNameOfWeek
                                                               ,CatalanDayNameOfWeek
                                                               ,EnglishMonthName
                                                               ,SpanishMonthName
                                                               ,CatalanMonthName)  
                                               VALUES(-1 -- DateKey
                                                     ,'99991231' -- Date
                                                                 ,'Desconocida' -- FullDate_Description
                                                                 ,-1 -- DayNumberOfWeek
                                                                 ,-1 -- DayNumberOfMonth
                                                                 ,-1 -- DayNumberOfYear
                                                                 ,-1 -- WeekNumberOfYear
                                                                 ,-1 -- ISOWeekNumberOfYear
                                                                 ,-1 -- MonthNumberOfYear
                                                                 ,-1 -- CalendarQuarterOfYear
                                                                 ,-1 -- CalendarSemesterOfYear
                                                                 ,-1 -- CalendarYear
                                                                 ,'Desconocida' -- CalendarYearWeek
                                                                 ,'Desconocida' -- CalendarYearISOWeek
                                                                 ,'Desconocido' -- CalendarYearMonth
                                                                 ,'Desconocido' -- CalendarYearQuarter
                                                                 ,'Desconocido' -- CalendarYearSemester
                                                                 ,'Desconocida' -- CalendarYearWeek_Description
                                                                 ,'Desconocida' -- CalendarYearISOWeek_Description
                                                                 ,'Desconocido' -- CalendarYearMonth_Description
                                                                 ,'Desconocido' -- CalendarYearQuarter_Description
                                                                 ,'Desconocido' -- CalendarYearSemester_Description
                                                                 ,'Desconocido' -- CalendarYear_Description
                                                                 ,'Unknown' -- EnglishDayNameOfWeek
                                                                 ,'Desconocido' -- SpanishDayNameOfWeek
                                                                 ,'Desconegut' -- CatalanDayNameOfWeek
                                                                 ,'Unknown' -- EnglishMonthName
                                                                 ,'Desconocido' -- SpanishMonthName
                                                                 ,'Desconegut') -- CatalanMonthName                 
                                                                 END

-- Ajustar las primeras semanas del año según la semana ISO
                               UPDATE dtm.Date
                               SET CalendarYearISOWeek = CAST(CalendarYear - 1 as char(4))+'-'+ CAST(ISOWeekNumberOfYear AS varchar(2))
                                  ,CalendarYearISOWeek_Description = 'Setmana' + ' ' + CAST(ISOWeekNumberOfYear AS varchar(2)) + '-'+ CAST(CalendarYear - 1 as char(4))
                               WHERE WeekNumberOfYear < ISOWeekNumberOfYear

                -- Restaurar configuraciones
                SET LANGUAGE @PrevLanguage;
                SET DATEFIRST @PrevDateFirst;
END TRY
BEGIN CATCH
SET @ReturnCode = 1

RETURN @ReturnCode
END CATCH

RETURN @ReturnCode

END
