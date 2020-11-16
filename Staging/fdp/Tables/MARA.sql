﻿CREATE TABLE [fdp].[MARA] (
    [MANDT]            NVARCHAR (3)    NOT NULL,
    [MATNR]            NVARCHAR (18)   NOT NULL,
    [ERSDA]            NVARCHAR (8)    NOT NULL,
    [ERNAM]            NVARCHAR (12)   NOT NULL,
    [LAEDA]            NVARCHAR (8)    NOT NULL,
    [AENAM]            NVARCHAR (12)   NOT NULL,
    [VPSTA]            NVARCHAR (15)   NOT NULL,
    [PSTAT]            NVARCHAR (15)   NOT NULL,
    [LVORM]            NVARCHAR (1)    NOT NULL,
    [MTART]            NVARCHAR (4)    NOT NULL,
    [MBRSH]            NVARCHAR (1)    NOT NULL,
    [MATKL]            NVARCHAR (9)    NOT NULL,
    [BISMT]            NVARCHAR (18)   NOT NULL,
    [MEINS]            NVARCHAR (3)    NOT NULL,
    [BSTME]            NVARCHAR (3)    NOT NULL,
    [ZEINR]            NVARCHAR (22)   NOT NULL,
    [ZEIAR]            NVARCHAR (3)    NOT NULL,
    [ZEIVR]            NVARCHAR (2)    NOT NULL,
    [ZEIFO]            NVARCHAR (4)    NOT NULL,
    [AESZN]            NVARCHAR (6)    NOT NULL,
    [BLATT]            NVARCHAR (3)    NOT NULL,
    [BLANZ]            NVARCHAR (3)    NOT NULL,
    [FERTH]            NVARCHAR (18)   NOT NULL,
    [FORMT]            NVARCHAR (4)    NOT NULL,
    [GROES]            NVARCHAR (32)   NOT NULL,
    [WRKST]            NVARCHAR (48)   NOT NULL,
    [NORMT]            NVARCHAR (18)   NOT NULL,
    [LABOR]            NVARCHAR (3)    NOT NULL,
    [EKWSL]            NVARCHAR (4)    NOT NULL,
    [BRGEW]            NUMERIC (13, 3) NOT NULL,
    [NTGEW]            NUMERIC (13, 3) NOT NULL,
    [GEWEI]            NVARCHAR (3)    NOT NULL,
    [VOLUM]            NUMERIC (13, 3) NOT NULL,
    [VOLEH]            NVARCHAR (3)    NOT NULL,
    [BEHVO]            NVARCHAR (2)    NOT NULL,
    [RAUBE]            NVARCHAR (2)    NOT NULL,
    [TEMPB]            NVARCHAR (2)    NOT NULL,
    [DISST]            NVARCHAR (3)    NOT NULL,
    [TRAGR]            NVARCHAR (4)    NOT NULL,
    [STOFF]            NVARCHAR (18)   NOT NULL,
    [SPART]            NVARCHAR (2)    NOT NULL,
    [KUNNR]            NVARCHAR (10)   NOT NULL,
    [EANNR]            NVARCHAR (13)   NOT NULL,
    [WESCH]            NUMERIC (13, 3) NOT NULL,
    [BWVOR]            NVARCHAR (1)    NOT NULL,
    [BWSCL]            NVARCHAR (1)    NOT NULL,
    [SAISO]            NVARCHAR (4)    NOT NULL,
    [ETIAR]            NVARCHAR (2)    NOT NULL,
    [ETIFO]            NVARCHAR (2)    NOT NULL,
    [ENTAR]            NVARCHAR (1)    NOT NULL,
    [EAN11]            NVARCHAR (18)   NOT NULL,
    [NUMTP]            NVARCHAR (2)    NOT NULL,
    [LAENG]            NUMERIC (13, 3) NOT NULL,
    [BREIT]            NUMERIC (13, 3) NOT NULL,
    [HOEHE]            NUMERIC (13, 3) NOT NULL,
    [MEABM]            NVARCHAR (3)    NOT NULL,
    [PRDHA]            NVARCHAR (18)   NOT NULL,
    [AEKLK]            NVARCHAR (1)    NOT NULL,
    [CADKZ]            NVARCHAR (1)    NOT NULL,
    [QMPUR]            NVARCHAR (1)    NOT NULL,
    [ERGEW]            NUMERIC (13, 3) NOT NULL,
    [ERGEI]            NVARCHAR (3)    NOT NULL,
    [ERVOL]            NUMERIC (13, 3) NOT NULL,
    [ERVOE]            NVARCHAR (3)    NOT NULL,
    [GEWTO]            NUMERIC (3, 1)  NOT NULL,
    [VOLTO]            NUMERIC (3, 1)  NOT NULL,
    [VABME]            NVARCHAR (1)    NOT NULL,
    [KZREV]            NVARCHAR (1)    NOT NULL,
    [KZKFG]            NVARCHAR (1)    NOT NULL,
    [XCHPF]            NVARCHAR (1)    NOT NULL,
    [VHART]            NVARCHAR (4)    NOT NULL,
    [FUELG]            NUMERIC (3)     NOT NULL,
    [STFAK]            SMALLINT        NOT NULL,
    [MAGRV]            NVARCHAR (4)    NOT NULL,
    [BEGRU]            NVARCHAR (4)    NOT NULL,
    [DATAB]            NVARCHAR (8)    NOT NULL,
    [LIQDT]            NVARCHAR (8)    NOT NULL,
    [SAISJ]            NVARCHAR (4)    NOT NULL,
    [PLGTP]            NVARCHAR (2)    NOT NULL,
    [MLGUT]            NVARCHAR (1)    NOT NULL,
    [EXTWG]            NVARCHAR (18)   NOT NULL,
    [SATNR]            NVARCHAR (18)   NOT NULL,
    [ATTYP]            NVARCHAR (2)    NOT NULL,
    [KZKUP]            NVARCHAR (1)    NOT NULL,
    [KZNFM]            NVARCHAR (1)    NOT NULL,
    [PMATA]            NVARCHAR (18)   NOT NULL,
    [MSTAE]            NVARCHAR (2)    NOT NULL,
    [MSTAV]            NVARCHAR (2)    NOT NULL,
    [MSTDE]            NVARCHAR (8)    NOT NULL,
    [MSTDV]            NVARCHAR (8)    NOT NULL,
    [TAKLV]            NVARCHAR (1)    NOT NULL,
    [RBNRM]            NVARCHAR (9)    NOT NULL,
    [MHDRZ]            NUMERIC (4)     NOT NULL,
    [MHDHB]            NUMERIC (4)     NOT NULL,
    [MHDLP]            NUMERIC (3)     NOT NULL,
    [INHME]            NVARCHAR (3)    NOT NULL,
    [INHAL]            NUMERIC (13, 3) NOT NULL,
    [VPREH]            NUMERIC (5)     NOT NULL,
    [ETIAG]            NVARCHAR (18)   NOT NULL,
    [INHBR]            NUMERIC (13, 3) NOT NULL,
    [CMETH]            NVARCHAR (1)    NOT NULL,
    [CUOBF]            NVARCHAR (18)   NOT NULL,
    [KZUMW]            NVARCHAR (1)    NOT NULL,
    [KOSCH]            NVARCHAR (18)   NOT NULL,
    [SPROF]            NVARCHAR (1)    NOT NULL,
    [NRFHG]            NVARCHAR (1)    NOT NULL,
    [MFRPN]            NVARCHAR (40)   NOT NULL,
    [MFRNR]            NVARCHAR (10)   NOT NULL,
    [BMATN]            NVARCHAR (18)   NOT NULL,
    [MPROF]            NVARCHAR (4)    NOT NULL,
    [KZWSM]            NVARCHAR (1)    NOT NULL,
    [SAITY]            NVARCHAR (2)    NOT NULL,
    [PROFL]            NVARCHAR (3)    NOT NULL,
    [IHIVI]            NVARCHAR (1)    NOT NULL,
    [ILOOS]            NVARCHAR (1)    NOT NULL,
    [SERLV]            NVARCHAR (1)    NOT NULL,
    [KZGVH]            NVARCHAR (1)    NOT NULL,
    [XGCHP]            NVARCHAR (1)    NOT NULL,
    [KZEFF]            NVARCHAR (1)    NOT NULL,
    [COMPL]            NVARCHAR (2)    NOT NULL,
    [IPRKZ]            NVARCHAR (1)    NOT NULL,
    [RDMHD]            NVARCHAR (1)    NOT NULL,
    [PRZUS]            NVARCHAR (1)    NOT NULL,
    [MTPOS_MARA]       NVARCHAR (4)    NOT NULL,
    [BFLME]            NVARCHAR (1)    NOT NULL,
    [MATFI]            NVARCHAR (1)    NOT NULL,
    [CMREL]            NVARCHAR (1)    NOT NULL,
    [BBTYP]            NVARCHAR (1)    NOT NULL,
    [SLED_BBD]         NVARCHAR (1)    NOT NULL,
    [GTIN_VARIANT]     NVARCHAR (2)    NOT NULL,
    [GENNR]            NVARCHAR (18)   NOT NULL,
    [RMATP]            NVARCHAR (18)   NOT NULL,
    [GDS_RELEVANT]     NVARCHAR (1)    NOT NULL,
    [WEORA]            NVARCHAR (1)    NOT NULL,
    [HUTYP_DFLT]       NVARCHAR (4)    NOT NULL,
    [PILFERABLE]       NVARCHAR (1)    NOT NULL,
    [WHSTC]            NVARCHAR (2)    NOT NULL,
    [WHMATGR]          NVARCHAR (4)    NOT NULL,
    [HNDLCODE]         NVARCHAR (4)    NOT NULL,
    [HAZMAT]           NVARCHAR (1)    NOT NULL,
    [HUTYP]            NVARCHAR (4)    NOT NULL,
    [TARE_VAR]         NVARCHAR (1)    NOT NULL,
    [MAXC]             NUMERIC (15, 3) NOT NULL,
    [MAXC_TOL]         NUMERIC (3, 1)  NOT NULL,
    [MAXL]             NUMERIC (15, 3) NOT NULL,
    [MAXB]             NUMERIC (15, 3) NOT NULL,
    [MAXH]             NUMERIC (15, 3) NOT NULL,
    [MAXDIM_UOM]       NVARCHAR (3)    NOT NULL,
    [HERKL]            NVARCHAR (3)    NOT NULL,
    [MFRGR]            NVARCHAR (8)    NOT NULL,
    [QQTIME]           NUMERIC (3)     NOT NULL,
    [QQTIMEUOM]        NVARCHAR (3)    NOT NULL,
    [QGRP]             NVARCHAR (4)    NOT NULL,
    [SERIAL]           NVARCHAR (4)    NOT NULL,
    [PS_SMARTFORM]     NVARCHAR (30)   NOT NULL,
    [LOGUNIT]          NVARCHAR (3)    NOT NULL,
    [CWQREL]           NVARCHAR (1)    NOT NULL,
    [CWQPROC]          NVARCHAR (2)    NOT NULL,
    [CWQTOLGR]         NVARCHAR (9)    NOT NULL,
    [/BEV1/LULEINH]    NVARCHAR (8)    NOT NULL,
    [/BEV1/LULDEGRP]   NVARCHAR (3)    NOT NULL,
    [/BEV1/NESTRUCCAT] NVARCHAR (1)    NOT NULL,
    [/DSD/VC_GROUP]    NVARCHAR (6)    NOT NULL,
    [/VSO/R_TILT_IND]  NVARCHAR (1)    NOT NULL,
    [/VSO/R_STACK_IND] NVARCHAR (1)    NOT NULL,
    [/VSO/R_BOT_IND]   NVARCHAR (1)    NOT NULL,
    [/VSO/R_TOP_IND]   NVARCHAR (1)    NOT NULL,
    [/VSO/R_STACK_NO]  NVARCHAR (3)    NOT NULL,
    [/VSO/R_PAL_IND]   NVARCHAR (1)    NOT NULL,
    [/VSO/R_PAL_OVR_D] NUMERIC (13, 3) NOT NULL,
    [/VSO/R_PAL_OVR_W] NUMERIC (13, 3) NOT NULL,
    [/VSO/R_PAL_B_HT]  NUMERIC (13, 3) NOT NULL,
    [/VSO/R_PAL_MIN_H] NUMERIC (13, 3) NOT NULL,
    [/VSO/R_TOL_B_HT]  NUMERIC (13, 3) NOT NULL,
    [/VSO/R_NO_P_GVH]  NVARCHAR (2)    NOT NULL,
    [/VSO/R_QUAN_UNIT] NVARCHAR (3)    NOT NULL,
    [/VSO/R_KZGVH_IND] NVARCHAR (1)    NOT NULL,
    [MCOND]            NVARCHAR (1)    NOT NULL,
    [RETDELC]          NVARCHAR (1)    NOT NULL,
    [LOGLEV_RETO]      NVARCHAR (1)    NOT NULL,
    [NSNID]            NVARCHAR (9)    NOT NULL,
    [IMATN]            NVARCHAR (18)   NOT NULL,
    [PICNUM]           NVARCHAR (18)   NOT NULL,
    [BSTAT]            NVARCHAR (2)    NOT NULL,
    [COLOR_ATINN]      NVARCHAR (10)   NOT NULL,
    [SIZE1_ATINN]      NVARCHAR (10)   NOT NULL,
    [SIZE2_ATINN]      NVARCHAR (10)   NOT NULL,
    [COLOR]            NVARCHAR (18)   NOT NULL,
    [SIZE1]            NVARCHAR (18)   NOT NULL,
    [SIZE2]            NVARCHAR (18)   NOT NULL,
    [FREE_CHAR]        NVARCHAR (18)   NOT NULL,
    [CARE_CODE]        NVARCHAR (16)   NOT NULL,
    [BRAND_ID]         NVARCHAR (4)    NOT NULL,
    [FIBER_CODE1]      NVARCHAR (3)    NOT NULL,
    [FIBER_PART1]      NVARCHAR (3)    NOT NULL,
    [FIBER_CODE2]      NVARCHAR (3)    NOT NULL,
    [FIBER_PART2]      NVARCHAR (3)    NOT NULL,
    [FIBER_CODE3]      NVARCHAR (3)    NOT NULL,
    [FIBER_PART3]      NVARCHAR (3)    NOT NULL,
    [FIBER_CODE4]      NVARCHAR (3)    NOT NULL,
    [FIBER_PART4]      NVARCHAR (3)    NOT NULL,
    [FIBER_CODE5]      NVARCHAR (3)    NOT NULL,
    [FIBER_PART5]      NVARCHAR (3)    NOT NULL,
    [FASHGRD]          NVARCHAR (4)    NOT NULL,
    [ADPROF]           NVARCHAR (3)    NULL,
    [/DSD/SL_TOLTYP]   NVARCHAR (4)    NULL,
    [/DSD/SV_CNT_GRP]  NVARCHAR (10)   NULL,
    [PACKCODE]         NVARCHAR (10)   NULL,
    [DG_PACK_STATUS]   NVARCHAR (10)   NULL,
    [ANIMAL_ORIGIN]    NVARCHAR (1)    NULL,
    [TEXTILE_COMP_IND] NVARCHAR (1)    NULL,
    [IPMIPPRODUCT]     NVARCHAR (40)   NULL,
    [ALLOW_PMAT_IGNO]  NVARCHAR (1)    NULL,
    [MEDIUM]           NVARCHAR (6)    NULL,
    [COMMODITY]        NVARCHAR (18)   NULL,
    [SGT_CSGR]         NVARCHAR (4)    NULL,
    [SGT_COVSA]        NVARCHAR (8)    NULL,
    [SGT_STAT]         NVARCHAR (1)    NULL,
    [SGT_SCOPE]        NVARCHAR (1)    NULL,
    [SGT_REL]          NVARCHAR (1)    NULL,
    [ANP]              NVARCHAR (9)    NULL,
    [FSH_MG_AT1]       NVARCHAR (10)   NULL,
    [FSH_MG_AT2]       NVARCHAR (10)   NULL,
    [FSH_MG_AT3]       NVARCHAR (6)    NULL,
    [FSH_SEALV]        NVARCHAR (1)    NULL,
    [FSH_SEAIM]        NVARCHAR (1)    NULL,
    [FSH_SC_MID]       NVARCHAR (2)    NULL,
    [PSM_CODE]         NVARCHAR (2)    NULL,
    [ZZZBISMT]         NVARCHAR (18)   NULL,
    [ZZZEXTWG]         SMALLINT        NULL
);
