CREATE TABLE [dbo].[nastroyki] (
    [kod]       UNIQUEIDENTIFIER CONSTRAINT [DF_nastroyki_kod1] DEFAULT (newid()) NOT NULL,
    [id]        NVARCHAR (100)   NULL,
    [tip]       NVARCHAR (100)   NULL,
    [znachenie] NVARCHAR (4000)  NULL,
    [memo]      NVARCHAR (MAX)   NULL,
    [PGP]       VARBINARY (MAX)  NULL,
    CONSTRAINT [PK_nastroyki] PRIMARY KEY CLUSTERED ([kod] ASC)
);

