/*
=============================================================================================================================================================
	Autor: José Miguel Calzada Lisbona
	Fecha: 30-11-2020
	Descripción: Vista que extrae los registros nuevos o modificados, desde la última carga correcta, de la tabla fdp.VBAK en FDGSAP01
	Historial: 
=============================================================================================================================================================
*/

CREATE VIEW [origen].[vVBAK]
AS
SELECT MANDT -- Mandante. PK 0
      ,VBELN -- Documento de venta. PK 1
	  ,KUNNR --Solicitante
	  ,ERDAT -- Fecha de creación del registro o del documento
	  ,ERZET -- Hora de creación del registro o del documento
	  ,AUART -- Tipo de documento
	  ,AUGRU -- Motivo del pedido
	  ,NETWR -- Valor Neto
	  ,WAERK -- Moneda
	  ,VKORG -- Organización de ventas
	  ,VTWEG -- Canal
	  ,SPART -- Sector
	  ,KNUMV -- Condición documento
	  ,VDATU -- Fecha preferente de entrega
	  ,AEDAT -- Fecha de modificación  del registro o del documento
	  ,KOKRS -- Sociedad CO
FROM FDGSAP01.FDP.fdp.VBAK
