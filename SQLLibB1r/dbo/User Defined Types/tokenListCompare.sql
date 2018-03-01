CREATE TYPE [dbo].[tokenListCompare] AS TABLE (
    [id]      INT            IDENTITY (1, 1) NOT NULL,
    [id1]     INT            NOT NULL,
    [StrVal1] NVARCHAR (100) COLLATE Cyrillic_General_BIN2 NOT NULL,
    [id2]     INT            NOT NULL,
    [StrVal2] NVARCHAR (100) COLLATE Cyrillic_General_BIN2 NOT NULL,
    [Result]  NVARCHAR (100) COLLATE Cyrillic_General_BIN2 NULL,
    PRIMARY KEY NONCLUSTERED ([id] ASC),
    INDEX [tokenList] ([id], [StrVal1], [id1], [StrVal2], [id2]))
    WITH (MEMORY_OPTIMIZED = ON);

