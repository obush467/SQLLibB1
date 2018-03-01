﻿CREATE TABLE [fias_Moscow].[Room] (
    [ROOMGUID]   VARCHAR (50)  NULL,
    [FLATNUMBER] VARCHAR (50)  NOT NULL,
    [FLATTYPE]   INT           NOT NULL,
    [ROOMNUMBER] VARCHAR (50)  NULL,
    [ROOMTYPE]   INT           NULL,
    [REGIONCODE] VARCHAR (2)   NULL,
    [POSTALCODE] VARCHAR (6)   NULL,
    [UPDATEDATE] SMALLDATETIME NOT NULL,
    [HOUSEGUID]  VARCHAR (50)  NULL,
    [ROOMID]     VARCHAR (50)  NOT NULL,
    [PREVID]     VARCHAR (50)  NULL,
    [NEXTID]     VARCHAR (50)  NULL,
    [STARTDATE]  SMALLDATETIME NOT NULL,
    [ENDDATE]    SMALLDATETIME NOT NULL,
    [LIVESTATUS] BIT           NOT NULL,
    [NORMDOC]    VARCHAR (50)  NULL,
    [OPERSTATUS] BIGINT        NOT NULL,
    [CADNUM]     VARCHAR (100) NULL,
    [ROOMCADNUM] VARCHAR (100) NULL,
    CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED ([ROOMID] ASC)
);

