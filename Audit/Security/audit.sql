CREATE SCHEMA [audit]
    AUTHORIZATION [dbo];


GO
EXECUTE sp_addextendedproperty @name = N'Descripción', @value = N'Objetos con funciones en la auditoría del sistema.', @level0type = N'SCHEMA', @level0name = N'audit';

