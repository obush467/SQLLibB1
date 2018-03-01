CREATE TABLE [dbo].[reestr_t] (
    [kod]                         INT               IDENTITY (1, 1) NOT NULL,
    [num]                         INT               NULL,
    [project]                     VARCHAR (50)      NULL,
    [kategoriya]                  VARCHAR (50)      NULL,
    [unikalniy]                   VARCHAR (50)      NULL,
    [razmerdu]                    VARCHAR (50)      NULL,
    [ploshaddu]                   VARCHAR (50)      NULL,
    [ulitsadu]                    VARCHAR (50)      NULL,
    [domdu_ilion]                 VARCHAR (50)      NULL,
    [domdu]                       VARCHAR (50)      NULL,
    [montaj]                      DATE              NULL,
    [montaj_plan]                 DATE              NULL,
    [podradchik_id]               UNIQUEIDENTIFIER  CONSTRAINT [DF_reestr_t_podradchik_id] DEFAULT ('C6B4A59A-49FB-425A-99E8-9252674F5924') NOT NULL,
    [subpodradchik_id]            UNIQUEIDENTIFIER  CONSTRAINT [DF_reestr_t_subpodradchik_id] DEFAULT ('CCE60512-09F7-4E8B-B75A-FEC18CE2DAE4') NOT NULL,
    [date1]                       DATE              NULL,
    [pic1]                        VARCHAR (50)      NULL,
    [checkpic1]                   NCHAR (10)        NULL,
    [pic2]                        VARCHAR (50)      NULL,
    [pic3]                        VARCHAR (50)      NULL,
    [checkpic3]                   VARCHAR (10)      NULL,
    [egko_map_txt]                VARCHAR (50)      NULL,
    [proverka_karti]              VARCHAR (50)      NULL,
    [fio]                         VARCHAR (50)      NULL,
    [doljnost]                    VARCHAR (50)      NULL,
    [organization_id]             UNIQUEIDENTIFIER  CONSTRAINT [DF_reestr_t_organization_id] DEFAULT ('4A60A83D-FFD2-4A0F-8762-7CEA80FF5C79') NOT NULL,
    [history]                     VARCHAR (2000)    NULL,
    [data_osmotra]                DATE              NULL,
    [data_osmotra_fio]            VARCHAR (50)      NULL,
    [data_osmotra_doljnost]       VARCHAR (50)      NULL,
    [fact_ustanovki]              VARCHAR (50)      CONSTRAINT [DF_reestr_t_fact_ustanovki] DEFAULT ('1') NULL,
    [proverka_podsveta_foto]      VARCHAR (50)      NULL,
    [data_proverka_podsveta]      DATE              NULL,
    [proverka_podsveta_sost]      VARCHAR (50)      NULL,
    [proverka_podsveta_dojnost]   VARCHAR (50)      NULL,
    [proverka_podsveta_fio]       VARCHAR (50)      NULL,
    [egko_fio]                    VARCHAR (50)      NULL,
    [egko_doljnost]               VARCHAR (50)      NULL,
    [egko_data]                   DATE              NULL,
    [tip_neobkhodimix_rabot]      VARCHAR (50)      NULL,
    [nesootv_tipa]                VARCHAR (50)      NULL,
    [nesootv_kategorii]           VARCHAR (50)      NULL,
    [nedemontirovan_stariy]       VARCHAR (50)      NULL,
    [vvost_fasad]                 VARCHAR (50)      NULL,
    [ne_ustanovlen]               VARCHAR (50)      NULL,
    [zamechaniy_net]              VARCHAR (50)      NULL,
    [status]                      VARCHAR (50)      NULL,
    [status_fio]                  VARCHAR (50)      NULL,
    [data_vvoda_akt]              DATE              NULL,
    [fio_vvoda_akt]               VARCHAR (50)      NULL,
    [doljnost_vvoda_akt]          VARCHAR (50)      NULL,
    [data_ekpertnogo_zakl]        DATE              NULL,
    [nomer_ekpertnogo_zakl]       VARCHAR (50)      NULL,
    [naimenov_ekspert_org]        VARCHAR (50)      NULL,
    [fio_vneseniya]               VARCHAR (50)      NULL,
    [naimenov_upr_org]            VARCHAR (50)      NULL,
    [istochnik_dannich]           VARCHAR (50)      NULL,
    [fio_vneseniya1]              VARCHAR (50)      NULL,
    [oprosniy_list]               VARCHAR (50)      NULL,
    [zakluchenie_du]              VARCHAR (1000)    NULL,
    [zakluchenie_du1]             VARCHAR (1000)    NULL,
    [qr]                          VARCHAR (50)      NULL,
    [qrpath]                      VARCHAR (50)      NULL,
    [memo]                        VARCHAR (1000)    NULL,
    [v_plane_key]                 INT               CONSTRAINT [DF_reestr_t_v_plane_key] DEFAULT ((1)) NOT NULL,
    [osmotren_key]                INT               CONSTRAINT [DF_reestr_t_osmotren_key] DEFAULT ((0)) NOT NULL,
    [isklucheno_key]              INT               CONSTRAINT [DF_reestr_t_isklucheno_key] DEFAULT ((0)) NOT NULL,
    [isklucheno_memo]             VARCHAR (1000)    NULL,
    [isklucheno_pic]              NCHAR (10)        NULL,
    [isklucheno_date]             DATE              NULL,
    [zamechaniya_key]             INT               CONSTRAINT [DF_reestr_t_zamechaniya_key] DEFAULT ((0)) NULL,
    [zamechaniya_nashi_key]       INT               NULL,
    [zamechaniya_nashi_text]      VARCHAR (2000)    NULL,
    [zamechaniya_nashi_text_boss] VARCHAR (2000)    NULL,
    [zamechaniya_nashi_date]      DATE              NULL,
    [zamechaniya_nashi_date_ustr] DATE              NULL,
    [akt_v_ogs_key]               INT               CONSTRAINT [DF_reestr_t_akt_v_ogs_key] DEFAULT ((0)) NOT NULL,
    [akt_podpisan_key]            INT               CONSTRAINT [DF_reestr_t_akt_podpisan_key] DEFAULT ((0)) NOT NULL,
    [ustraneno_key]               INT               CONSTRAINT [DF_reestr_t_ustraneno_key] DEFAULT ((0)) NOT NULL,
    [new_key]                     INT               CONSTRAINT [DF_reestr_t_new_key] DEFAULT ((0)) NULL,
    [dlinafasada_key]             INT               NULL,
    [piktogrammi_key]             INT               NULL,
    [elektrpodkl_key]             INT               NULL,
    [vse_ok_key]                  INT               CONSTRAINT [DF_reestr_t_vse_ok_key] DEFAULT ((0)) NOT NULL,
    [proverka_timer]              VARCHAR (50)      NULL,
    [koordinati_timer]            VARCHAR (50)      NULL,
    [v_plane_v_rabote]            VARCHAR (1)       CONSTRAINT [DF_reestr_t_v_plane_v_rabote] DEFAULT ((0)) NOT NULL,
    [prinato_status]              INT               NULL,
    [prinato_data]                DATE              NULL,
    [prinato_memo]                VARCHAR (500)     NULL,
    [zakluchenie_du_history]      VARCHAR (2000)    NULL,
    [dom_marshrut]                INT               NULL,
    [data_v_proverku]             DATE              NULL,
    [data_ustr_zam]               DATE              NULL,
    [adres_bti_proverka]          VARCHAR (1000)    NULL,
    [fasad_summa]                 INT               NULL,
    [nalichie_summa]              INT               NULL,
    [drugie_summa]                INT               NULL,
    [montaj_summa]                INT               NULL,
    [electrika_summa]             INT               NULL,
    [tipdu_summa]                 INT               NULL,
    [kategoriya_summa]            INT               NULL,
    [priznak]                     VARCHAR (50)      NULL,
    [domdu2]                      VARCHAR (50)      NULL,
    [log_file]                    VARCHAR (2000)    NULL,
    [kartograf_zam]               VARCHAR (1000)    NULL,
    [wgs84]                       [sys].[geography] NULL,
    [inserted]                    DATETIME          CONSTRAINT [DF_reestr_inserted] DEFAULT (getdate()) NULL,
    [tipdu_kod]                   INT               NOT NULL,
    [tipdumatc_kod]               INT               CONSTRAINT [DF_reestr_t_tipdumatc_kod] DEFAULT ((16)) NOT NULL,
    [adress_id]                   INT               NOT NULL,
    [EGKO]                        [sys].[geometry]  NULL,
    [raspayachnaya_korobka_b]     INT               NOT NULL,
    [vospriyatie_b]               INT               NOT NULL,
    [dlina_fasada_b]              INT               NOT NULL,
    [koldu_b]                     INT               NOT NULL,
    [piktogrammi_b]               INT               NOT NULL,
    [nalichie_podkl_b]            INT               NOT NULL,
    [vozmojnost_podkl_b]          INT               NOT NULL,
    [demontaj_b]                  INT               NOT NULL,
    [ust_na_linii_b]              INT               NOT NULL,
    [k_priemke_b]                 INT               NOT NULL,
    [vost_fasada_b]               INT               NOT NULL,
    [sootvetstvie_tipa_b]         INT               NOT NULL,
    [sootv_bti_b]                 INT               NOT NULL,
    [wgs84_leg]                   [sys].[geography] NULL,
    [sootv_bti]                   VARCHAR (50)      NULL,
    [raspayachnaya_korobka]       VARCHAR (50)      NULL,
    [vospriyatie]                 VARCHAR (50)      NULL,
    [dlina_fasada]                VARCHAR (50)      NULL,
    [koldu]                       VARCHAR (50)      NULL,
    [piktogrammi]                 VARCHAR (50)      NULL,
    [nalichie_podkl]              VARCHAR (50)      NULL,
    [vozmojnost_podkl]            VARCHAR (50)      NULL,
    [demontaj]                    VARCHAR (50)      NULL,
    [ust_na_linii]                VARCHAR (50)      NULL,
    [k_priemke]                   VARCHAR (50)      NULL,
    [vost_fasada]                 VARCHAR (50)      NULL,
    [sootvetstvie_tipa]           VARCHAR (50)      NULL,
    CONSTRAINT [PK_reestr_t] PRIMARY KEY CLUSTERED ([kod] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20170824-161017]
    ON [dbo].[reestr_t]([kod] ASC, [unikalniy] ASC, [isklucheno_key] ASC, [tipdu_kod] ASC, [tipdumatc_kod] ASC, [adress_id] ASC, [podradchik_id] ASC, [subpodradchik_id] ASC, [organization_id] ASC, [raspayachnaya_korobka_b] ASC, [vospriyatie_b] ASC, [dlina_fasada_b] ASC, [koldu_b] ASC, [piktogrammi_b] ASC, [nalichie_podkl_b] ASC, [vozmojnost_podkl_b] ASC)
    INCLUDE([num], [project], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj_plan], [pic1], [checkpic1], [pic2], [kategoriya], [checkpic3], [razmerdu], [proverka_karti], [fio], [doljnost], [montaj], [data_osmotra], [date1], [data_osmotra_doljnost], [fact_ustanovki], [proverka_podsveta_foto], [pic3], [proverka_podsveta_sost], [egko_map_txt], [proverka_podsveta_fio], [egko_fio], [egko_doljnost], [history], [tip_neobkhodimix_rabot], [data_osmotra_fio], [nesootv_kategorii], [nedemontirovan_stariy], [vvost_fasad], [data_proverka_podsveta], [zamechaniy_net], [proverka_podsveta_dojnost], [status_fio], [data_vvoda_akt], [fio_vvoda_akt], [egko_data], [data_ekpertnogo_zakl], [nesootv_tipa], [naimenov_ekspert_org], [fio_vneseniya], [naimenov_upr_org], [ne_ustanovlen], [fio_vneseniya1], [status], [zakluchenie_du], [zakluchenie_du1], [qr], [doljnost_vvoda_akt], [memo], [nomer_ekpertnogo_zakl], [osmotren_key], [isklucheno_memo], [isklucheno_pic], [istochnik_dannich], [zamechaniya_key], [oprosniy_list], [zamechaniya_nashi_text], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [qrpath], [akt_v_ogs_key], [v_plane_key], [ustraneno_key], [new_key], [dlinafasada_key], [isklucheno_date], [elektrpodkl_key], [zamechaniya_nashi_key], [proverka_timer], [koordinati_timer], [v_plane_v_rabote], [zamechaniya_nashi_date_ustr], [prinato_data], [akt_podpisan_key], [zakluchenie_du_history], [dom_marshrut], [data_v_proverku], [piktogrammi_key], [adres_bti_proverka], [vse_ok_key], [nalichie_summa], [drugie_summa], [montaj_summa], [prinato_status], [tipdu_summa], [prinato_memo], [priznak], [domdu2], [log_file], [data_ustr_zam], [wgs84], [fasad_summa], [EGKO], [demontaj_b], [ust_na_linii_b], [electrika_summa], [k_priemke_b], [kategoriya_summa], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [kartograf_zam], [inserted]);


