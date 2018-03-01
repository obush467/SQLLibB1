CREATE TABLE [data_mos_ru].[UM] (
    [id]               INT             IDENTITY (1, 1) NOT NULL,
    [global_id]        INT             NOT NULL,
    [UM_CODE]          NVARCHAR (4000) NULL,
    [system_object_id] NVARCHAR (4000) NULL,
    [UM_NAMEF]         NVARCHAR (4000) NULL,
    [UM_NAMES]         NVARCHAR (4000) NULL,
    [UM_TRANS]         NVARCHAR (4000) NULL,
    [UM_TYPE]          NVARCHAR (4000) NULL,
    [UM_TM]            NVARCHAR (4000) NULL,
    [UM_TE]            NVARCHAR (4000) NULL,
    [UM_KLADR]         NVARCHAR (4000) NULL,
    [geoData]          NVARCHAR (4000) NULL,
    CONSTRAINT [PK_data_mos_ru.UM] PRIMARY KEY CLUSTERED ([id] ASC)
);

