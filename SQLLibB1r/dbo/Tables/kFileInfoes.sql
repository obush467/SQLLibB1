CREATE TABLE [dbo].[kFileInfoes] (
    [ID]                INT                IDENTITY (1, 1) NOT NULL,
    [FullName]          NVARCHAR (400)     NULL,
    [Name]              NVARCHAR (400)     NULL,
    [DirectoryName]     NVARCHAR (400)     NULL,
    [IsReadOnly]        BIT                CONSTRAINT [DF__kFileInfo__IsRea__666BEDB4] DEFAULT ((0)) NOT NULL,
    [CreationTime]      DATETIME           NOT NULL,
    [CreationTimeUtc]   DATETIMEOFFSET (7) NOT NULL,
    [LastAccessTime]    DATETIME           NOT NULL,
    [LastAccessTimeUtc] DATETIMEOFFSET (7) NOT NULL,
    [LastWriteTime]     DATETIME           NOT NULL,
    [LastWriteTimeUtc]  DATETIMEOFFSET (7) NOT NULL,
    [Attributes]        INT                CONSTRAINT [DF__kFileInfo__Attri__676011ED] DEFAULT ((0)) NOT NULL,
    [MD5]               VARBINARY (16)     NULL,
    [Length]            BIGINT             CONSTRAINT [DF__kFileInfo__Lengt__68543626] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dbo.kFileInfoes] PRIMARY KEY CLUSTERED ([ID] ASC)
);

