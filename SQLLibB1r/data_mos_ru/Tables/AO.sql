CREATE TABLE [data_mos_ru].[AO] (
    [id]               INT               IDENTITY (1, 1) NOT NULL,
    [global_id]        INT               NOT NULL,
    [AdmArea]          NVARCHAR (4000)   NULL,
    [system_object_id] NVARCHAR (4000)   NULL,
    [UNOM]             INT               NULL,
    [KAD_RN]           INT               NULL,
    [KAD_KV]           INT               NULL,
    [KAD_ZU]           INT               NULL,
    [DMT]              NVARCHAR (4000)   NULL,
    [KRT]              NVARCHAR (4000)   NULL,
    [VLD]              NVARCHAR (4000)   NULL,
    [STRT]             NVARCHAR (4000)   NULL,
    [SOOR]             NVARCHAR (4000)   NULL,
    [TDOC]             NVARCHAR (4000)   NULL,
    [NDOC]             NVARCHAR (4000)   NULL,
    [DDOC]             DATETIME          NULL,
    [NREG]             INT               NULL,
    [DREG]             DATETIME          NULL,
    [VYVAD]            NVARCHAR (4000)   NULL,
    [ADRES]            NVARCHAR (4000)   NULL,
    [geoData]          [sys].[geography] NULL,
    CONSTRAINT [PK_data_mos_ru.AO] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20180227-194719]
    ON [data_mos_ru].[AO]([id] ASC, [global_id] ASC, [ADRES] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20180228-084121]
    ON [data_mos_ru].[AO]([global_id] ASC, [id] ASC)
    INCLUDE([AdmArea], [system_object_id], [UNOM], [KAD_RN], [KAD_KV], [KAD_ZU], [DMT], [KRT], [VLD], [STRT], [SOOR], [TDOC], [NDOC], [DDOC], [NREG], [DREG], [VYVAD], [ADRES], [geoData]);


GO
CREATE NONCLUSTERED INDEX [_dta_index_AO_5_1323359979__K2_9_10_11_12_13_20]
    ON [data_mos_ru].[AO]([global_id] ASC)
    INCLUDE([DMT], [KRT], [VLD], [STRT], [SOOR], [ADRES]);

