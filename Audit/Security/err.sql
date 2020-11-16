CREATE SCHEMA [err]
    AUTHORIZATION [dbo];


GO
EXECUTE sp_addextendedproperty @name = N'Descripción', @value = N'Objetos con funciones en el control de errores.', @level0type = N'SCHEMA', @level0name = N'err';

