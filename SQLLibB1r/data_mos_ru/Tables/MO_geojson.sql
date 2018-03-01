CREATE TABLE [data_mos_ru].[MO_geojson] (
    [ID]        INT               IDENTITY (1, 1) NOT NULL,
    [NAME]      NVARCHAR (150)    NULL,
    [OKATO]     NVARCHAR (150)    NULL,
    [OKTMO]     NVARCHAR (150)    NULL,
    [NAME_AO]   NVARCHAR (150)    NULL,
    [OKATO_AO]  NVARCHAR (150)    NULL,
    [TYPE_MO]   NVARCHAR (150)    NULL,
    [ABBREV_AO] NVARCHAR (150)    NULL,
    [geometry]  [sys].[geography] NULL,
    CONSTRAINT [PK_data_mos_ru.MO_geojson] PRIMARY KEY CLUSTERED ([ID] ASC)
);

