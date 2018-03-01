CREATE TABLE [data_mos_ru].[TM_Type] (
    [id]        INT             IDENTITY (1, 1) NOT NULL,
    [global_id] INT             NOT NULL,
    [TM_TYPEC]  NVARCHAR (MAX)  NULL,
    [TM_TYPEN]  NVARCHAR (4000) NULL,
    CONSTRAINT [PK_data_mos_ru.TM_Type] PRIMARY KEY CLUSTERED ([id] ASC)
);

