CREATE TABLE [dbo].[tipdu] (
    [kod]      INT           IDENTITY (1, 1) NOT NULL,
    [tip]      VARCHAR (50)  NULL,
    [opisanie] VARCHAR (255) NULL,
    [razmer]   VARCHAR (255) NULL,
    [ploshad]  FLOAT (53)    NULL,
    CONSTRAINT [PK_tipdu] PRIMARY KEY NONCLUSTERED ([kod] ASC)
);

