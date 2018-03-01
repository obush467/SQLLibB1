CREATE TABLE [data_mos_ru].[MO_Type] (
    [Id]        UNIQUEIDENTIFIER CONSTRAINT [DF_MO_Type_Id] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [Number]    INT              NULL,
    [global_id] INT              DEFAULT ((0)) NOT NULL,
    [MO_Type_C] NVARCHAR (4000)  NULL,
    [MO_Type_N] NVARCHAR (4000)  NULL,
    CONSTRAINT [PK_data_mos_ru.MO_Type] PRIMARY KEY CLUSTERED ([Id] ASC)
);

