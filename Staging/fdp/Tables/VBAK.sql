﻿CREATE TABLE [fdp].[VBAK] (
    [MANDT]          NVARCHAR (3)    NOT NULL,
    [VBELN]          NVARCHAR (10)   NOT NULL,
    [ERDAT]          NVARCHAR (8)    NOT NULL,
    [ERZET]          NVARCHAR (6)    NOT NULL,
    [ERNAM]          NVARCHAR (12)   NOT NULL,
    [ANGDT]          NVARCHAR (8)    NOT NULL,
    [BNDDT]          NVARCHAR (8)    NOT NULL,
    [AUDAT]          NVARCHAR (8)    NOT NULL,
    [VBTYP]          NVARCHAR (1)    NOT NULL,
    [TRVOG]          NVARCHAR (1)    NOT NULL,
    [AUART]          NVARCHAR (4)    NOT NULL,
    [AUGRU]          NVARCHAR (3)    NOT NULL,
    [GWLDT]          NVARCHAR (8)    NOT NULL,
    [SUBMI]          NVARCHAR (10)   NOT NULL,
    [LIFSK]          NVARCHAR (2)    NOT NULL,
    [FAKSK]          NVARCHAR (2)    NOT NULL,
    [NETWR]          NUMERIC (15, 2) NOT NULL,
    [WAERK]          NVARCHAR (5)    NOT NULL,
    [VKORG]          NVARCHAR (4)    NOT NULL,
    [VTWEG]          NVARCHAR (2)    NOT NULL,
    [SPART]          NVARCHAR (2)    NOT NULL,
    [VKGRP]          NVARCHAR (3)    NOT NULL,
    [VKBUR]          NVARCHAR (4)    NOT NULL,
    [GSBER]          NVARCHAR (4)    NOT NULL,
    [GSKST]          NVARCHAR (4)    NOT NULL,
    [GUEBG]          NVARCHAR (8)    NOT NULL,
    [GUEEN]          NVARCHAR (8)    NOT NULL,
    [KNUMV]          NVARCHAR (10)   NOT NULL,
    [VDATU]          NVARCHAR (8)    NOT NULL,
    [VPRGR]          NVARCHAR (1)    NOT NULL,
    [AUTLF]          NVARCHAR (1)    NOT NULL,
    [VBKLA]          NVARCHAR (9)    NOT NULL,
    [VBKLT]          NVARCHAR (1)    NOT NULL,
    [KALSM]          NVARCHAR (6)    NOT NULL,
    [VSBED]          NVARCHAR (2)    NOT NULL,
    [FKARA]          NVARCHAR (4)    NOT NULL,
    [AWAHR]          NVARCHAR (3)    NOT NULL,
    [KTEXT]          NVARCHAR (40)   NOT NULL,
    [BSTNK]          NVARCHAR (20)   NOT NULL,
    [BSARK]          NVARCHAR (4)    NOT NULL,
    [BSTDK]          NVARCHAR (8)    NOT NULL,
    [BSTZD]          NVARCHAR (4)    NOT NULL,
    [IHREZ]          NVARCHAR (12)   NOT NULL,
    [BNAME]          NVARCHAR (35)   NOT NULL,
    [TELF1]          NVARCHAR (16)   NOT NULL,
    [MAHZA]          NUMERIC (3)     NOT NULL,
    [MAHDT]          NVARCHAR (8)    NOT NULL,
    [KUNNR]          NVARCHAR (10)   NOT NULL,
    [KOSTL]          NVARCHAR (10)   NOT NULL,
    [STAFO]          NVARCHAR (6)    NOT NULL,
    [STWAE]          NVARCHAR (5)    NOT NULL,
    [AEDAT]          NVARCHAR (8)    NOT NULL,
    [KVGR1]          NVARCHAR (3)    NOT NULL,
    [KVGR2]          NVARCHAR (3)    NOT NULL,
    [KVGR3]          NVARCHAR (3)    NOT NULL,
    [KVGR4]          NVARCHAR (3)    NOT NULL,
    [KVGR5]          NVARCHAR (3)    NOT NULL,
    [KNUMA]          NVARCHAR (10)   NOT NULL,
    [KOKRS]          NVARCHAR (4)    NOT NULL,
    [PS_PSP_PNR]     NVARCHAR (8)    NOT NULL,
    [KURST]          NVARCHAR (4)    NOT NULL,
    [KKBER]          NVARCHAR (4)    NOT NULL,
    [KNKLI]          NVARCHAR (10)   NOT NULL,
    [GRUPP]          NVARCHAR (4)    NOT NULL,
    [SBGRP]          NVARCHAR (3)    NOT NULL,
    [CTLPC]          NVARCHAR (3)    NOT NULL,
    [CMWAE]          NVARCHAR (5)    NOT NULL,
    [CMFRE]          NVARCHAR (8)    NOT NULL,
    [CMNUP]          NVARCHAR (8)    NOT NULL,
    [CMNGV]          NVARCHAR (8)    NOT NULL,
    [AMTBL]          NUMERIC (15, 2) NOT NULL,
    [HITYP_PR]       NVARCHAR (1)    NOT NULL,
    [ABRVW]          NVARCHAR (3)    NOT NULL,
    [ABDIS]          NVARCHAR (1)    NOT NULL,
    [VGBEL]          NVARCHAR (10)   NOT NULL,
    [OBJNR]          NVARCHAR (22)   NOT NULL,
    [BUKRS_VF]       NVARCHAR (4)    NOT NULL,
    [TAXK1]          NVARCHAR (1)    NOT NULL,
    [TAXK2]          NVARCHAR (1)    NOT NULL,
    [TAXK3]          NVARCHAR (1)    NOT NULL,
    [TAXK4]          NVARCHAR (1)    NOT NULL,
    [TAXK5]          NVARCHAR (1)    NOT NULL,
    [TAXK6]          NVARCHAR (1)    NOT NULL,
    [TAXK7]          NVARCHAR (1)    NOT NULL,
    [TAXK8]          NVARCHAR (1)    NOT NULL,
    [TAXK9]          NVARCHAR (1)    NOT NULL,
    [XBLNR]          NVARCHAR (16)   NOT NULL,
    [ZUONR]          NVARCHAR (18)   NOT NULL,
    [VGTYP]          NVARCHAR (1)    NOT NULL,
    [KALSM_CH]       NVARCHAR (6)    NOT NULL,
    [AGRZR]          NVARCHAR (2)    NOT NULL,
    [AUFNR]          NVARCHAR (12)   NOT NULL,
    [QMNUM]          NVARCHAR (12)   NOT NULL,
    [VBELN_GRP]      NVARCHAR (10)   NOT NULL,
    [SCHEME_GRP]     NVARCHAR (4)    NOT NULL,
    [ABRUF_PART]     NVARCHAR (1)    NOT NULL,
    [ABHOD]          NVARCHAR (8)    NOT NULL,
    [ABHOV]          NVARCHAR (6)    NOT NULL,
    [ABHOB]          NVARCHAR (6)    NOT NULL,
    [RPLNR]          NVARCHAR (10)   NOT NULL,
    [VZEIT]          NVARCHAR (6)    NOT NULL,
    [STCEG_L]        NVARCHAR (3)    NOT NULL,
    [LANDTX]         NVARCHAR (3)    NOT NULL,
    [XEGDR]          NVARCHAR (1)    NOT NULL,
    [ENQUEUE_GRP]    NVARCHAR (1)    NOT NULL,
    [DAT_FZAU]       NVARCHAR (8)    NOT NULL,
    [FMBDAT]         NVARCHAR (8)    NOT NULL,
    [VSNMR_V]        NVARCHAR (12)   NOT NULL,
    [HANDLE]         NVARCHAR (22)   NOT NULL,
    [PROLI]          NVARCHAR (3)    NOT NULL,
    [CONT_DG]        NVARCHAR (1)    NOT NULL,
    [CRM_GUID]       NVARCHAR (70)   NOT NULL,
    [SWENR]          NVARCHAR (8)    NOT NULL,
    [SMENR]          NVARCHAR (8)    NOT NULL,
    [PHASE]          NVARCHAR (11)   NOT NULL,
    [MTLAUR]         NVARCHAR (1)    NOT NULL,
    [STAGE]          INT             NOT NULL,
    [HB_CONT_REASON] NVARCHAR (2)    NOT NULL,
    [HB_EXPDATE]     NVARCHAR (8)    NOT NULL,
    [HB_RESDATE]     NVARCHAR (8)    NOT NULL,
    [LOGSYSB]        NVARCHAR (10)   NOT NULL,
    [KALCD]          NVARCHAR (6)    NOT NULL,
    [MULTI]          NVARCHAR (1)    NOT NULL,
    [UPD_TMSTMP]     NUMERIC (21, 7) NULL,
    [MSR_ID]         NVARCHAR (10)   NULL,
    [TM_CTRL_KEY]    NVARCHAR (4)    NULL,
    [ZZSTATUS]       NVARCHAR (2)    NULL,
    [ZZTIPO_VIA]     NVARCHAR (2)    NULL,
    [ZZSTREET]       NVARCHAR (60)   NULL,
    [ZZENV_URGENTE]  NVARCHAR (1)    NULL,
    [HANDOVERLOC]    NVARCHAR (10)   NULL,
    [PSM_BUDAT]      NVARCHAR (8)    NULL,
    [SPPAYM]         NVARCHAR (2)    NULL,
    [ZZSOURCE]       NVARCHAR (20)   NULL
);