GO
CREATE UNIQUE NONCLUSTERED INDEX [reestr_t_1]
    ON [dbo].[reestr_t]([kod] ASC)
    INCLUDE([num], [project], [kategoriya], [unikalniy], [tipdumatc_kod], [pic1], [proverka_karti], [pic2], [doljnost], [domdu_ilion], [domdu], [montaj], [data_osmotra_doljnost], [checkpic1], [pic3], [razmerdu], [ploshaddu], [ulitsadu], [proverka_podsveta_fio], [fio], [history], [montaj_plan], [date1], [data_osmotra_fio], [nesootv_kategorii], [fact_ustanovki], [data_proverka_podsveta], [checkpic3], [egko_map_txt], [proverka_podsveta_dojnost], [status_fio], [EGKO], [egko_doljnost], [data_osmotra], [tip_neobkhodimix_rabot], [nesootv_tipa], [naimenov_ekspert_org], [proverka_podsveta_foto], [vvost_fasad], [proverka_podsveta_sost], [zamechaniy_net], [status], [zakluchenie_du], [egko_fio], [fio_vvoda_akt], [egko_data], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [osmotren_key], [nedemontirovan_stariy], [naimenov_upr_org], [ne_ustanovlen], [fio_vneseniya1], [oprosniy_list], [zamechaniya_nashi_key], [data_vvoda_akt], [qr], [doljnost_vvoda_akt], [memo], [v_plane_key], [akt_podpisan_key], [fio_vneseniya], [isklucheno_memo], [istochnik_dannich], [isklucheno_date], [zamechaniya_key], [vse_ok_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [qrpath], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [prinato_memo], [isklucheno_key], [new_key], [isklucheno_pic], [piktogrammi_key], [elektrpodkl_key], [nalichie_summa], [zamechaniya_nashi_text], [koordinati_timer], [zamechaniya_nashi_date], [prinato_status], [prinato_data], [priznak], [ustraneno_key], [dom_marshrut], [dlinafasada_key], [data_ustr_zam], [fasad_summa], [tipdu_kod], [proverka_timer], [montaj_summa], [v_plane_v_rabote], [tipdu_summa], [kategoriya_summa], [piktogrammi_b], [zakluchenie_du_history], [log_file], [data_v_proverku], [wgs84], [inserted], [vost_fasada_b], [drugie_summa], [raspayachnaya_korobka_b], [electrika_summa], [dlina_fasada_b], [koldu_b], [wgs84_leg], [domdu2], [vozmojnost_podkl_b], [kartograf_zam], [ust_na_linii_b], [k_priemke_b], [nalichie_podkl_b], [adress_id], [demontaj_b], [vospriyatie_b], [sootvetstvie_tipa_b], [sootv_bti_b]);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20170824-161708]
    ON [dbo].[reestr_t]([kod] ASC, [isklucheno_key] ASC, [adress_id] ASC)
    INCLUDE([num], [project], [kategoriya], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj_plan], [subpodradchik_id], [date1], [pic1], [unikalniy], [pic2], [razmerdu], [checkpic3], [egko_map_txt], [proverka_karti], [montaj], [doljnost], [podradchik_id], [history], [data_osmotra], [data_osmotra_fio], [checkpic1], [fact_ustanovki], [pic3], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [fio], [egko_fio], [organization_id], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [data_osmotra_doljnost], [nedemontirovan_stariy], [proverka_podsveta_foto], [ne_ustanovlen], [zamechaniy_net], [status], [proverka_podsveta_fio], [data_vvoda_akt], [egko_doljnost], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [nesootv_kategorii], [fio_vneseniya], [vvost_fasad], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [status_fio], [zakluchenie_du1], [fio_vvoda_akt], [qrpath], [memo], [v_plane_key], [naimenov_ekspert_org], [isklucheno_memo], [naimenov_upr_org], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du], [zamechaniya_nashi_text_boss], [qr], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [osmotren_key], [new_key], [isklucheno_pic], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [koordinati_timer], [zamechaniya_nashi_date], [prinato_status], [prinato_data], [prinato_memo], [ustraneno_key], [dom_marshrut], [dlinafasada_key], [data_ustr_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [drugie_summa], [v_plane_v_rabote], [electrika_summa], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [domdu2], [data_v_proverku], [kartograf_zam], [wgs84], [inserted], [nalichie_summa], [tipdumatc_kod], [montaj_summa], [raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [priznak], [piktogrammi_b], [log_file], [vozmojnost_podkl_b], [demontaj_b], [ust_na_linii_b], [tipdu_kod], [k_priemke_b], [EGKO], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [koldu_b], [nalichie_podkl_b]);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20170824-162547]
    ON [dbo].[reestr_t]([kod] ASC, [date1] ASC)
    INCLUDE([num], [project], [kategoriya], [unikalniy], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id], [pic1], [checkpic1], [pic2], [razmerdu], [checkpic3], [ploshaddu], [proverka_karti], [fio], [doljnost], [montaj_plan], [history], [subpodradchik_id], [data_osmotra_fio], [data_osmotra_doljnost], [fact_ustanovki], [pic3], [data_proverka_podsveta], [egko_map_txt], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [egko_fio], [organization_id], [egko_data], [data_osmotra], [nesootv_tipa], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [ne_ustanovlen], [proverka_podsveta_sost], [status], [status_fio], [data_vvoda_akt], [egko_doljnost], [doljnost_vvoda_akt], [tip_neobkhodimix_rabot], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [fio_vneseniya], [vvost_fasad], [istochnik_dannich], [zamechaniy_net], [oprosniy_list], [zakluchenie_du], [zakluchenie_du1], [fio_vvoda_akt], [qrpath], [data_ekpertnogo_zakl], [v_plane_key], [osmotren_key], [isklucheno_key], [naimenov_upr_org], [isklucheno_pic], [fio_vneseniya1], [zamechaniya_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [qr], [zamechaniya_nashi_date], [memo], [akt_v_ogs_key], [akt_podpisan_key], [ustraneno_key], [isklucheno_memo], [dlinafasada_key], [isklucheno_date], [elektrpodkl_key], [vse_ok_key], [proverka_timer], [zamechaniya_nashi_text_boss], [v_plane_v_rabote], [zamechaniya_nashi_date_ustr], [prinato_data], [prinato_memo], [zakluchenie_du_history], [new_key], [data_v_proverku], [piktogrammi_key], [adres_bti_proverka], [fasad_summa], [nalichie_summa], [koordinati_timer], [montaj_summa], [prinato_status], [tipdu_summa], [kategoriya_summa], [priznak], [dom_marshrut], [log_file], [data_ustr_zam], [wgs84], [inserted], [tipdu_kod], [drugie_summa], [adress_id], [electrika_summa], [raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [domdu2], [piktogrammi_b], [kartograf_zam], [vozmojnost_podkl_b], [demontaj_b], [ust_na_linii_b], [tipdumatc_kod], [k_priemke_b], [EGKO], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [koldu_b], [nalichie_podkl_b]);


GO
CREATE NONCLUSTERED INDEX [adress_id]
    ON [dbo].[reestr_t]([adress_id] ASC)
    INCLUDE([kod], [num], [project], [kategoriya], [unikalniy], [domdu], [montaj], [checkpic1], [pic2], [razmerdu], [ploshaddu], [ulitsadu], [domdu_ilion], [fio], [doljnost], [montaj_plan], [date1], [pic1], [data_osmotra_doljnost], [fact_ustanovki], [pic3], [checkpic3], [egko_map_txt], [proverka_karti], [proverka_podsveta_fio], [egko_fio], [history], [data_osmotra], [data_osmotra_fio], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [status_fio], [data_vvoda_akt], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [naimenov_ekspert_org], [fio_vneseniya], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [zakluchenie_du], [zakluchenie_du1], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [osmotren_key], [isklucheno_key], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [qr], [qrpath], [memo], [v_plane_key], [akt_podpisan_key], [ustraneno_key], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [vse_ok_key], [proverka_timer], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [prinato_memo], [zakluchenie_du_history], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [nalichie_summa], [drugie_summa], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [priznak], [domdu2], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [fasad_summa], [tipdumatc_kod], [EGKO], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [piktogrammi_b], [nalichie_podkl_b], [log_file], [kartograf_zam], [wgs84], [tipdu_kod], [vost_fasada_b], [sootvetstvie_tipa_b], [raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [koldu_b], [sootv_bti_b], [wgs84_leg], [vozmojnost_podkl_b], [demontaj_b], [ust_na_linii_b], [k_priemke_b]);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20170824-164346]
    ON [dbo].[reestr_t]([tipdu_kod] ASC, [tipdumatc_kod] ASC, [kod] ASC)
    INCLUDE([num], [project], [kategoriya], [date1], [egko_map_txt], [checkpic1], [fio], [ulitsadu], [domdu_ilion], [domdu], [data_osmotra_fio], [pic1], [pic2], [unikalniy], [razmerdu], [ploshaddu], [proverka_podsveta_dojnost], [proverka_karti], [doljnost], [montaj], [montaj_plan], [data_osmotra], [nesootv_kategorii], [data_osmotra_doljnost], [proverka_podsveta_foto], [pic3], [checkpic3], [proverka_podsveta_sost], [status_fio], [proverka_podsveta_fio], [egko_doljnost], [history], [tip_neobkhodimix_rabot], [nesootv_tipa], [naimenov_ekspert_org], [fact_ustanovki], [vvost_fasad], [data_proverka_podsveta], [zamechaniy_net], [status], [zakluchenie_du], [egko_fio], [fio_vvoda_akt], [egko_data], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [osmotren_key], [nedemontirovan_stariy], [naimenov_upr_org], [ne_ustanovlen], [fio_vneseniya1], [oprosniy_list], [zamechaniya_nashi_key], [data_vvoda_akt], [qr], [doljnost_vvoda_akt], [memo], [v_plane_key], [akt_podpisan_key], [fio_vneseniya], [isklucheno_memo], [istochnik_dannich], [isklucheno_date], [zamechaniya_key], [vse_ok_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [qrpath], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [prinato_memo], [isklucheno_key], [new_key], [isklucheno_pic], [piktogrammi_key], [elektrpodkl_key], [nalichie_summa], [zamechaniya_nashi_text], [koordinati_timer], [zamechaniya_nashi_date], [prinato_status], [prinato_data], [priznak], [ustraneno_key], [dom_marshrut], [dlinafasada_key], [data_ustr_zam], [fasad_summa], [adress_id], [proverka_timer], [montaj_summa], [v_plane_v_rabote], [tipdu_summa], [kategoriya_summa], [piktogrammi_b], [zakluchenie_du_history], [log_file], [data_v_proverku], [wgs84], [inserted], [vost_fasada_b], [drugie_summa], [raspayachnaya_korobka_b], [electrika_summa], [dlina_fasada_b], [koldu_b], [wgs84_leg], [domdu2], [vozmojnost_podkl_b], [kartograf_zam], [ust_na_linii_b], [k_priemke_b], [nalichie_podkl_b], [EGKO], [demontaj_b], [vospriyatie_b], [sootvetstvie_tipa_b], [sootv_bti_b]);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20170824-164440]
    ON [dbo].[reestr_t]([raspayachnaya_korobka_b] ASC, [vospriyatie_b] ASC, [dlina_fasada_b] ASC, [koldu_b] ASC, [piktogrammi_b] ASC, [nalichie_podkl_b] ASC, [vozmojnost_podkl_b] ASC, [demontaj_b] ASC, [ust_na_linii_b] ASC, [k_priemke_b] ASC, [vost_fasada_b] ASC, [sootvetstvie_tipa_b] ASC, [sootv_bti_b] ASC, [kod] ASC)
    INCLUDE([pic2], [proverka_karti], [fio], [doljnost], [unikalniy], [pic1], [checkpic1], [data_osmotra_doljnost], [fact_ustanovki], [pic3], [num], [project], [kategoriya], [proverka_podsveta_fio], [egko_fio], [history], [domdu_ilion], [domdu], [montaj], [nedemontirovan_stariy], [proverka_podsveta_foto], [data_proverka_podsveta], [razmerdu], [ploshaddu], [ulitsadu], [data_vvoda_akt], [egko_doljnost], [egko_data], [montaj_plan], [date1], [data_osmotra_fio], [fio_vneseniya], [vvost_fasad], [ne_ustanovlen], [checkpic3], [egko_map_txt], [proverka_podsveta_dojnost], [zakluchenie_du1], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_osmotra], [nesootv_tipa], [nesootv_kategorii], [isklucheno_key], [naimenov_upr_org], [istochnik_dannich], [proverka_podsveta_sost], [status], [status_fio], [zamechaniya_nashi_text], [qr], [qrpath], [tip_neobkhodimix_rabot], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [ustraneno_key], [isklucheno_memo], [isklucheno_pic], [zamechaniy_net], [oprosniy_list], [zakluchenie_du], [proverka_timer], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [data_ekpertnogo_zakl], [v_plane_key], [osmotren_key], [zakluchenie_du_history], [new_key], [dlinafasada_key], [fio_vneseniya1], [zamechaniya_key], [zamechaniya_nashi_key], [drugie_summa], [koordinati_timer], [v_plane_v_rabote], [memo], [akt_v_ogs_key], [akt_podpisan_key], [domdu2], [dom_marshrut], [data_v_proverku], [isklucheno_date], [elektrpodkl_key], [vse_ok_key], [tipdumatc_kod], [montaj_summa], [electrika_summa], [zamechaniya_nashi_date_ustr], [prinato_data], [prinato_memo], [wgs84_leg], [log_file], [kartograf_zam], [piktogrammi_key], [fasad_summa], [nalichie_summa], [wgs84], [tipdu_summa], [adress_id], [prinato_status], [kategoriya_summa], [priznak], [EGKO], [data_ustr_zam], [inserted], [tipdu_kod]);


