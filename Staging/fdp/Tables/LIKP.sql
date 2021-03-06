﻿CREATE TABLE [fdp].[LIKP] (
    [MANDT]            NVARCHAR (3)    NOT NULL,
    [VBELN]            NVARCHAR (10)   NOT NULL,
    [ERNAM]            NVARCHAR (12)   NOT NULL,
    [ERZET]            NVARCHAR (6)    NOT NULL,
    [ERDAT]            NVARCHAR (8)    NOT NULL,
    [BZIRK]            NVARCHAR (6)    NOT NULL,
    [VSTEL]            NVARCHAR (4)    NOT NULL,
    [VKORG]            NVARCHAR (4)    NOT NULL,
    [LFART]            NVARCHAR (4)    NOT NULL,
    [AUTLF]            NVARCHAR (1)    NOT NULL,
    [KZAZU]            NVARCHAR (1)    NOT NULL,
    [WADAT]            NVARCHAR (8)    NOT NULL,
    [LDDAT]            NVARCHAR (8)    NOT NULL,
    [TDDAT]            NVARCHAR (8)    NOT NULL,
    [LFDAT]            NVARCHAR (8)    NOT NULL,
    [KODAT]            NVARCHAR (8)    NOT NULL,
    [ABLAD]            NVARCHAR (25)   NOT NULL,
    [INCO1]            NVARCHAR (3)    NOT NULL,
    [INCO2]            NVARCHAR (28)   NOT NULL,
    [EXPKZ]            NVARCHAR (1)    NOT NULL,
    [ROUTE]            NVARCHAR (6)    NOT NULL,
    [FAKSK]            NVARCHAR (2)    NOT NULL,
    [LIFSK]            NVARCHAR (2)    NOT NULL,
    [VBTYP]            NVARCHAR (1)    NOT NULL,
    [KNFAK]            NVARCHAR (2)    NOT NULL,
    [TPQUA]            NVARCHAR (1)    NOT NULL,
    [TPGRP]            NVARCHAR (2)    NOT NULL,
    [LPRIO]            NVARCHAR (2)    NOT NULL,
    [VSBED]            NVARCHAR (2)    NOT NULL,
    [KUNNR]            NVARCHAR (10)   NOT NULL,
    [KUNAG]            NVARCHAR (10)   NOT NULL,
    [KDGRP]            NVARCHAR (2)    NOT NULL,
    [STZKL]            NUMERIC (3, 2)  NOT NULL,
    [STZZU]            NUMERIC (3)     NOT NULL,
    [BTGEW]            NUMERIC (15, 3) NOT NULL,
    [NTGEW]            NUMERIC (15, 3) NOT NULL,
    [GEWEI]            NVARCHAR (3)    NOT NULL,
    [VOLUM]            NUMERIC (15, 3) NOT NULL,
    [VOLEH]            NVARCHAR (3)    NOT NULL,
    [ANZPK]            NVARCHAR (5)    NOT NULL,
    [BEROT]            NVARCHAR (20)   NOT NULL,
    [LFUHR]            NVARCHAR (6)    NOT NULL,
    [GRULG]            NVARCHAR (4)    NOT NULL,
    [LSTEL]            NVARCHAR (2)    NOT NULL,
    [TRAGR]            NVARCHAR (4)    NOT NULL,
    [FKARV]            NVARCHAR (4)    NOT NULL,
    [FKDAT]            NVARCHAR (8)    NOT NULL,
    [PERFK]            NVARCHAR (2)    NOT NULL,
    [ROUTA]            NVARCHAR (6)    NOT NULL,
    [STAFO]            NVARCHAR (6)    NOT NULL,
    [KALSM]            NVARCHAR (6)    NOT NULL,
    [KNUMV]            NVARCHAR (10)   NOT NULL,
    [WAERK]            NVARCHAR (5)    NOT NULL,
    [VKBUR]            NVARCHAR (4)    NOT NULL,
    [VBEAK]            NUMERIC (6, 2)  NOT NULL,
    [ZUKRL]            NVARCHAR (40)   NOT NULL,
    [VERUR]            NVARCHAR (35)   NOT NULL,
    [COMMN]            NVARCHAR (5)    NOT NULL,
    [STWAE]            NVARCHAR (5)    NOT NULL,
    [STCUR]            NUMERIC (9, 5)  NOT NULL,
    [EXNUM]            NVARCHAR (10)   NOT NULL,
    [AENAM]            NVARCHAR (12)   NOT NULL,
    [AEDAT]            NVARCHAR (8)    NOT NULL,
    [LGNUM]            NVARCHAR (3)    NOT NULL,
    [LISPL]            NVARCHAR (1)    NOT NULL,
    [VKOIV]            NVARCHAR (4)    NOT NULL,
    [VTWIV]            NVARCHAR (2)    NOT NULL,
    [SPAIV]            NVARCHAR (2)    NOT NULL,
    [FKAIV]            NVARCHAR (4)    NOT NULL,
    [PIOIV]            NVARCHAR (2)    NOT NULL,
    [FKDIV]            NVARCHAR (8)    NOT NULL,
    [KUNIV]            NVARCHAR (10)   NOT NULL,
    [KKBER]            NVARCHAR (4)    NOT NULL,
    [KNKLI]            NVARCHAR (10)   NOT NULL,
    [GRUPP]            NVARCHAR (4)    NOT NULL,
    [SBGRP]            NVARCHAR (3)    NOT NULL,
    [CTLPC]            NVARCHAR (3)    NOT NULL,
    [CMWAE]            NVARCHAR (5)    NOT NULL,
    [AMTBL]            NUMERIC (15, 2) NOT NULL,
    [BOLNR]            NVARCHAR (35)   NOT NULL,
    [LIFNR]            NVARCHAR (10)   NOT NULL,
    [TRATY]            NVARCHAR (4)    NOT NULL,
    [TRAID]            NVARCHAR (20)   NOT NULL,
    [CMFRE]            NVARCHAR (8)    NOT NULL,
    [CMNGV]            NVARCHAR (8)    NOT NULL,
    [XABLN]            NVARCHAR (10)   NOT NULL,
    [BLDAT]            NVARCHAR (8)    NOT NULL,
    [WADAT_IST]        NVARCHAR (8)    NOT NULL,
    [TRSPG]            NVARCHAR (2)    NOT NULL,
    [TPSID]            NVARCHAR (5)    NOT NULL,
    [LIFEX]            NVARCHAR (35)   NOT NULL,
    [TERNR]            NVARCHAR (12)   NOT NULL,
    [KALSM_CH]         NVARCHAR (6)    NOT NULL,
    [KLIEF]            NVARCHAR (1)    NOT NULL,
    [KALSP]            NVARCHAR (6)    NOT NULL,
    [KNUMP]            NVARCHAR (10)   NOT NULL,
    [NETWR]            NUMERIC (15, 2) NOT NULL,
    [AULWE]            NVARCHAR (10)   NOT NULL,
    [WERKS]            NVARCHAR (4)    NOT NULL,
    [LCNUM]            NVARCHAR (10)   NOT NULL,
    [ABSSC]            NVARCHAR (6)    NOT NULL,
    [KOUHR]            NVARCHAR (6)    NOT NULL,
    [TDUHR]            NVARCHAR (6)    NOT NULL,
    [LDUHR]            NVARCHAR (6)    NOT NULL,
    [WAUHR]            NVARCHAR (6)    NOT NULL,
    [LGTOR]            NVARCHAR (3)    NOT NULL,
    [LGBZO]            NVARCHAR (10)   NOT NULL,
    [AKWAE]            NVARCHAR (5)    NOT NULL,
    [AKKUR]            NUMERIC (9, 5)  NOT NULL,
    [AKPRZ]            NUMERIC (5, 2)  NOT NULL,
    [PROLI]            NVARCHAR (3)    NOT NULL,
    [XBLNR]            NVARCHAR (25)   NOT NULL,
    [HANDLE]           NVARCHAR (22)   NOT NULL,
    [TSEGFL]           NVARCHAR (1)    NOT NULL,
    [TSEGTP]           NVARCHAR (10)   NOT NULL,
    [TZONIS]           NVARCHAR (6)    NOT NULL,
    [TZONRC]           NVARCHAR (6)    NOT NULL,
    [CONT_DG]          NVARCHAR (1)    NOT NULL,
    [VERURSYS]         NVARCHAR (10)   NOT NULL,
    [KZWAB]            NVARCHAR (1)    NOT NULL,
    [VLSTK]            NVARCHAR (1)    NOT NULL,
    [TCODE]            NVARCHAR (20)   NOT NULL,
    [VSART]            NVARCHAR (2)    NOT NULL,
    [TRMTYP]           NVARCHAR (18)   NOT NULL,
    [SDABW]            NVARCHAR (4)    NOT NULL,
    [VBUND]            NVARCHAR (6)    NOT NULL,
    [XWOFF]            NVARCHAR (1)    NOT NULL,
    [DIRTA]            NVARCHAR (1)    NOT NULL,
    [PRVBE]            NVARCHAR (10)   NOT NULL,
    [FOLAR]            NVARCHAR (4)    NOT NULL,
    [PODAT]            NVARCHAR (8)    NOT NULL,
    [POTIM]            NVARCHAR (6)    NOT NULL,
    [VGANZ]            INT             NOT NULL,
    [IMWRK]            NVARCHAR (1)    NOT NULL,
    [SPE_LOEKZ]        NVARCHAR (1)    NOT NULL,
    [SPE_LOC_SEQ]      NVARCHAR (3)    NOT NULL,
    [SPE_ACC_APP_STS]  NVARCHAR (1)    NOT NULL,
    [SPE_SHP_INF_STS]  NVARCHAR (1)    NOT NULL,
    [SPE_RET_CANC]     NVARCHAR (1)    NOT NULL,
    [SPE_WAUHR_IST]    NVARCHAR (6)    NOT NULL,
    [SPE_WAZONE_IST]   NVARCHAR (6)    NOT NULL,
    [SPE_REV_VLSTK]    NVARCHAR (1)    NOT NULL,
    [SPE_LE_SCENARIO]  NVARCHAR (1)    NOT NULL,
    [SPE_ORIG_SYS]     NVARCHAR (1)    NOT NULL,
    [SPE_CHNG_SYS]     NVARCHAR (1)    NOT NULL,
    [SPE_GEOROUTE]     NVARCHAR (10)   NOT NULL,
    [SPE_GEOROUTEIND]  NVARCHAR (1)    NOT NULL,
    [SPE_CARRIER_IND]  NVARCHAR (1)    NOT NULL,
    [SPE_GTS_REL]      NVARCHAR (2)    NOT NULL,
    [SPE_GTS_RT_CDE]   NVARCHAR (10)   NOT NULL,
    [SPE_REL_TMSTMP]   NUMERIC (15)    NOT NULL,
    [SPE_UNIT_SYSTEM]  NVARCHAR (10)   NOT NULL,
    [SPE_INV_BFR_GI]   NVARCHAR (1)    NOT NULL,
    [SPE_QI_STATUS]    NVARCHAR (1)    NOT NULL,
    [SPE_RED_IND]      NVARCHAR (1)    NOT NULL,
    [SAKES]            NVARCHAR (1)    NOT NULL,
    [SPE_LIFEX_TYPE]   NVARCHAR (1)    NOT NULL,
    [SPE_TTYPE]        NVARCHAR (10)   NOT NULL,
    [SPE_PRO_NUMBER]   NVARCHAR (35)   NOT NULL,
    [LOC_GUID]         VARBINARY (16)  NULL,
    [/BEV1/LULEINH]    NVARCHAR (8)    NOT NULL,
    [/BEV1/RPFAESS]    NUMERIC (7)     NOT NULL,
    [/BEV1/RPKIST]     NUMERIC (7)     NOT NULL,
    [/BEV1/RPCONT]     NUMERIC (7)     NOT NULL,
    [/BEV1/RPSONST]    NUMERIC (7)     NOT NULL,
    [/BEV1/RPFLGNR]    NVARCHAR (5)    NOT NULL,
    [BORGR_GRP]        NVARCHAR (35)   NOT NULL,
    [SPE_BILLING_IND]  NVARCHAR (1)    NULL,
    [PRINTER_PROFILE]  NVARCHAR (10)   NULL,
    [MSR_ACTIVE]       NVARCHAR (1)    NULL,
    [PRTNR]            NVARCHAR (10)   NULL,
    [STGE_LOC_CHANGE]  NVARCHAR (1)    NULL,
    [TM_CTRL_KEY]      NVARCHAR (4)    NULL,
    [DLV_SPLIT_INITIA] NVARCHAR (1)    NULL,
    [DLV_VERSION]      NVARCHAR (4)    NULL,
    [ZZSTATUS]         NVARCHAR (2)    NULL,
    [ZZNUM_EXP_SEUR]   NVARCHAR (50)   NULL,
    [HANDOVERLOC]      NVARCHAR (10)   NULL,
    [HANDOVERDATE]     NVARCHAR (8)    NULL,
    [HANDOVERTIME]     NVARCHAR (6)    NULL,
    [HANDOVERTZONE]    NVARCHAR (6)    NULL,
    [INCOV]            NVARCHAR (4)    NULL,
    [INCO2_L]          NVARCHAR (70)   NULL,
    [INCO3_L]          NVARCHAR (70)   NULL
);

