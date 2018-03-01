CREATE TABLE [dbo].[nas_punkt] (
    [id]         INT              IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (255)   NULL,
    [Prim]       NVARCHAR (MAX)   NULL,
    [type_full]  NVARCHAR (50)    NULL,
    [type_short] NVARCHAR (50)    NULL,
    [unID]       UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_nas_punkt] PRIMARY KEY CLUSTERED ([id] ASC)
);