GO
CREATE NONCLUSTERED INDEX [adress_id2]
    ON [dbo].[reestr_t]([kod] ASC, [adress_id] ASC, [tipdu_kod] ASC, [tipdumatc_kod] ASC)
    INCLUDE([num], [project], [ulitsadu], [domdu_ilion], [date1], [pic1], [kategoriya], [unikalniy], [razmerdu], [ploshaddu], [egko_map_txt], [proverka_karti], [domdu], [montaj], [montaj_plan], [data_osmotra], [data_osmotra_fio], [checkpic1], [pic2], [pic3], [checkpic3], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [fio], [doljnost], [history], [tip_neobkhodimix_rabot], [nesootv_tipa], [data_osmotra_doljnost], [fact_ustanovki], [proverka_podsveta_foto], [data_proverka_podsveta], [zamechaniy_net], [status], [proverka_podsveta_fio], [egko_fio], [egko_doljnost], [egko_data], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [nesootv_kategorii], [nedemontirovan_stariy], [vvost_fasad], [ne_ustanovlen], [fio_vneseniya1], [oprosniy_list], [status_fio], [data_vvoda_akt], [fio_vvoda_akt], [doljnost_vvoda_akt], [memo], [v_plane_key], [naimenov_ekspert_org], [fio_vneseniya], [naimenov_upr_org], [istochnik_dannich], [isklucheno_date], [zamechaniya_key], [zakluchenie_du], [zakluchenie_du1], [qr], [qrpath], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [osmotren_key], [isklucheno_key], [isklucheno_memo], [isklucheno_pic], [piktogrammi_key], [elektrpodkl_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [prinato_status], [prinato_data], [akt_podpisan_key], [ustraneno_key], [new_key], [dlinafasada_key], [data_ustr_zam], [fasad_summa], [vse_ok_key], [proverka_timer], [koordinati_timer], [v_plane_v_rabote], [tipdu_summa], [kategoriya_summa], [prinato_memo], [zakluchenie_du_history], [dom_marshrut], [data_v_proverku], [wgs84], [EGKO], [nalichie_summa], [drugie_summa], [montaj_summa], [electrika_summa], [piktogrammi_b], [nalichie_podkl_b], [priznak], [domdu2], [log_file], [kartograf_zam], [vost_fasada_b], [sootvetstvie_tipa_b], [raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [koldu_b], [sootv_bti_b], [wgs84_leg], [vozmojnost_podkl_b], [demontaj_b], [ust_na_linii_b], [k_priemke_b]);


GO
CREATE UNIQUE NONCLUSTERED INDEX [organization_id]
    ON [dbo].[reestr_t]([organization_id] ASC, [subpodradchik_id] ASC, [podradchik_id] ASC, [kod] ASC)
    INCLUDE([num], [project], [domdu], [montaj], [ulitsadu], [domdu_ilion], [razmerdu], [ploshaddu], [doljnost], [montaj_plan], [date1], [pic1], [checkpic1], [pic2], [fact_ustanovki], [pic3], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [proverka_podsveta_fio], [egko_fio], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [status_fio], [data_vvoda_akt], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [naimenov_ekspert_org], [fio_vneseniya], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [zakluchenie_du], [zakluchenie_du1], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [osmotren_key], [isklucheno_key], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [qr], [qrpath], [memo], [v_plane_key], [akt_podpisan_key], [ustraneno_key], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [vse_ok_key], [proverka_timer], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [prinato_memo], [zakluchenie_du_history], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [nalichie_summa], [drugie_summa], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [priznak], [domdu2], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [fasad_summa], [tipdumatc_kod], [EGKO], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [piktogrammi_b], [nalichie_podkl_b], [log_file], [kartograf_zam], [wgs84], [tipdu_kod], [vost_fasada_b], [sootvetstvie_tipa_b], [raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [koldu_b], [sootv_bti_b], [wgs84_leg], [kategoriya], [unikalniy], [ust_na_linii_b], [k_priemke_b], [vozmojnost_podkl_b], [demontaj_b]);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20171025-174442]
    ON [dbo].[reestr_t]([organization_id] ASC)
    INCLUDE([kod], [num], [project], [kategoriya], [unikalniy], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id], [date1], [pic1], [checkpic1], [razmerdu], [pic3], [ploshaddu], [egko_map_txt], [proverka_karti], [fio], [montaj_plan], [history], [subpodradchik_id], [data_osmotra_fio], [data_osmotra_doljnost], [fact_ustanovki], [pic2], [data_proverka_podsveta], [checkpic3], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [egko_fio], [doljnost], [egko_data], [data_osmotra], [nesootv_tipa], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [ne_ustanovlen], [proverka_podsveta_sost], [status], [status_fio], [data_vvoda_akt], [egko_doljnost], [doljnost_vvoda_akt], [tip_neobkhodimix_rabot], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [fio_vneseniya], [vvost_fasad], [istochnik_dannich], [zamechaniy_net], [oprosniy_list], [zakluchenie_du], [zakluchenie_du1], [fio_vvoda_akt], [qrpath], [data_ekpertnogo_zakl], [v_plane_key], [osmotren_key], [isklucheno_key], [naimenov_upr_org], [isklucheno_pic], [fio_vneseniya1], [zamechaniya_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [qr], [zamechaniya_nashi_date], [memo], [akt_v_ogs_key], [akt_podpisan_key], [ustraneno_key], [isklucheno_memo], [dlinafasada_key], [isklucheno_date], [elektrpodkl_key], [vse_ok_key], [proverka_timer], [zamechaniya_nashi_text_boss], [v_plane_v_rabote], [zamechaniya_nashi_date_ustr], [prinato_data], [prinato_memo], [zakluchenie_du_history], [new_key], [data_v_proverku], [piktogrammi_key], [adres_bti_proverka], [fasad_summa], [nalichie_summa], [koordinati_timer], [montaj_summa], [prinato_status], [tipdu_summa], [kategoriya_summa], [priznak], [dom_marshrut], [log_file], [data_ustr_zam], [wgs84], [inserted], [tipdu_kod], [drugie_summa], [adress_id], [electrika_summa], [raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [domdu2], [piktogrammi_b], [kartograf_zam], [vozmojnost_podkl_b], [demontaj_b], [ust_na_linii_b], [tipdumatc_kod], [k_priemke_b], [EGKO], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [koldu_b], [nalichie_podkl_b]);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20171025-174517]
    ON [dbo].[reestr_t]([subpodradchik_id] ASC)
    INCLUDE([kod], [num], [project], [kategoriya], [unikalniy], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id], [pic1], [checkpic1], [pic2], [razmerdu], [checkpic3], [ploshaddu], [proverka_karti], [fio], [doljnost], [montaj_plan], [history], [date1], [data_osmotra_fio], [data_osmotra_doljnost], [fact_ustanovki], [pic3], [data_proverka_podsveta], [egko_map_txt], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [egko_fio], [organization_id], [egko_data], [data_osmotra], [nesootv_tipa], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [ne_ustanovlen], [proverka_podsveta_sost], [status], [status_fio], [data_vvoda_akt], [egko_doljnost], [doljnost_vvoda_akt], [tip_neobkhodimix_rabot], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [fio_vneseniya], [vvost_fasad], [istochnik_dannich], [zamechaniy_net], [oprosniy_list], [zakluchenie_du], [zakluchenie_du1], [fio_vvoda_akt], [qrpath], [data_ekpertnogo_zakl], [v_plane_key], [osmotren_key], [isklucheno_key], [naimenov_upr_org], [isklucheno_pic], [fio_vneseniya1], [zamechaniya_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [qr], [zamechaniya_nashi_date], [memo], [akt_v_ogs_key], [akt_podpisan_key], [ustraneno_key], [isklucheno_memo], [dlinafasada_key], [isklucheno_date], [elektrpodkl_key], [vse_ok_key], [proverka_timer], [zamechaniya_nashi_text_boss], [v_plane_v_rabote], [zamechaniya_nashi_date_ustr], [prinato_data], [prinato_memo], [zakluchenie_du_history], [new_key], [data_v_proverku], [piktogrammi_key], [adres_bti_proverka], [fasad_summa], [nalichie_summa], [koordinati_timer], [montaj_summa], [prinato_status], [tipdu_summa], [kategoriya_summa], [priznak], [dom_marshrut], [log_file], [data_ustr_zam], [wgs84], [inserted], [tipdu_kod], [drugie_summa], [adress_id], [electrika_summa], [raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [domdu2], [piktogrammi_b], [kartograf_zam], [vozmojnost_podkl_b], [demontaj_b], [ust_na_linii_b], [tipdumatc_kod], [k_priemke_b], [EGKO], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [koldu_b], [nalichie_podkl_b]);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20171025-174537]
    ON [dbo].[reestr_t]([podradchik_id] ASC)
    INCLUDE([kod], [num], [project], [kategoriya], [unikalniy], [ulitsadu], [domdu_ilion], [domdu], [montaj], [subpodradchik_id], [pic1], [checkpic1], [pic2], [razmerdu], [checkpic3], [ploshaddu], [proverka_karti], [fio], [doljnost], [montaj_plan], [history], [date1], [data_osmotra_fio], [data_osmotra_doljnost], [fact_ustanovki], [pic3], [data_proverka_podsveta], [egko_map_txt], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [egko_fio], [organization_id], [egko_data], [data_osmotra], [nesootv_tipa], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [ne_ustanovlen], [proverka_podsveta_sost], [status], [status_fio], [data_vvoda_akt], [egko_doljnost], [doljnost_vvoda_akt], [tip_neobkhodimix_rabot], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [fio_vneseniya], [vvost_fasad], [istochnik_dannich], [zamechaniy_net], [oprosniy_list], [zakluchenie_du], [zakluchenie_du1], [fio_vvoda_akt], [qrpath], [data_ekpertnogo_zakl], [v_plane_key], [osmotren_key], [isklucheno_key], [naimenov_upr_org], [isklucheno_pic], [fio_vneseniya1], [zamechaniya_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [qr], [zamechaniya_nashi_date], [memo], [akt_v_ogs_key], [akt_podpisan_key], [ustraneno_key], [isklucheno_memo], [dlinafasada_key], [isklucheno_date], [elektrpodkl_key], [vse_ok_key], [proverka_timer], [zamechaniya_nashi_text_boss], [v_plane_v_rabote], [zamechaniya_nashi_date_ustr], [prinato_data], [prinato_memo], [zakluchenie_du_history], [new_key], [data_v_proverku], [piktogrammi_key], [adres_bti_proverka], [fasad_summa], [nalichie_summa], [koordinati_timer], [montaj_summa], [prinato_status], [tipdu_summa], [kategoriya_summa], [priznak], [dom_marshrut], [log_file], [data_ustr_zam], [wgs84], [inserted], [tipdu_kod], [drugie_summa], [adress_id], [electrika_summa], [raspayachnaya_korobka_b], [vospriyatie_b], [dlina_fasada_b], [domdu2], [piktogrammi_b], [kartograf_zam], [vozmojnost_podkl_b], [demontaj_b], [ust_na_linii_b], [tipdumatc_kod], [k_priemke_b], [EGKO], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [koldu_b], [nalichie_podkl_b]);


GO
CREATE NONCLUSTERED INDEX [sootv_bti_b]
    ON [dbo].[reestr_t]([sootv_bti_b] ASC)
    INCLUDE([kod], [num], [project], [kategoriya], [unikalniy], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id], [date1], [pic1], [checkpic1], [razmerdu], [pic3], [ploshaddu], [egko_map_txt], [proverka_karti], [fio], [montaj_plan], [organization_id], [subpodradchik_id], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [pic2], [proverka_podsveta_foto], [checkpic3], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [doljnost], [egko_doljnost], [history], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [fact_ustanovki], [vvost_fasad], [data_proverka_podsveta], [zamechaniy_net], [status], [status_fio], [egko_fio], [fio_vvoda_akt], [egko_data], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [nedemontirovan_stariy], [naimenov_upr_org], [ne_ustanovlen], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [data_vvoda_akt], [qr], [doljnost_vvoda_akt], [memo], [v_plane_key], [osmotren_key], [fio_vneseniya], [isklucheno_memo], [istochnik_dannich], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [qrpath], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [isklucheno_key], [new_key], [isklucheno_pic], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [koordinati_timer], [zamechaniya_nashi_date], [prinato_status], [prinato_data], [prinato_memo], [ustraneno_key], [dom_marshrut], [dlinafasada_key], [data_ustr_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [drugie_summa], [v_plane_v_rabote], [electrika_summa], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [domdu2], [data_v_proverku], [kartograf_zam], [wgs84], [inserted], [nalichie_summa], [tipdumatc_kod], [montaj_summa], [EGKO], [raspayachnaya_korobka_b], [vospriyatie_b], [priznak], [koldu_b], [log_file], [nalichie_podkl_b], [vozmojnost_podkl_b], [demontaj_b], [tipdu_kod], [ust_na_linii_b], [adress_id], [k_priemke_b], [vost_fasada_b], [sootvetstvie_tipa_b], [wgs84_leg], [dlina_fasada_b], [piktogrammi_b]);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20171129-144803]
    ON [dbo].[reestr_t]([sootvetstvie_tipa_b] ASC)
    INCLUDE([ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id], [subpodradchik_id], [date1], [pic1], [checkpic1], [razmerdu], [pic3], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [montaj_plan], [organization_id], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [pic2], [proverka_podsveta_foto], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [doljnost], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [fact_ustanovki], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [egko_fio], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [nedemontirovan_stariy], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [data_vvoda_akt], [qr], [qrpath], [memo], [v_plane_key], [osmotren_key], [fio_vneseniya], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [isklucheno_key], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [ustraneno_key], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [drugie_summa], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [domdu2], [log_file], [kartograf_zam], [wgs84], [inserted], [nalichie_summa], [tipdumatc_kod], [adress_id], [EGKO], [raspayachnaya_korobka_b], [vospriyatie_b], [priznak], [koldu_b], [piktogrammi_b], [nalichie_podkl_b], [vozmojnost_podkl_b], [demontaj_b], [tipdu_kod], [ust_na_linii_b], [k_priemke_b], [vost_fasada_b], [sootv_bti_b], [wgs84_leg], [dlina_fasada_b], [kod], [num], [project], [kategoriya], [unikalniy]);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20171129-144846]
    ON [dbo].[reestr_t]([vost_fasada_b] ASC)
    INCLUDE([kod], [num], [project], [kategoriya], [unikalniy], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id], [subpodradchik_id], [date1], [pic1], [checkpic1], [razmerdu], [pic3], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [montaj_plan], [organization_id], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [pic2], [proverka_podsveta_foto], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [doljnost], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [fact_ustanovki], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [egko_fio], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [nedemontirovan_stariy], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [data_vvoda_akt], [qr], [qrpath], [memo], [v_plane_key], [osmotren_key], [fio_vneseniya], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [isklucheno_key], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [ustraneno_key], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [drugie_summa], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [domdu2], [log_file], [kartograf_zam], [wgs84], [inserted], [nalichie_summa], [tipdumatc_kod], [adress_id], [EGKO], [raspayachnaya_korobka_b], [vospriyatie_b], [priznak], [koldu_b], [piktogrammi_b], [nalichie_podkl_b], [vozmojnost_podkl_b], [demontaj_b], [tipdu_kod], [ust_na_linii_b], [k_priemke_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [dlina_fasada_b]);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20171129-145001]
    ON [dbo].[reestr_t]([k_priemke_b] ASC)
    INCLUDE([kod], [num], [project], [kategoriya], [unikalniy], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id], [subpodradchik_id], [date1], [pic1], [checkpic1], [razmerdu], [pic3], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [montaj_plan], [organization_id], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [pic2], [proverka_podsveta_foto], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [doljnost], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [fact_ustanovki], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [egko_fio], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [nedemontirovan_stariy], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [data_vvoda_akt], [qr], [qrpath], [memo], [v_plane_key], [osmotren_key], [fio_vneseniya], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [isklucheno_key], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [ustraneno_key], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [drugie_summa], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [domdu2], [log_file], [kartograf_zam], [wgs84], [inserted], [nalichie_summa], [tipdumatc_kod], [adress_id], [EGKO], [raspayachnaya_korobka_b], [vospriyatie_b], [priznak], [koldu_b], [piktogrammi_b], [nalichie_podkl_b], [vozmojnost_podkl_b], [demontaj_b], [tipdu_kod], [ust_na_linii_b], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [dlina_fasada_b]);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20171129-145059]
    ON [dbo].[reestr_t]([ust_na_linii_b] ASC)
    INCLUDE([kod], [num], [project], [kategoriya], [unikalniy], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id], [subpodradchik_id], [date1], [pic1], [checkpic1], [razmerdu], [pic3], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [montaj_plan], [organization_id], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [pic2], [proverka_podsveta_foto], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [doljnost], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [fact_ustanovki], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [egko_fio], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [nedemontirovan_stariy], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [data_vvoda_akt], [qr], [qrpath], [memo], [v_plane_key], [osmotren_key], [fio_vneseniya], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [isklucheno_key], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [ustraneno_key], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [drugie_summa], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [domdu2], [log_file], [kartograf_zam], [wgs84], [inserted], [nalichie_summa], [tipdumatc_kod], [adress_id], [EGKO], [raspayachnaya_korobka_b], [vospriyatie_b], [priznak], [koldu_b], [piktogrammi_b], [nalichie_podkl_b], [vozmojnost_podkl_b], [demontaj_b], [tipdu_kod], [k_priemke_b], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [dlina_fasada_b]);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20171129-145131]
    ON [dbo].[reestr_t]([demontaj_b] ASC)
    INCLUDE([kod], [num], [project], [kategoriya], [unikalniy], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj], [podradchik_id], [subpodradchik_id], [date1], [pic1], [checkpic1], [razmerdu], [pic3], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [montaj_plan], [organization_id], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [pic2], [proverka_podsveta_foto], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [doljnost], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [fact_ustanovki], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [egko_fio], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [nedemontirovan_stariy], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [data_vvoda_akt], [qr], [qrpath], [memo], [v_plane_key], [osmotren_key], [fio_vneseniya], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zakluchenie_du1], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [isklucheno_key], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [zamechaniya_nashi_text], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [ustraneno_key], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [adres_bti_proverka], [fasad_summa], [proverka_timer], [drugie_summa], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [zakluchenie_du_history], [domdu2], [log_file], [kartograf_zam], [wgs84], [inserted], [nalichie_summa], [tipdumatc_kod], [adress_id], [EGKO], [raspayachnaya_korobka_b], [vospriyatie_b], [priznak], [koldu_b], [piktogrammi_b], [nalichie_podkl_b], [vozmojnost_podkl_b], [ust_na_linii_b], [tipdu_kod], [k_priemke_b], [vost_fasada_b], [sootvetstvie_tipa_b], [sootv_bti_b], [wgs84_leg], [dlina_fasada_b]);


