CREATE TABLE [dbo].[raion1] (
    [ID]              UNIQUEIDENTIFIER CONSTRAINT [DF_raion_unID] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [Parent_ID]       UNIQUEIDENTIFIER NULL,
    [ShortName]       NVARCHAR (255)   NULL,
    [type_name_admin] NVARCHAR (50)    NULL,
    [type_name_munis] NVARCHAR (50)    NULL,
    [tip]             NVARCHAR (255)   NULL,
    CONSTRAINT [PK_raion] PRIMARY KEY CLUSTERED ([ID] ASC)
);

