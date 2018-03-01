CREATE TABLE [data_mos_ru].[MO] (
    [id]               INT             IDENTITY (1, 1) NOT NULL,
    [global_id]        INT             NOT NULL,
    [system_object_id] NVARCHAR (MAX)  NULL,
    [MO_Code]          NVARCHAR (4000) NULL,
    [MO_Name]          NVARCHAR (4000) NULL,
    [MO_Trans]         NVARCHAR (4000) NULL,
    [MO_Type]          NVARCHAR (4000) NULL,
    [MO_TE]            NVARCHAR (4000) NULL,
    [MO_OKTMO]         NVARCHAR (4000) NULL,
    [geoData]          NVARCHAR (4000) NULL,
    CONSTRAINT [PK_data_mos_ru.MO] PRIMARY KEY CLUSTERED ([id] ASC)
);

