CREATE TABLE [dbo].[Okrug1] (
    [ID]       UNIQUEIDENTIFIER  CONSTRAINT [DF_Okrug_unID] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [fullName] NVARCHAR (50)     NOT NULL,
    [shotName] NVARCHAR (5)      NOT NULL,
    [OKATO]    NVARCHAR (50)     NULL,
    [geoData]  [sys].[geography] NULL,
    CONSTRAINT [PK_Okrug] PRIMARY KEY CLUSTERED ([ID] ASC)
);