GO
CREATE NONCLUSTERED INDEX [_dta_index_reestr_t_5_873926335__K110_K28_K1_K109_K108_2_3_4_5_8_9_10_15_16_17_18_19_20_21_22_26_27_29_30_31_32_33_34_35_36_37_]
    ON [dbo].[reestr_t]([adress_id] ASC, [data_osmotra_fio] ASC, [kod] ASC, [tipdumatc_kod] ASC, [tipdu_kod] ASC)
    INCLUDE([num], [kategoriya], [unikalniy], [ulitsadu], [domdu_ilion], [domdu], [pic1], [checkpic1], [pic2], [pic3], [checkpic3], [project], [proverka_karti], [history], [data_osmotra], [data_osmotra_doljnost], [fact_ustanovki], [date1], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [egko_fio], [egko_map_txt], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [nedemontirovan_stariy], [proverka_podsveta_foto], [ne_ustanovlen], [zamechaniy_net], [status], [data_vvoda_akt], [fio_vvoda_akt], [egko_doljnost], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [fio_vneseniya], [naimenov_upr_org], [vvost_fasad], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [zakluchenie_du1], [qr], [doljnost_vvoda_akt], [memo], [v_plane_key], [osmotren_key], [isklucheno_key], [isklucheno_memo], [istochnik_dannich], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [zamechaniya_nashi_text_boss], [qrpath], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [ustraneno_key], [new_key], [isklucheno_pic], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [proverka_timer], [koordinati_timer], [zamechaniya_nashi_date], [prinato_status], [prinato_data], [prinato_memo], [zakluchenie_du_history], [dom_marshrut], [dlinafasada_key], [data_ustr_zam], [fasad_summa], [nalichie_summa], [drugie_summa], [montaj_summa], [v_plane_v_rabote], [tipdu_summa], [kategoriya_summa], [priznak], [domdu2], [log_file], [data_v_proverku], [wgs84], [EGKO], [wgs84_leg], [sootv_bti], [raspayachnaya_korobka], [electrika_summa], [dlina_fasada], [koldu], [piktogrammi], [nalichie_podkl], [vozmojnost_podkl], [kartograf_zam], [demontaj], [ust_na_linii], [k_priemke], [vost_fasada], [sootvetstvie_tipa], [vospriyatie]);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20180123-090238]
    ON [dbo].[reestr_t]([unikalniy] ASC);


