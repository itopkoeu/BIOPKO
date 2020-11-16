﻿CREATE TABLE [fdp].[KNA1] (
    [MANDT]            NVARCHAR (3)    NOT NULL,
    [KUNNR]            NVARCHAR (10)   NOT NULL,
    [LAND1]            NVARCHAR (3)    NOT NULL,
    [NAME1]            NVARCHAR (35)   NOT NULL,
    [NAME2]            NVARCHAR (35)   NOT NULL,
    [ORT01]            NVARCHAR (35)   NOT NULL,
    [PSTLZ]            NVARCHAR (10)   NOT NULL,
    [REGIO]            NVARCHAR (3)    NOT NULL,
    [SORTL]            NVARCHAR (10)   NOT NULL,
    [STRAS]            NVARCHAR (35)   NOT NULL,
    [TELF1]            NVARCHAR (16)   NOT NULL,
    [TELFX]            NVARCHAR (31)   NOT NULL,
    [XCPDK]            NVARCHAR (1)    NOT NULL,
    [ADRNR]            NVARCHAR (10)   NOT NULL,
    [MCOD1]            NVARCHAR (25)   NOT NULL,
    [MCOD2]            NVARCHAR (25)   NOT NULL,
    [MCOD3]            NVARCHAR (25)   NOT NULL,
    [ANRED]            NVARCHAR (15)   NOT NULL,
    [AUFSD]            NVARCHAR (2)    NOT NULL,
    [BAHNE]            NVARCHAR (25)   NOT NULL,
    [BAHNS]            NVARCHAR (25)   NOT NULL,
    [BBBNR]            NVARCHAR (7)    NOT NULL,
    [BBSNR]            NVARCHAR (5)    NOT NULL,
    [BEGRU]            NVARCHAR (4)    NOT NULL,
    [BRSCH]            NVARCHAR (4)    NOT NULL,
    [BUBKZ]            NVARCHAR (1)    NOT NULL,
    [DATLT]            NVARCHAR (14)   NOT NULL,
    [ERDAT]            NVARCHAR (8)    NOT NULL,
    [ERNAM]            NVARCHAR (12)   NOT NULL,
    [EXABL]            NVARCHAR (1)    NOT NULL,
    [FAKSD]            NVARCHAR (2)    NOT NULL,
    [FISKN]            NVARCHAR (10)   NOT NULL,
    [KNAZK]            NVARCHAR (2)    NOT NULL,
    [KNRZA]            NVARCHAR (10)   NOT NULL,
    [KONZS]            NVARCHAR (10)   NOT NULL,
    [KTOKD]            NVARCHAR (4)    NOT NULL,
    [KUKLA]            NVARCHAR (2)    NOT NULL,
    [LIFNR]            NVARCHAR (10)   NOT NULL,
    [LIFSD]            NVARCHAR (2)    NOT NULL,
    [LOCCO]            NVARCHAR (10)   NOT NULL,
    [LOEVM]            NVARCHAR (1)    NOT NULL,
    [NAME3]            NVARCHAR (35)   NOT NULL,
    [NAME4]            NVARCHAR (35)   NOT NULL,
    [NIELS]            NVARCHAR (2)    NOT NULL,
    [ORT02]            NVARCHAR (35)   NOT NULL,
    [PFACH]            NVARCHAR (10)   NOT NULL,
    [PSTL2]            NVARCHAR (10)   NOT NULL,
    [COUNC]            NVARCHAR (3)    NOT NULL,
    [CITYC]            NVARCHAR (4)    NOT NULL,
    [RPMKR]            NVARCHAR (5)    NOT NULL,
    [SPERR]            NVARCHAR (1)    NOT NULL,
    [SPRAS]            NVARCHAR (1)    NOT NULL,
    [STCD1]            NVARCHAR (16)   NOT NULL,
    [STCD2]            NVARCHAR (11)   NOT NULL,
    [STKZA]            NVARCHAR (1)    NOT NULL,
    [STKZU]            NVARCHAR (1)    NOT NULL,
    [TELBX]            NVARCHAR (15)   NOT NULL,
    [TELF2]            NVARCHAR (16)   NOT NULL,
    [TELTX]            NVARCHAR (30)   NOT NULL,
    [TELX1]            NVARCHAR (30)   NOT NULL,
    [LZONE]            NVARCHAR (10)   NOT NULL,
    [XZEMP]            NVARCHAR (1)    NOT NULL,
    [VBUND]            NVARCHAR (6)    NOT NULL,
    [STCEG]            NVARCHAR (20)   NOT NULL,
    [DEAR1]            NVARCHAR (1)    NOT NULL,
    [DEAR2]            NVARCHAR (1)    NOT NULL,
    [DEAR3]            NVARCHAR (1)    NOT NULL,
    [DEAR4]            NVARCHAR (1)    NOT NULL,
    [DEAR5]            NVARCHAR (1)    NOT NULL,
    [GFORM]            NVARCHAR (2)    NOT NULL,
    [BRAN1]            NVARCHAR (10)   NOT NULL,
    [BRAN2]            NVARCHAR (10)   NOT NULL,
    [BRAN3]            NVARCHAR (10)   NOT NULL,
    [BRAN4]            NVARCHAR (10)   NOT NULL,
    [BRAN5]            NVARCHAR (10)   NOT NULL,
    [EKONT]            NVARCHAR (10)   NOT NULL,
    [UMSAT]            NUMERIC (8, 2)  NOT NULL,
    [UMJAH]            NVARCHAR (4)    NOT NULL,
    [UWAER]            NVARCHAR (5)    NOT NULL,
    [JMZAH]            NVARCHAR (6)    NOT NULL,
    [JMJAH]            NVARCHAR (4)    NOT NULL,
    [KATR1]            NVARCHAR (2)    NOT NULL,
    [KATR2]            NVARCHAR (2)    NOT NULL,
    [KATR3]            NVARCHAR (2)    NOT NULL,
    [KATR4]            NVARCHAR (2)    NOT NULL,
    [KATR5]            NVARCHAR (2)    NOT NULL,
    [KATR6]            NVARCHAR (3)    NOT NULL,
    [KATR7]            NVARCHAR (3)    NOT NULL,
    [KATR8]            NVARCHAR (3)    NOT NULL,
    [KATR9]            NVARCHAR (3)    NOT NULL,
    [KATR10]           NVARCHAR (3)    NOT NULL,
    [STKZN]            NVARCHAR (1)    NOT NULL,
    [UMSA1]            NUMERIC (15, 2) NOT NULL,
    [TXJCD]            NVARCHAR (15)   NOT NULL,
    [PERIV]            NVARCHAR (2)    NOT NULL,
    [ABRVW]            NVARCHAR (3)    NOT NULL,
    [INSPBYDEBI]       NVARCHAR (1)    NOT NULL,
    [INSPATDEBI]       NVARCHAR (1)    NOT NULL,
    [KTOCD]            NVARCHAR (4)    NOT NULL,
    [PFORT]            NVARCHAR (35)   NOT NULL,
    [WERKS]            NVARCHAR (4)    NOT NULL,
    [DTAMS]            NVARCHAR (1)    NOT NULL,
    [DTAWS]            NVARCHAR (2)    NOT NULL,
    [DUEFL]            NVARCHAR (1)    NOT NULL,
    [HZUOR]            NVARCHAR (2)    NOT NULL,
    [SPERZ]            NVARCHAR (1)    NOT NULL,
    [ETIKG]            NVARCHAR (10)   NOT NULL,
    [CIVVE]            NVARCHAR (1)    NOT NULL,
    [MILVE]            NVARCHAR (1)    NOT NULL,
    [KDKG1]            NVARCHAR (2)    NOT NULL,
    [KDKG2]            NVARCHAR (2)    NOT NULL,
    [KDKG3]            NVARCHAR (2)    NOT NULL,
    [KDKG4]            NVARCHAR (2)    NOT NULL,
    [KDKG5]            NVARCHAR (2)    NOT NULL,
    [XKNZA]            NVARCHAR (1)    NOT NULL,
    [FITYP]            NVARCHAR (2)    NOT NULL,
    [STCDT]            NVARCHAR (2)    NOT NULL,
    [STCD3]            NVARCHAR (18)   NOT NULL,
    [STCD4]            NVARCHAR (18)   NOT NULL,
    [XICMS]            NVARCHAR (1)    NOT NULL,
    [XXIPI]            NVARCHAR (1)    NOT NULL,
    [XSUBT]            NVARCHAR (3)    NOT NULL,
    [CFOPC]            NVARCHAR (2)    NOT NULL,
    [TXLW1]            NVARCHAR (3)    NOT NULL,
    [TXLW2]            NVARCHAR (3)    NOT NULL,
    [CCC01]            NVARCHAR (1)    NOT NULL,
    [CCC02]            NVARCHAR (1)    NOT NULL,
    [CCC03]            NVARCHAR (1)    NOT NULL,
    [CCC04]            NVARCHAR (1)    NOT NULL,
    [CASSD]            NVARCHAR (2)    NOT NULL,
    [KNURL]            NVARCHAR (132)  NOT NULL,
    [J_1KFREPRE]       NVARCHAR (10)   NOT NULL,
    [J_1KFTBUS]        NVARCHAR (30)   NOT NULL,
    [J_1KFTIND]        NVARCHAR (30)   NOT NULL,
    [CONFS]            NVARCHAR (1)    NOT NULL,
    [UPDAT]            NVARCHAR (8)    NOT NULL,
    [UPTIM]            NVARCHAR (6)    NOT NULL,
    [NODEL]            NVARCHAR (1)    NOT NULL,
    [DEAR6]            NVARCHAR (1)    NOT NULL,
    [/VSO/R_PALHGT]    NUMERIC (13, 3) NOT NULL,
    [/VSO/R_PAL_UL]    NVARCHAR (3)    NOT NULL,
    [/VSO/R_PK_MAT]    NVARCHAR (1)    NOT NULL,
    [/VSO/R_MATPAL]    NVARCHAR (18)   NOT NULL,
    [/VSO/R_I_NO_LYR]  NVARCHAR (2)    NOT NULL,
    [/VSO/R_ONE_MAT]   NVARCHAR (1)    NOT NULL,
    [/VSO/R_ONE_SORT]  NVARCHAR (1)    NOT NULL,
    [/VSO/R_ULD_SIDE]  NVARCHAR (1)    NOT NULL,
    [/VSO/R_LOAD_PREF] NVARCHAR (1)    NOT NULL,
    [/VSO/R_DPOINT]    NVARCHAR (10)   NOT NULL,
    [ALC]              NVARCHAR (8)    NOT NULL,
    [PMT_OFFICE]       NVARCHAR (5)    NOT NULL,
    [PSOFG]            NVARCHAR (10)   NOT NULL,
    [PSOIS]            NVARCHAR (20)   NOT NULL,
    [PSON1]            NVARCHAR (35)   NOT NULL,
    [PSON2]            NVARCHAR (35)   NOT NULL,
    [PSON3]            NVARCHAR (35)   NOT NULL,
    [PSOVN]            NVARCHAR (35)   NOT NULL,
    [PSOTL]            NVARCHAR (20)   NOT NULL,
    [PSOHS]            NVARCHAR (6)    NOT NULL,
    [PSOST]            NVARCHAR (28)   NOT NULL,
    [PSOO1]            NVARCHAR (50)   NOT NULL,
    [PSOO2]            NVARCHAR (50)   NOT NULL,
    [PSOO3]            NVARCHAR (50)   NOT NULL,
    [PSOO4]            NVARCHAR (50)   NOT NULL,
    [PSOO5]            NVARCHAR (50)   NOT NULL,
    [STCD5]            NVARCHAR (60)   NULL,
    [CVP_XBLCK]        NVARCHAR (1)    NOT NULL,
    [SUFRAMA]          NVARCHAR (9)    NULL,
    [RG]               NVARCHAR (11)   NULL,
    [EXP]              NVARCHAR (3)    NULL,
    [UF]               NVARCHAR (2)    NULL,
    [RGDATE]           NVARCHAR (8)    NULL,
    [RIC]              NVARCHAR (11)   NULL,
    [RNE]              NVARCHAR (10)   NULL,
    [RNEDATE]          NVARCHAR (8)    NULL,
    [CNAE]             NVARCHAR (7)    NULL,
    [LEGALNAT]         NVARCHAR (4)    NULL,
    [CRTN]             NVARCHAR (1)    NULL,
    [ICMSTAXPAY]       NVARCHAR (2)    NULL,
    [INDTYP]           NVARCHAR (2)    NULL,
    [TDT]              NVARCHAR (2)    NULL,
    [COMSIZE]          NVARCHAR (2)    NULL,
    [DECREGPC]         NVARCHAR (2)    NULL,
    [Z_MAIL]           NVARCHAR (241)  NULL,
    [Z_MAIL_ALB]       NVARCHAR (241)  NULL,
    [InserAuditKey]    INT             NULL,
    [UpdateAuditKey]   INT             NULL,
    [Dataqualityflag]  NCHAR (1)       NULL
);

