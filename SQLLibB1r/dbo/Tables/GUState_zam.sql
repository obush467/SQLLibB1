CREATE TABLE [dbo].[GUState_zam] (
    [id]       INT        IDENTITY (1, 1) NOT NULL,
    [state_id] INT        NOT NULL,
    [type_id]  INT        NOT NULL,
    [ts]       ROWVERSION NOT NULL,
    CONSTRAINT [PK_GUState_zam] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_GUState_zam_GUState] FOREIGN KEY ([state_id]) REFERENCES [dbo].[GUState] ([id]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_GUState_zam_GUState_types] FOREIGN KEY ([type_id]) REFERENCES [dbo].[GUState_types] ([id]) ON UPDATE CASCADE
);