GO
CREATE NONCLUSTERED INDEX [_dta_index_reestr_t_5_1872217920__K110]
    ON [dbo].[reestr_t]([adress_id] ASC);


GO
CREATE NONCLUSTERED INDEX [_dta_index_reestr_t_5_1872217920__K110_K1_K119_K118_K117_K116_K115_K114_K113_K112_K122_K121_K120_K123_K108_K14_2_3_4_5_6_7_8_9_]
    ON [dbo].[reestr_t]([adress_id] ASC, [kod] ASC, [demontaj_b] ASC, [vozmojnost_podkl_b] ASC, [nalichie_podkl_b] ASC, [piktogrammi_b] ASC, [koldu_b] ASC, [dlina_fasada_b] ASC, [vospriyatie_b] ASC, [raspayachnaya_korobka_b] ASC, [vost_fasada_b] ASC, [k_priemke_b] ASC, [ust_na_linii_b] ASC, [sootvetstvie_tipa_b] ASC, [tipdu_kod] ASC, [subpodradchik_id] ASC)
    INCLUDE([num], [project], [kategoriya], [unikalniy], [razmerdu], [ploshaddu], [ulitsadu], [domdu_ilion], [domdu], [montaj], [montaj_plan], [date1], [pic1], [checkpic1], [pic2], [pic3], [checkpic3], [egko_map_txt], [proverka_karti], [fio], [doljnost], [organization_id], [history], [data_osmotra], [data_osmotra_fio], [data_osmotra_doljnost], [fact_ustanovki], [proverka_podsveta_foto], [data_proverka_podsveta], [proverka_podsveta_sost], [proverka_podsveta_dojnost], [proverka_podsveta_fio], [egko_fio], [egko_doljnost], [egko_data], [tip_neobkhodimix_rabot], [nesootv_tipa], [nesootv_kategorii], [nedemontirovan_stariy], [vvost_fasad], [ne_ustanovlen], [zamechaniy_net], [status], [status_fio], [data_vvoda_akt], [fio_vvoda_akt], [doljnost_vvoda_akt], [data_ekpertnogo_zakl], [nomer_ekpertnogo_zakl], [naimenov_ekspert_org], [fio_vneseniya], [naimenov_upr_org], [istochnik_dannich], [fio_vneseniya1], [oprosniy_list], [zakluchenie_du], [zakluchenie_du1], [qr], [qrpath], [memo], [v_plane_key], [osmotren_key], [isklucheno_key], [isklucheno_memo], [isklucheno_pic], [isklucheno_date], [zamechaniya_key], [zamechaniya_nashi_key], [zamechaniya_nashi_text], [zamechaniya_nashi_text_boss], [zamechaniya_nashi_date], [zamechaniya_nashi_date_ustr], [akt_v_ogs_key], [akt_podpisan_key], [ustraneno_key], [new_key], [dlinafasada_key], [piktogrammi_key], [elektrpodkl_key], [vse_ok_key], [proverka_timer], [koordinati_timer], [v_plane_v_rabote], [prinato_status], [prinato_data], [prinato_memo], [zakluchenie_du_history], [dom_marshrut], [data_v_proverku], [data_ustr_zam], [fasad_summa], [nalichie_summa], [drugie_summa], [montaj_summa], [electrika_summa], [tipdu_summa], [kategoriya_summa], [priznak], [domdu2], [log_file], [kartograf_zam], [wgs84], [tipdumatc_kod], [EGKO], [sootv_bti]);


