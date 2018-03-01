CREATE TABLE [dbo].[adress] (
    [id]                 INT                IDENTITY (1, 1) NOT NULL,
    [#]                  INT                NULL,
    [okrug]              NVARCHAR (255)     NULL,
    [ulitsa]             NVARCHAR (255)     NULL,
    [nazvanie_ulitsi]    NVARCHAR (255)     NULL,
    [ulitsa_id]          INT                NULL,
    [ulitsa_unid]        UNIQUEIDENTIFIER   NULL,
    [polniy_adres]       NVARCHAR (255)     NULL,
    [dom]                NVARCHAR (255)     NULL,
    [dom_type]           INT                NULL,
    [korpus]             NVARCHAR (255)     NULL,
    [stroenie]           NVARCHAR (255)     NULL,
    [stroenie_type]      INT                NULL,
    [ulitsa_only]        NVARCHAR (255)     NULL,
    [type_full]          NVARCHAR (255)     NULL,
    [ulitsa_num]         NVARCHAR (255)     NULL,
    [propis]             NVARCHAR (255)     NULL,
    [ulitsa_sokr]        NVARCHAR (255)     NULL,
    [kod_adresa]         NVARCHAR (255)     NULL,
    [bti_for_find]       NVARCHAR (255)     NULL,
    [bti_adres]          NVARCHAR (255)     NULL,
    [bti_naznachenie]    NVARCHAR (255)     NULL,
    [bti_god_postroyki]  NVARCHAR (50)      NULL,
    [bti_etaji]          NVARCHAR (50)      NULL,
    [bti_alt_adres]      NVARCHAR (2000)    NULL,
    [adres_bti_proverka] NVARCHAR (255)     NULL,
    [vneseno]            DATETIMEOFFSET (7) CONSTRAINT [DF_adress_vneseno] DEFAULT (getutcdate()) NULL,
    [ts]                 ROWVERSION         NOT NULL,
    [Prim]               NVARCHAR (4000)    NULL,
    [AdminArea_ID]       UNIQUEIDENTIFIER   NULL,
    [nas_punkt_id]       UNIQUEIDENTIFIER   NULL,
    [House_ID]           UNIQUEIDENTIFIER   NULL,
    [okrug_id]           UNIQUEIDENTIFIER   NULL,
    [global_id]          INT                NULL,
    CONSTRAINT [PK_adress] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20180227-170620]
    ON [dbo].[adress]([okrug_id] ASC)
    INCLUDE([id], [#], [okrug], [ulitsa], [nazvanie_ulitsi], [ulitsa_id], [ulitsa_unid], [polniy_adres], [dom], [dom_type], [korpus], [stroenie], [stroenie_type], [ulitsa_only], [type_full], [ulitsa_num], [propis], [ulitsa_sokr], [kod_adresa], [bti_for_find], [bti_adres], [bti_naznachenie], [bti_god_postroyki], [bti_etaji], [bti_alt_adres], [adres_bti_proverka], [vneseno], [ts], [Prim], [AdminArea_ID], [nas_punkt_id], [House_ID]);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20180227-170708]
    ON [dbo].[adress]([House_ID] ASC)
    INCLUDE([id], [#], [okrug], [ulitsa], [nazvanie_ulitsi], [ulitsa_id], [ulitsa_unid], [polniy_adres], [dom], [dom_type], [korpus], [stroenie], [stroenie_type], [ulitsa_only], [type_full], [ulitsa_num], [propis], [ulitsa_sokr], [kod_adresa], [bti_for_find], [bti_adres], [bti_naznachenie], [bti_god_postroyki], [bti_etaji], [bti_alt_adres], [adres_bti_proverka], [vneseno], [ts], [Prim], [AdminArea_ID], [nas_punkt_id], [okrug_id]);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20180227-170736]
    ON [dbo].[adress]([nas_punkt_id] ASC);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20180227-170801]
    ON [dbo].[adress]([AdminArea_ID] ASC)
    INCLUDE([id], [#], [ulitsa], [nazvanie_ulitsi], [ulitsa_id], [ulitsa_unid], [polniy_adres], [dom], [dom_type], [korpus], [stroenie], [stroenie_type], [ulitsa_only], [type_full], [ulitsa_num], [propis], [ulitsa_sokr], [kod_adresa], [bti_for_find], [bti_adres], [bti_naznachenie], [bti_god_postroyki], [bti_etaji], [bti_alt_adres], [adres_bti_proverka], [vneseno], [ts], [Prim], [nas_punkt_id], [House_ID], [okrug_id]);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20180228-130458]
    ON [dbo].[adress]([dom_type] ASC, [id] ASC, [nazvanie_ulitsi] ASC, [dom] ASC, [korpus] ASC, [stroenie] ASC, [stroenie_type] ASC, [type_full] ASC, [ulitsa_num] ASC, [propis] ASC, [ulitsa_sokr] ASC, [AdminArea_ID] ASC, [nas_punkt_id] ASC, [House_ID] ASC, [okrug_id] ASC, [global_id] ASC);


GO
CREATE NONCLUSTERED INDEX [_dta_index_adress_5_1884741967__K16_K13_K1_8_12_14_15_18_19_20_21_33_34_35_36_37]
    ON [dbo].[adress]([stroenie_type] ASC, [dom_type] ASC, [id] ASC)
    INCLUDE([nazvanie_ulitsi], [dom], [korpus], [stroenie], [type_full], [ulitsa_num], [propis], [ulitsa_sokr], [AdminArea_ID], [nas_punkt_id], [House_ID], [okrug_id], [global_id]);


GO
CREATE NONCLUSTERED INDEX [_dta_index_adress_5_1884741967__K1_K16_K13_K12_14_15_35]
    ON [dbo].[adress]([id] ASC, [stroenie_type] ASC, [dom_type] ASC, [dom] ASC)
    INCLUDE([korpus], [stroenie], [House_ID]);


GO
CREATE STATISTICS [_dta_stat_1884741967_1_16_13]
    ON [dbo].[adress]([id], [stroenie_type], [dom_type]);


GO
CREATE STATISTICS [_dta_stat_1884741967_12_1_16]
    ON [dbo].[adress]([dom], [id], [stroenie_type]);

