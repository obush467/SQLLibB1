﻿CREATE TABLE [fias_Moscow].[StructureStatus] (
    [STRSTATID] INT           NOT NULL,
    [NAME]      NVARCHAR (50) NOT NULL,
    [SHORTNAME] NVARCHAR (50) NULL,
    CONSTRAINT [PK_StructureStatus] PRIMARY KEY CLUSTERED ([STRSTATID] ASC)
);

