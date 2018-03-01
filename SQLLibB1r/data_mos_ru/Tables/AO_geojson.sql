CREATE TABLE [data_mos_ru].[AO_geojson] (
    [ID]       INT               IDENTITY (1, 1) NOT NULL,
    [NAME]     NVARCHAR (150)    NULL,
    [OKATO]    NVARCHAR (150)    NULL,
    [ABBREV]   NVARCHAR (150)    NULL,
    [geometry] [sys].[geography] NULL,
    CONSTRAINT [PK_dbo.AO_geojson] PRIMARY KEY CLUSTERED ([ID] ASC)
);

