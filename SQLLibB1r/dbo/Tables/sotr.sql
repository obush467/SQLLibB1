CREATE TABLE [dbo].[sotr] (
    [id]         INT              IDENTITY (1, 1) NOT NULL,
    [fio]        NVARCHAR (255)   NULL,
    [doljnost]   NVARCHAR (255)   NULL,
    [org]        NVARCHAR (50)    NULL,
    [pass]       NVARCHAR (50)    NULL,
    [imaorg]     NVARCHAR (50)    NULL,
    [kod]        NVARCHAR (50)    NULL,
    [sortirovka] NCHAR (10)       NULL,
    [page]       NVARCHAR (50)    NULL,
    [zanatie]    NVARCHAR (20)    NULL,
    [iskl]       NCHAR (10)       NULL,
    [UID]        INT              NULL,
    [Sotr_ID]    UNIQUEIDENTIFIER CONSTRAINT [DF_sotr_Sotr_ID] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    CONSTRAINT [PK__sotr__3213E83F2A01329B] PRIMARY KEY CLUSTERED ([Sotr_ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ux_sotr_fio]
    ON [dbo].[sotr]([fio] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'запуск формы по умалчанию', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'sotr', @level2type = N'COLUMN', @level2name = N'page';

