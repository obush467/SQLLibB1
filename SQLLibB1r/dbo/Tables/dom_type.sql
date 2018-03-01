CREATE TABLE [dbo].[dom_type] (
    [id]           INT           IDENTITY (1, 1) NOT NULL,
    [domtype_full] NVARCHAR (50) NULL,
    [domtype_shot] NVARCHAR (50) NULL,
    [priznak]      NVARCHAR (50) NULL,
    CONSTRAINT [PK_dom_type] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20171130-125947]
    ON [dbo].[dom_type]([id] ASC)
    INCLUDE([domtype_full], [domtype_shot], [priznak]);

