CREATE PROCEDURE [etl].[spFillTime]
   @UserLanguage nvarchar(20) = 'es-es'              

AS
BEGIN TRY
                DECLARE @HourCnt tinyint = 0
                DECLARE @MinuteCnt tinyint = 0
                DECLARE @SecondCnt tinyint = 0
                DECLARE @TimeKey int = 1
                DECLARE @Time time(0)
                DECLARE @Time12 nvarchar(11)
                DECLARE @Time24 nvarchar(8)
                DECLARE @HourName nvarchar(5)
                DECLARE @MinuteName nvarchar(8)
                DECLARE @Hour12 smallint
                DECLARE @Hour24 smallint
                DECLARE @MinuteNumber smallint
                DECLARE @SecondNumber smallint
                DECLARE @HalfHourNumber smallint
                DECLARE @QuarterNumber smallint
                DECLARE @HalfHour nvarchar(4)
                DECLARE @Quarter nvarchar(4)
                DECLARE @HalfHour_Description nvarchar(20)
                DECLARE @Quarter_Description nvarchar(20)
                DECLARE @AMPM nvarchar(2)

                DECLARE @HalfSufix nvarchar(20) = ' ª media'
    DECLARE @QuarterSufix nvarchar(20) = ' º cuarto'
                
                DECLARE @ResultCode int = 0

--            Insertamos el registro neutro
                INSERT [dtm].[Time] ([TimeKey], [Time], [Time12], [Time24], [HourName], [MinuteName], [Hour12], [Hour24], [MinuteNumber], [SecondNumber], [HalfHourNumber], [QuarterNumber], [HalfHour], [Quarter], [HalfHour_Description], [Quarter_Description], [AMPM]) 
                VALUES (-1, NULL, N'?', N'?', N'?', N'?', -1, -1, -1, -1, -1, -1, N'?', N'?', N'N/A', N'N/A', N'??')
                
-- Iniciamos el bucle para las 24 horas
WHILE @HourCnt < 24
BEGIN
                SET @Hour24 = @HourCnt 

--            Calculamos el valor de la hora en formato de 12 horas
                IF @HourCnt > 12
                BEGIN
                               SET @Hour12 = @HourCnt - 12
                END
                ELSE
                BEGIN
                               IF @HourCnt = 0 SET @Hour12 = 12 ELSE SET @Hour12 = @HourCnt
                END
                
--            Determinamos el indicador de antes y después del mediodía
                IF @HourCnt > 11
                BEGIN
                               SET @AMPM = 'PM'
                END
                ELSE
                BEGIN
                               SET @AMPM = 'AM'
                END

--  Para cada minuto determinaremos su mediahora y su cuarto de hora
                WHILE @MinuteCnt < 60
                BEGIN
                               SET @MinuteNumber = @MinuteCnt

--      Determinamos La media hora a que pertenece el minuto
                               SET @HalfHourNumber = CASE WHEN @MinuteCnt BETWEEN 0 AND 29 THEN 1 WHEN @MinuteCnt BETWEEN 30 AND 59 THEN 2 END

--      Determinamos el cuarto de hora a que pertenece el minuto                             
                               SET @QuarterNumber = CASE WHEN @MinuteCnt BETWEEN 0 AND 14 THEN 1 WHEN @MinuteCnt BETWEEN 15 AND 29 THEN 2 WHEN @MinuteCnt BETWEEN 30 AND 44 THEN 3 WHEN @MinuteCnt BETWEEN 45 AND 59 THEN 4 END    

                               SET @HalfHour = CAST(@Hour24 AS nchar(2)) + '-' + CAST(@HalfHourNumber AS nchar(1))
                               SET @Quarter = CAST(@Hour24 AS nchar(2)) + '-' + CAST(@QuarterNumber AS nchar(1))

                               IF @UserLanguage = 'ca-es'
                               BEGIN
                                               SET @HalfSufix = ' ª mitja'
                                               SET @QuarterSufix = ' º quart'
                               END

                               SET @HalfHour_Description = CAST(@Hour24 AS nchar(2)) + ' ' + CAST(@HalfHourNumber AS nchar(1)) + @HalfSufix
                               SET @Quarter_Description = CAST(@Hour24 AS nchar(2)) + ' ' + CAST(@QuarterNumber AS nchar(1)) + @QuarterSufix

--      Para cada segundo del minuto montamos los valores  
                               WHILE @SecondCnt < 60
                               BEGIN
                                               SET @SecondNumber = @SecondCnt
                                               SET @Time = TIMEFROMPARTS(@Hour24, @MinuteNumber, @SecondNumber, 0, 0)
                                               SET @Time12 = FORMAT(@Hour12, '00') + ':' + FORMAT(@MinuteNumber, '00') + ':' + FORMAT(@SecondNumber, '00') + ' ' + @AMPM
                                               SET @Time24 = FORMAT(@Hour24, '00') + ':' + FORMAT(@MinuteNumber, '00') + ':' + FORMAT(@SecondNumber, '00')
                                               SET @HourName = FORMAT(@Hour12, '00') + ' ' + @AMPM
                                               SET @MinuteName = FORMAT(@Hour12, '00') + ':' + FORMAT(@MinuteNumber, '00') + ' ' + @AMPM

                                               INSERT [dtm].[Time] ([TimeKey], [Time], [Time12], [Time24], [HourName], [MinuteName], [Hour12], [Hour24], [MinuteNumber], [SecondNumber], [HalfHourNumber], [QuarterNumber], [HalfHour], [Quarter], [HalfHour_Description], [Quarter_Description], [AMPM])
                                               VALUES (@TimeKey, @Time, @Time12, @Time24, @HourName, @MinuteName, @Hour12, @Hour24, @MinuteNumber, @SecondNumber, @HalfHourNumber, @QuarterNumber, @HalfHour, @Quarter, @HalfHour_Description, @Quarter_Description, @AMPM) 

                                               SET @SecondCnt = @SecondCnt + 1
                                               SET @TimeKey = @TimeKey + 1
                               END

                               SET @SecondCnt = 0
                               SET @MinuteCnt = @MinuteCnt + 1 
                END
                SET @MinuteCnt = 0
                SET @HourCnt = @HourCnt + 1
END

END TRY
BEGIN CATCH

                SET @ResultCode = 1
                
                RETURN @ResultCode
END CATCH

RETURN @ResultCode

