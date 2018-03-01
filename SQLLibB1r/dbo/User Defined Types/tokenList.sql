CREATE TYPE [dbo].[tokenList] AS TABLE (
    [id]     INT            NOT NULL,
    [StrVal] NVARCHAR (100) COLLATE Cyrillic_General_BIN2 NOT NULL,
    PRIMARY KEY NONCLUSTERED ([id] ASC),
    INDEX [tokenList] ([id], [StrVal]))
    WITH (MEMORY_OPTIMIZED = ON);

