CREATE TABLE [dbo].[AdminArea] (
    [ID]             UNIQUEIDENTIFIER  CONSTRAINT [DF_AdminArea_ID] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [Parent_ID]      UNIQUEIDENTIFIER  NULL,
    [fullName]       NVARCHAR (150)    NOT NULL,
    [shortName]      NVARCHAR (50)     NOT NULL,
    [OKATO]          NVARCHAR (50)     NULL,
    [global_id]      INT               NULL,
    [Kod]            NVARCHAR (50)     NULL,
    [Latin_fullName] NVARCHAR (150)    NULL,
    [Type]           NVARCHAR (50)     NULL,
    [geoData]        [sys].[geography] NULL,
    CONSTRAINT [PK_AdminArea] PRIMARY KEY CLUSTERED ([ID] ASC)
);

