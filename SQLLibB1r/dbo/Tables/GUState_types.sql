CREATE TABLE [dbo].[GUState_types] (
    [id]              INT            IDENTITY (1, 1) NOT NULL,
    [TypeName]        NVARCHAR (250) NOT NULL,
    [TypeDescription] NVARCHAR (MAX) NULL,
    [RegEx]           NVARCHAR (250) NULL,
    [dataType]        NVARCHAR (50)  NULL,
    CONSTRAINT [PK_typeState] PRIMARY KEY CLUSTERED ([id] ASC)
);

