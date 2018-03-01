CREATE TABLE [dbo].[DUFiles_DataBase_log1] (
    [id]                  UNIQUEIDENTIFIER   NOT NULL,
    [DUFiles_DataBase_ID] UNIQUEIDENTIFIER   NOT NULL,
    [inserted]            DATETIMEOFFSET (7) NOT NULL,
    CONSTRAINT [PK_DUFiles_DataBase_log1] PRIMARY KEY CLUSTERED ([id] ASC)
);

