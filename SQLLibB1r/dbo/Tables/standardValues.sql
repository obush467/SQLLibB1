CREATE TABLE [dbo].[standardValues] (
    [id]    INT          IDENTITY (1, 1) NOT NULL,
    [Value] VARCHAR (50) NULL,
    CONSTRAINT [PK_standardValues] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20170824-163241]
    ON [dbo].[standardValues]([id] ASC, [Value] ASC);