GO
CREATE SPATIAL INDEX [SIndx_Spatial2]
    ON [dbo].[reestr_t] ([wgs84_leg])
    USING GEOGRAPHY_GRID
    WITH  (
            GRIDS = (LEVEL_1 = MEDIUM, LEVEL_2 = MEDIUM, LEVEL_3 = MEDIUM, LEVEL_4 = MEDIUM)
          );


GO
CREATE SPATIAL INDEX [SIndx_Spatial3]
    ON [dbo].[reestr_t] ([EGKO])
    USING GEOMETRY_GRID
    WITH  (
            BOUNDING_BOX = (XMAX = 30000, XMIN = -30000, YMAX = 30000, YMIN = -30000),
            GRIDS = (LEVEL_1 = MEDIUM, LEVEL_2 = MEDIUM, LEVEL_3 = MEDIUM, LEVEL_4 = MEDIUM)
          );


GO
CREATE SPATIAL INDEX [SIndx_Spatial1]
    ON [dbo].[reestr_t] ([wgs84])
    USING GEOGRAPHY_GRID
    WITH  (
            GRIDS = (LEVEL_1 = MEDIUM, LEVEL_2 = MEDIUM, LEVEL_3 = MEDIUM, LEVEL_4 = MEDIUM)
          );


GO
CREATE STATISTICS [_dta_stat_1872217920_14_25_1_119_118_117_116_115_114_113_112_122_121_120_123]
    ON [dbo].[reestr_t]([subpodradchik_id], [organization_id], [kod], [demontaj_b], [vozmojnost_podkl_b], [nalichie_podkl_b], [piktogrammi_b], [koldu_b], [dlina_fasada_b], [vospriyatie_b], [raspayachnaya_korobka_b], [vost_fasada_b], [k_priemke_b], [ust_na_linii_b], [sootvetstvie_tipa_b]);


