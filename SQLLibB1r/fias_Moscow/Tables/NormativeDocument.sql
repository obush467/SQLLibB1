﻿CREATE TABLE [fias_Moscow].[NormativeDocument] (
    [NORMDOCID] UNIQUEIDENTIFIER NOT NULL,
    [DOCNAME]   VARCHAR (500)    NULL,
    [DOCDATE]   SMALLDATETIME    NULL,
    [DOCNUM]    VARCHAR (20)     NULL,
    [DOCTYPE]   INT              NOT NULL,
    [DOCIMGID]  INT              NULL,
    CONSTRAINT [PK_NormativeDocument] PRIMARY KEY CLUSTERED ([NORMDOCID] ASC)
);

