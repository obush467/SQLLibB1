﻿CREATE TABLE [fias_Moscow].[Stead] (
    [STEADGUID]  UNIQUEIDENTIFIER NULL,
    [NUMBER]     VARCHAR (120)    NULL,
    [REGIONCODE] VARCHAR (2)      NULL,
    [POSTALCODE] VARCHAR (6)      NULL,
    [IFNSFL]     VARCHAR (4)      NULL,
    [TERRIFNSFL] VARCHAR (4)      NULL,
    [IFNSUL]     VARCHAR (4)      NULL,
    [TERRIFNSUL] VARCHAR (4)      NULL,
    [OKATO]      VARCHAR (11)     NULL,
    [OKTMO]      VARCHAR (11)     NULL,
    [UPDATEDATE] SMALLDATETIME    NOT NULL,
    [PARENTGUID] UNIQUEIDENTIFIER NULL,
    [STEADID]    UNIQUEIDENTIFIER NOT NULL,
    [PREVID]     UNIQUEIDENTIFIER NULL,
    [NEXTID]     UNIQUEIDENTIFIER NULL,
    [OPERSTATUS] BIGINT           NOT NULL,
    [STARTDATE]  SMALLDATETIME    NOT NULL,
    [ENDDATE]    SMALLDATETIME    NOT NULL,
    [NORMDOC]    UNIQUEIDENTIFIER NULL,
    [LIVESTATUS] INT              NOT NULL,
    [CADNUM]     VARCHAR (100)    NULL,
    [DIVTYPE]    INT              NOT NULL,
    CONSTRAINT [PK_Stead] PRIMARY KEY CLUSTERED ([STEADID] ASC)
);
