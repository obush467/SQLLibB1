CREATE TABLE [dbo].[gu] (
    [kod]                                                              INT            IDENTITY (1, 1) NOT NULL,
    [project]                                                          NVARCHAR (MAX) NULL,
    [num]                                                              NCHAR (10)     NULL,
    [data_montaja]                                                     DATE           NULL,
    [status]                                                           NVARCHAR (MAX) NULL,
    [fio]                                                              NVARCHAR (MAX) NULL,
    [fio_doljnost]                                                     NVARCHAR (MAX) NULL,
    [data_v_proverku]                                                  DATE           NULL,
    [data_osmotra]                                                     DATE           NULL,
    [fact_ustanovki]                                                   NVARCHAR (MAX) NULL,
    [unikalniy]                                                        NVARCHAR (MAX) NULL,
    [tipgu]                                                            NVARCHAR (50)  NULL,
    [okrug]                                                            NVARCHAR (MAX) NULL,
    [ulitsa]                                                           NVARCHAR (MAX) NULL,
    [nazvanie_ulitsi]                                                  NVARCHAR (MAX) NULL,
    [dom_korp_str]                                                     NVARCHAR (MAX) NULL,
    [odnostoronie_dvijenie]                                            NCHAR (10)     NULL,
    [izmerennaya_shirina_trotuara]                                     NVARCHAR (MAX) NULL,
    [otsenochaya_shirina_trotuara]                                     NVARCHAR (MAX) NULL,
    [rastoyanie_ot_opori]                                              NVARCHAR (MAX) NULL,
    [tip_poverchnosti]                                                 NVARCHAR (MAX) NULL,
    [prokhodimost]                                                     NVARCHAR (MAX) NULL,
    [rekonstruktsiya]                                                  NVARCHAR (MAX) NULL,
    [prosmatrivaemost]                                                 NVARCHAR (MAX) NULL,
    [sostoyaniegu]                                                     NVARCHAR (MAX) NULL,
    [orientatsiyagu]                                                   NVARCHAR (MAX) NULL,
    [sootv_tech_pasport]                                               NVARCHAR (MAX) NULL,
    [rastoyanie_do_mesta_ust_po_pasportu]                              NVARCHAR (MAX) NULL,
    [po_prosmatrivaemosti]                                             NVARCHAR (MAX) NULL,
    [po_shirine_trotuara_v_meste_ustanovki]                            NVARCHAR (MAX) NULL,
    [po_otsutstviyu_navisaniya_nad_proezzhej_chastyu]                  NVARCHAR (MAX) NULL,
    [po_raspolozheniyu_otnositelno_zelenykh_nasazhdenij]               NVARCHAR (MAX) NULL,
    [po_rasstoyaniyu_ot_vkhoda_v_transportnye_uzly_i_doma]             NVARCHAR (MAX) NULL,
    [po_rasstoyaniyu_do_kraya_velosipednoj_dorozhki]                   NVARCHAR (MAX) NULL,
    [po_soderzhaniyu]                                                  NVARCHAR (MAX) NULL,
    [po_kolichestvu_i_pravilnomu_raspolozheniyu]                       NVARCHAR (MAX) NULL,
    [kolichestvo_informatsionnykh_polej]                               NCHAR (10)     NULL,
    [nalichie_modulya_s_kartoj_mestnosti]                              NVARCHAR (MAX) NULL,
    [oformlenie_osnovaniya]                                            NVARCHAR (MAX) NULL,
    [territoriya]                                                      NVARCHAR (MAX) NULL,
    [razmer_betonnogo_bloka_dlina]                                     NVARCHAR (MAX) NULL,
    [razmer_betonnogo_bloka_shirina]                                   NVARCHAR (MAX) NULL,
    [ploschad_vosstanovitelnykh_rabot_posle_zaglubleniya]              NVARCHAR (MAX) NULL,
    [vyvoz_tekhniki_inventarya_oborudovaniya]                          NVARCHAR (MAX) NULL,
    [inye_narusheniya_trebovanij_tekhnicheskikh_pravil_k_gorodskim_uk] NVARCHAR (MAX) NULL,
    [zaklyuchenie]                                                     NVARCHAR (MAX) NULL,
    [tip_narusheniya_vneshnego_vida_i_tekhnicheskogo_sostoyaniya]      NVARCHAR (MAX) NULL,
    [data_otpravki_inforiatsii_ispolnitelyu]                           DATE           NULL,
    [egko_x]                                                           NVARCHAR (MAX) NULL,
    [egko_y]                                                           NVARCHAR (MAX) NULL,
    [adres_v_moskve]                                                   NCHAR (10)     NULL,
    [naimenovaniya_i_narpavleniya_ukazannye_na_inf_polyakh_verny]      NVARCHAR (MAX) NULL,
    [otmetka_o_zanesenii_v_asu_inventarnyj_nomer]                      NVARCHAR (MAX) NULL,
    [data_zaneseniya_informatsii_v_asu]                                DATE           NULL,
    [sotrudnik_zanesshij_dannye_v_asu]                                 NVARCHAR (MAX) NULL,
    [data_ustanovki_po_grafiku]                                        DATE           NULL,
    [god_realizatsii]                                                  INT            NULL,
    [etap_rabot]                                                       NVARCHAR (MAX) NULL,
    [proekt]                                                           NVARCHAR (MAX) NULL,
    [data_montaja_plan]                                                DATE           NULL,
    [data_postupleniya_informatsiya_v_otdel_monitoringa]               DATE           NULL,
    [ploschad_betonnogo_bloka_kvm]                                     NVARCHAR (MAX) NULL,
    [dolzhnost_sotrudnika_obsledovavshego_gu]                          NVARCHAR (MAX) NULL,
    [dolzhnost_sotrudnika_zanesshego_nformatsiyu_v_asu]                NVARCHAR (MAX) NULL,
    [prim]                                                             NVARCHAR (MAX) NULL,
    [akt_v_arkhive]                                                    NCHAR (10)     NULL,
    [inf_pole_blok_1_storona_a]                                        NVARCHAR (MAX) NULL,
    [inf_pole_blok_1_storona_b]                                        NVARCHAR (MAX) NULL,
    [inf_pole_blok_2_storona_a]                                        NVARCHAR (MAX) NULL,
    [inf_pole_blok_2_storona_b]                                        NVARCHAR (MAX) NULL,
    [inf_pole_blok_3_storona_a]                                        NVARCHAR (MAX) NULL,
    [inf_pole_blok_3_storona_b]                                        NVARCHAR (MAX) NULL,
    [inf_pole_blok_4_storona_a]                                        NVARCHAR (MAX) NULL,
    [inf_pole_blok_4_storona_b]                                        NVARCHAR (MAX) NULL,
    [foto_storona_a]                                                   NVARCHAR (MAX) NULL,
    [foto_storona_b]                                                   NVARCHAR (MAX) NULL,
    [foto_text_1]                                                      NVARCHAR (MAX) NULL,
    [foto_text_2]                                                      NVARCHAR (MAX) NULL,
    [foto_text_3]                                                      NVARCHAR (MAX) NULL,
    [foto_text_4]                                                      NVARCHAR (MAX) NULL,
    [geogr_koordinati]                                                 NVARCHAR (MAX) NULL,
    [koordinati_leg]                                                   NVARCHAR (MAX) NULL,
    [zamechaniya_key]                                                  INT            NULL,
    [v_plane_v_rabote]                                                 INT            NULL,
    [vse_ok_key]                                                       INT            NULL,
    [v_plane_key]                                                      INT            NULL,
    [ustraneno_key]                                                    INT            NULL,
    [akt_v_ogs_key]                                                    INT            NULL,
    [prinato_key]                                                      INT            NULL,
    [zam1_key]                                                         INT            NULL,
    [zam2_key]                                                         INT            NULL,
    [zam3_key]                                                         INT            NULL,
    [zam4_key]                                                         INT            NULL,
    [data_prinatiya]                                                   DATE           NULL,
    [obkhodchik_timer]                                                 NVARCHAR (MAX) NULL,
    [zam1_text]                                                        NVARCHAR (MAX) NULL,
    [zam2_text]                                                        NVARCHAR (MAX) NULL,
    [zam3_text]                                                        NVARCHAR (MAX) NULL,
    [zam4_text]                                                        NVARCHAR (MAX) NULL,
    [zam1_foto]                                                        NVARCHAR (MAX) NULL,
    [zam2_foto]                                                        NVARCHAR (MAX) NULL,
    [zam3_foto]                                                        NVARCHAR (MAX) NULL,
    [zam4_foto]                                                        NVARCHAR (MAX) NULL,
    [memo]                                                             NVARCHAR (MAX) NULL,
    [isklucheno_key]                                                   INT            NULL,
    [isklucheno_date]                                                  DATE           NULL,
    [isklucheno_memo]                                                  NVARCHAR (MAX) NULL,
    [isklucheno_pic]                                                   NVARCHAR (MAX) NULL,
    [qr]                                                               NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_gu] PRIMARY KEY CLUSTERED ([kod] ASC)
);


GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create TRIGGER [dbo].[gu_update]
ON dbo.gu  AFTER  UPDATE 
AS 
BEGIN
	SET NOCOUNT ON;
INSERT INTO [GBUMATC].[dbo].[gu_log]
           ([kod]
           ,[project]
           ,[num]
           ,[data_montaja]
           ,[status]
           ,[fio]
           ,[fio_doljnost]
           ,[data_v_proverku]
           ,[data_osmotra]
           ,[fact_ustanovki]
           ,[unikalniy]
           ,[tipgu]
           ,[okrug]
           ,[ulitsa]
           ,[nazvanie_ulitsi]
           ,[dom_korp_str]
           ,[odnostoronie_dvijenie]
           ,[izmerennaya_shirina_trotuara]
           ,[otsenochaya_shirina_trotuara]
           ,[rastoyanie_ot_opori]
           ,[tip_poverchnosti]
           ,[prokhodimost]
           ,[rekonstruktsiya]
           ,[prosmatrivaemost]
           ,[sostoyaniegu]
           ,[orientatsiyagu]
           ,[sootv_tech_pasport]
           ,[rastoyanie_do_mesta_ust_po_pasportu]
           ,[po_prosmatrivaemosti]
           ,[po_shirine_trotuara_v_meste_ustanovki]
           ,[po_otsutstviyu_navisaniya_nad_proezzhej_chastyu]
           ,[po_raspolozheniyu_otnositelno_zelenykh_nasazhdenij]
           ,[po_rasstoyaniyu_ot_vkhoda_v_transportnye_uzly_i_doma]
           ,[po_rasstoyaniyu_do_kraya_velosipednoj_dorozhki]
           ,[po_soderzhaniyu]
           ,[po_kolichestvu_i_pravilnomu_raspolozheniyu]
           ,[kolichestvo_informatsionnykh_polej]
           ,[nalichie_modulya_s_kartoj_mestnosti]
           ,[oformlenie_osnovaniya]
           ,[territoriya]
           ,[razmer_betonnogo_bloka_dlina]
           ,[razmer_betonnogo_bloka_shirina]
           ,[ploschad_vosstanovitelnykh_rabot_posle_zaglubleniya]
           ,[vyvoz_tekhniki_inventarya_oborudovaniya]
           ,[inye_narusheniya_trebovanij_tekhnicheskikh_pravil_k_gorodskim_uk]
           ,[zaklyuchenie]
           ,[tip_narusheniya_vneshnego_vida_i_tekhnicheskogo_sostoyaniya]
           ,[data_otpravki_inforiatsii_ispolnitelyu]
           ,[egko_x]
           ,[egko_y]
           ,[adres_v_moskve]
           ,[naimenovaniya_i_narpavleniya_ukazannye_na_inf_polyakh_verny]
           ,[otmetka_o_zanesenii_v_asu_inventarnyj_nomer]
           ,[data_zaneseniya_informatsii_v_asu]
           ,[sotrudnik_zanesshij_dannye_v_asu]
           ,[data_ustanovki_po_grafiku]
           ,[god_realizatsii]
           ,[etap_rabot]
           ,[proekt]
           ,[data_montaja_plan]
           ,[data_postupleniya_informatsiya_v_otdel_monitoringa]
           ,[ploschad_betonnogo_bloka_kvm]
           ,[dolzhnost_sotrudnika_obsledovavshego_gu]
           ,[dolzhnost_sotrudnika_zanesshego_nformatsiyu_v_asu]
           ,[prim]
           ,[akt_v_arkhive]
           ,[inf_pole_blok_1_storona_a]
           ,[inf_pole_blok_1_storona_b]
           ,[inf_pole_blok_2_storona_a]
           ,[inf_pole_blok_2_storona_b]
           ,[inf_pole_blok_3_storona_a]
           ,[inf_pole_blok_3_storona_b]
           ,[inf_pole_blok_4_storona_a]
           ,[inf_pole_blok_4_storona_b]
           ,[foto_storona_a]
           ,[foto_storona_b]
           ,[foto_text_1]
           ,[foto_text_2]
           ,[foto_text_3]
           ,[foto_text_4]
           ,[geogr_koordinati]
           ,[koordinati_leg]
           ,[zamechaniya_key]
           ,[v_plane_v_rabote]
           ,[vse_ok_key]
           ,[v_plane_key]
           ,[ustraneno_key]
           ,[akt_v_ogs_key]
           ,[prinato_key]
           ,[zam1_key]
           ,[zam2_key]
           ,[zam3_key]
           ,[zam4_key]
           ,[data_prinatiya]
           ,[obkhodchik_timer]
           ,[zam1_text]
           ,[zam2_text]
           ,[zam3_text]
           ,[zam4_text]
           ,[zam1_foto]
           ,[zam2_foto]
         ,[zam3_foto]
           ,[zam4_foto]
           ,[memo]
           ,[isklucheno_key]
           ,[isklucheno_date]
           ,[isklucheno_memo]
           ,[isklucheno_pic]
           ,[qr])
     SELECT 
		[kod]
           ,[project]
           ,[num]
           ,[data_montaja]
           ,[status]
           ,[fio]
           ,[fio_doljnost]
           ,[data_v_proverku]
           ,[data_osmotra]
           ,[fact_ustanovki]
           ,[unikalniy]
           ,[tipgu]
           ,[okrug]
           ,[ulitsa]
           ,[nazvanie_ulitsi]
           ,[dom_korp_str]
           ,[odnostoronie_dvijenie]
           ,[izmerennaya_shirina_trotuara]
           ,[otsenochaya_shirina_trotuara]
           ,[rastoyanie_ot_opori]
           ,[tip_poverchnosti]
           ,[prokhodimost]
           ,[rekonstruktsiya]
           ,[prosmatrivaemost]
           ,[sostoyaniegu]
           ,[orientatsiyagu]
           ,[sootv_tech_pasport]
           ,[rastoyanie_do_mesta_ust_po_pasportu]
           ,[po_prosmatrivaemosti]
           ,[po_shirine_trotuara_v_meste_ustanovki]
           ,[po_otsutstviyu_navisaniya_nad_proezzhej_chastyu]
           ,[po_raspolozheniyu_otnositelno_zelenykh_nasazhdenij]
           ,[po_rasstoyaniyu_ot_vkhoda_v_transportnye_uzly_i_doma]
           ,[po_rasstoyaniyu_do_kraya_velosipednoj_dorozhki]
           ,[po_soderzhaniyu]
           ,[po_kolichestvu_i_pravilnomu_raspolozheniyu]
           ,[kolichestvo_informatsionnykh_polej]
           ,[nalichie_modulya_s_kartoj_mestnosti]
           ,[oformlenie_osnovaniya]
           ,[territoriya]
           ,[razmer_betonnogo_bloka_dlina]
           ,[razmer_betonnogo_bloka_shirina]
           ,[ploschad_vosstanovitelnykh_rabot_posle_zaglubleniya]
           ,[vyvoz_tekhniki_inventarya_oborudovaniya]
           ,[inye_narusheniya_trebovanij_tekhnicheskikh_pravil_k_gorodskim_uk]
           ,[zaklyuchenie]
           ,[tip_narusheniya_vneshnego_vida_i_tekhnicheskogo_sostoyaniya]
           ,[data_otpravki_inforiatsii_ispolnitelyu]
           ,[egko_x]
           ,[egko_y]
           ,[adres_v_moskve]
           ,[naimenovaniya_i_narpavleniya_ukazannye_na_inf_polyakh_verny]
           ,[otmetka_o_zanesenii_v_asu_inventarnyj_nomer]
           ,[data_zaneseniya_informatsii_v_asu]
           ,[sotrudnik_zanesshij_dannye_v_asu]
           ,[data_ustanovki_po_grafiku]
           ,[god_realizatsii]
           ,[etap_rabot]
           ,[proekt]
           ,[data_montaja_plan]
           ,[data_postupleniya_informatsiya_v_otdel_monitoringa]
           ,[ploschad_betonnogo_bloka_kvm]
           ,[dolzhnost_sotrudnika_obsledovavshego_gu]
           ,[dolzhnost_sotrudnika_zanesshego_nformatsiyu_v_asu]
           ,[prim]
           ,[akt_v_arkhive]
           ,[inf_pole_blok_1_storona_a]
           ,[inf_pole_blok_1_storona_b]
           ,[inf_pole_blok_2_storona_a]
           ,[inf_pole_blok_2_storona_b]
           ,[inf_pole_blok_3_storona_a]
           ,[inf_pole_blok_3_storona_b]
           ,[inf_pole_blok_4_storona_a]
           ,[inf_pole_blok_4_storona_b]
           ,[foto_storona_a]
           ,[foto_storona_b]
           ,[foto_text_1]
           ,[foto_text_2]
           ,[foto_text_3]
           ,[foto_text_4]
           ,[geogr_koordinati]
           ,[koordinati_leg]
           ,[zamechaniya_key]
           ,[v_plane_v_rabote]
           ,[vse_ok_key]
           ,[v_plane_key]
           ,[ustraneno_key]
           ,[akt_v_ogs_key]
           ,[prinato_key]
           ,[zam1_key]
           ,[zam2_key]
           ,[zam3_key]
           ,[zam4_key]
           ,[data_prinatiya]
           ,[obkhodchik_timer]
           ,[zam1_text]
           ,[zam2_text]
           ,[zam3_text]
           ,[zam4_text]
           ,[zam1_foto]
           ,[zam2_foto]
           ,[zam3_foto]
           ,[zam4_foto]
           ,[memo]
           ,[isklucheno_key]
     ,[isklucheno_date]
           ,[isklucheno_memo]
           ,[isklucheno_pic]
           ,[qr]
          FROM INSERTED
   END

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'для qr кода', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'gu', @level2type = N'COLUMN', @level2name = N'qr';

