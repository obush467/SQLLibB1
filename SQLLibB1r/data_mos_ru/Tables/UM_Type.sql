CREATE TABLE [data_mos_ru].[UM_Type] (
    [id]               INT             IDENTITY (1, 1) NOT NULL,
    [global_id]        INT             NOT NULL,
    [system_object_id] NVARCHAR (4000) NULL,
    [UM_STAT]          NVARCHAR (4000) NULL,
    [UM_TYPEC]         NVARCHAR (4000) NULL,
    [UM_TYPEN]         NVARCHAR (4000) NULL,
    CONSTRAINT [PK_data_mos_ru.UM_Type] PRIMARY KEY CLUSTERED ([id] ASC)
);

