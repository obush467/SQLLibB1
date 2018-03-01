CREATE TABLE [dbo].[GUPassport_Sites] (
    [id]                      UNIQUEIDENTIFIER CONSTRAINT [DF_GUPasssport_Sites_id] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [GUPasssport_ID]          UNIQUEIDENTIFIER NOT NULL,
    [Block_Number]            SMALLINT         NOT NULL,
    [Row_Number]              SMALLINT         NOT NULL,
    [Site_Number]             NVARCHAR (1)     NOT NULL,
    [Content_Text]            NVARCHAR (500)   NOT NULL,
    [Content_Transliteration] NVARCHAR (500)   NULL,
    [Content_Address]         NVARCHAR (500)   NULL,
    [Content_Direction]       NVARCHAR (20)    NULL,
    [Object_ID]               UNIQUEIDENTIFIER NULL,
    [Address_ID]              UNIQUEIDENTIFIER NULL,
    [Minutes]                 NCHAR (10)       NULL,
    [tsc]                     ROWVERSION       NOT NULL,
    CONSTRAINT [PK_GUPasssport_Sites] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_GUPasssport_Sites_GUPassports] FOREIGN KEY ([GUPasssport_ID]) REFERENCES [dbo].[GUPassports] ([id]) ON UPDATE CASCADE
);

