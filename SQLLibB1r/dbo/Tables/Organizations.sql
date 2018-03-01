CREATE TABLE [dbo].[Organizations] (
    [id]       UNIQUEIDENTIFIER CONSTRAINT [DF_Organizations_id] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [FullName] NVARCHAR (500)   NOT NULL,
    [INN]      NVARCHAR (50)    NULL,
    CONSTRAINT [PK_Organizations] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20171025-162410]
    ON [dbo].[Organizations]([id] ASC, [FullName] ASC, [INN] ASC);

