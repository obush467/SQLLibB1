CREATE TABLE [dbo].[Ground_Types] (
    [id]         UNIQUEIDENTIFIER CONSTRAINT [DF_Ground_Types_id] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [GroundName] NVARCHAR (50)    NOT NULL,
    CONSTRAINT [PK_Ground_Types] PRIMARY KEY CLUSTERED ([id] ASC)
);

