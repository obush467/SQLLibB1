CREATE TABLE [data_mos_ru].[OMK002_2013_2] (
    [Id]        UNIQUEIDENTIFIER CONSTRAINT [DF_OMK002_2013_2_Id] DEFAULT (newid()) NOT NULL,
    [global_id] INT              DEFAULT ((0)) NOT NULL,
    [Kod]       NVARCHAR (4000)  NULL,
    [Name]      NVARCHAR (4000)  NULL,
    CONSTRAINT [PK_data_mos_ru.OMK002_2013_2] PRIMARY KEY CLUSTERED ([Id] ASC)
);

