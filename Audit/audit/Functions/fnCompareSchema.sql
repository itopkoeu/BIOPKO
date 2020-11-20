CREATE FUNCTION [audit].[fnCompareSchema]
(    @TableSchema nvarchar(128)
                ,@TableName nvarchar(128)
)
RETURNS TABLE

AS
RETURN (
                               -- Production schema
                               SELECT TABLE_SCHEMA 
                                     ,TABLE_NAME
                                                 ,COLUMN_NAME
                                                 ,COLUMN_DEFAULT
                                                 ,IS_NULLABLE
                                                 ,DATA_TYPE
                                                 ,CHARACTER_MAXIMUM_LENGTH
                                                 ,NUMERIC_PRECISION
                                                 ,NUMERIC_SCALE
                                                 ,DATETIME_PRECISION
                                                 ,CHARACTER_SET_NAME
                                                 ,COLLATION_NAME
                               FROM INFORMATION_SCHEMA.COLUMNS -- CAL POSAR EL PREFIX DE PRODUCTIU 
                               WHERE TABLE_SCHEMA = @TableSchema AND TABLE_NAME =  @TableName 

                               EXCEPT

                               -- Staging schema
                               SELECT TABLE_SCHEMA 
                                     ,TABLE_NAME
                                                 ,COLUMN_NAME
                                                 ,COLUMN_DEFAULT
                                                 ,IS_NULLABLE
                                                 ,DATA_TYPE
                                                 ,CHARACTER_MAXIMUM_LENGTH
                                                 ,NUMERIC_PRECISION
                                                 ,NUMERIC_SCALE
                                                 ,DATETIME_PRECISION
                                                 ,CHARACTER_SET_NAME
                                                 ,COLLATION_NAME
                               FROM INFORMATION_SCHEMA.COLUMNS
                               WHERE TABLE_SCHEMA = @TableSchema AND TABLE_NAME =  @TableName
                               AND COLUMN_NAME NOT IN ('AuditKey', 'DQFilterFlag')
                               )