GO
CREATE STATISTICS [_dta_stat_1872217920_1_110_119_118_117_116_115_114_113_112_122_121_120_123_108_14]
    ON [dbo].[reestr_t]([kod], [adress_id], [demontaj_b], [vozmojnost_podkl_b], [nalichie_podkl_b], [piktogrammi_b], [koldu_b], [dlina_fasada_b], [vospriyatie_b], [raspayachnaya_korobka_b], [vost_fasada_b], [k_priemke_b], [ust_na_linii_b], [sootvetstvie_tipa_b], [tipdu_kod], [subpodradchik_id]);


GO
CREATE STATISTICS [_dta_stat_1872217920_1_108_109_119_118_117_116_115_114_113_112_122_121_120_123_14]
    ON [dbo].[reestr_t]([kod], [tipdu_kod], [tipdumatc_kod], [demontaj_b], [vozmojnost_podkl_b], [nalichie_podkl_b], [piktogrammi_b], [koldu_b], [dlina_fasada_b], [vospriyatie_b], [raspayachnaya_korobka_b], [vost_fasada_b], [k_priemke_b], [ust_na_linii_b], [sootvetstvie_tipa_b], [subpodradchik_id]);


GO
CREATE STATISTICS [_dta_stat_1872217920_1_119_118_117_116_115_114_113_112_122_121_120_123_108_14_25]
    ON [dbo].[reestr_t]([kod], [demontaj_b], [vozmojnost_podkl_b], [nalichie_podkl_b], [piktogrammi_b], [koldu_b], [dlina_fasada_b], [vospriyatie_b], [raspayachnaya_korobka_b], [vost_fasada_b], [k_priemke_b], [ust_na_linii_b], [sootvetstvie_tipa_b], [tipdu_kod], [subpodradchik_id], [organization_id]);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'идентификатор', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'kod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'порядковый номер', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'num';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'название проекта', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'project';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'категория улицы (Магистральная, пешеходная...)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'kategoriya';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Уникальный номер ДУ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'unikalniy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Размер ДУ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'razmerdu';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Площадь ДУ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'ploshaddu';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Информационное содержание указателя (улица)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'ulitsadu';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Информационное содержание указателя (дом)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'domdu';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Дата монтажа ДУ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'montaj';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Дата внесения в базу', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'date1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Фото - Общий вид', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'pic1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'рисована стрелка или нет на Фото - Общий вид', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'checkpic1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Фото - Крупный вид', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'pic2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Фото - карта БТИ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'pic3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'есть метка на карте БТИ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'checkpic3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Фото - карта ЕГКО', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'egko_map_txt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Проверка карты произведена', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'proverka_karti';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Сотрудник, внёсший запись в БД', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'fio';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Должность сотрудника, внёсшего запись в БД', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'doljnost';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'кто собрался проверять ДУ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'status_fio';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Дата ввода опросного листа', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'data_vvoda_akt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ФИО кто ввел опросный лист', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'fio_vvoda_akt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Дата экспертного заключения', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'data_ekpertnogo_zakl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Номер экспертного заключения', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'nomer_ekpertnogo_zakl';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Наименование экспертной организации', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'naimenov_ekspert_org';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Сотрудник, внесший данные: ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'fio_vneseniya';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Наименование управляющей компании', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'naimenov_upr_org';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Источник данных', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'istochnik_dannich';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'вводился опросный лист или нет. 1-вводился, 0- нет', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'oprosniy_list';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Общие заключение по ду', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'zakluchenie_du';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'заключение для экселевской таблицы с замечаниями', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'zakluchenie_du1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Вероятно сделан на перспективу. Не похоже что используется, поскольку везде 0', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'akt_v_ogs_key';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Время затраченное за заполнение формы проверка', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'proverka_timer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Время затраченное за заполнение формы координаты', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'koordinati_timer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'метка для проверки. брали ДУ на проперку или нет. 1-печатали, 0 или "" нет', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'v_plane_v_rabote';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'выбираем номер дома для рисования маршрута (для сортировки по номеру дома и чет-нечет)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'dom_marshrut';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'дата когда получено задание', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'data_v_proverku';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'проверка адреса БТИ. данные вносятся картографами.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'adres_bti_proverka';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'для расчета количества замечаний по фасадам', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'fasad_summa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'для расчета количества замечаний по не установленным указателям', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'nalichie_summa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'для расчета количества других не стандартных замечаний ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'drugie_summa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'для расчета количества замечаний не снятым старым указателям', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'montaj_summa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'для расчета количества замечаний не соответствию типа ДУ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'tipdu_summa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'для расчета количества замечаний по категории ду', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'kategoriya_summa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'количество ду в присланой таблице илиона', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'reestr_t', @level2type = N'COLUMN', @level2name = N'priznak';

