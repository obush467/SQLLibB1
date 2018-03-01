



CREATE VIEW [dbo].[reestr]
WITH  VIEW_METADATA
AS
SELECT 
	r.kod
	, r.num
	, r.project
	, dbo.Okrug.shortName AS Okrug
	, raion.ShortName as ulitsa
	, A.nazvanie_ulitsi
	, A.dom AS dom
	, A.korpus AS korpus
	, A.stroenie AS stroenie
	, r.kategoriya AS kategoriya
	, [dbo].[dom_korp_str_toString](A.dom,A.korpus,A.stroenie,DT.domtype_full,ST.domtype_full,0) AS dom_korp_str
	, A.polniy_adres AS dom_korp_str1
	, tip.tip AS tipdu
	, tmatc.tip AS tipdumatc
	, r.unikalniy
	, r.razmerdu AS razmerdu
	, r.ploshaddu AS ploshaddu
	, r.ulitsadu AS ulitsadu
	, r.domdu_ilion AS domdu_ilion
	, r.domdu AS domdu
	, r.montaj
	, r.montaj_plan
	, subpodr.FullName AS subpodradchik
	, r.date1
	, r.pic1 AS pic1
	, r.checkpic1 as checkpic1
	, r.pic2 AS pic2
	, r.pic3 AS pic3
	, r.checkpic3
	, r.egko_map_txt
	, r.proverka_karti
	, r.fio
	, r.doljnost
	, orgs.FullName org
	, r.history
	, r.data_osmotra
	, r.data_osmotra_fio
	, r.data_osmotra_doljnost
	, r.fact_ustanovki
	,st_vospriyatie.Value AS vospriyatie
	,st_dlina_fasada.Value AS dlina_fasada
	,st_koldu.Value AS koldu
	,st_piktogrammi.Value AS piktogrammi
	,st_raspayachnaya_korobka.Value AS raspayachnaya_korobka
	,st_nalichie_podkl.Value  AS nalichie_podkl
	,st_vozmojnost_podkl.Value AS vozmojnost_podkl
	,st_demontaj.Value AS demontaj
	,st_vost_fasada.Value AS vost_fasada
	,r.proverka_podsveta_foto AS proverka_podsveta_foto
	, r.data_proverka_podsveta
	, r.proverka_podsveta_sost AS proverka_podsveta_sost
	, r.proverka_podsveta_dojnost AS proverka_podsveta_dojnost
	, r.proverka_podsveta_fio
	, st_sootvetstvie_tipa.Value AS sootvetstvie_tipa
	, st_ust_na_linii.Value AS ust_na_linii
	,[dbo].[geometryPointX_to_str](r.egko) AS egko_x
	,[dbo].[geometryPointY_to_str](r.egko) AS egko_y
	,[dbo].[geographyPoint_to_str](r.wgs84) AS geogr_koord
	,r.egko_fio AS egko_fio
	,r.egko_doljnost AS egko_doljnost
	,r.egko_data 
	,r.tip_neobkhodimix_rabot AS tip_neobkhodimix_rabot
	,r.nesootv_tipa AS nesootv_tipa
	,r.nesootv_kategorii AS nesootv_kategorii
	,r.nedemontirovan_stariy AS nedemontirovan_stariy
	,r.vvost_fasad AS vvost_fasad
	,r.ne_ustanovlen AS ne_ustanovlen
	,r.zamechaniy_net AS zamechaniy_net
	,r.[status] AS [status]
	, r.status_fio AS status_fio
	,r.data_vvoda_akt
	,r.fio_vvoda_akt AS fio_vvoda_akt
	,r.doljnost_vvoda_akt AS doljnost_vvoda_akt
	,r.data_ekpertnogo_zakl
	,r.nomer_ekpertnogo_zakl AS nomer_ekpertnogo_zakl
	,r.naimenov_ekspert_org AS naimenov_ekspert_org
	,r.fio_vneseniya AS fio_vneseniya
	,r.naimenov_upr_org AS naimenov_upr_org
	,r.istochnik_dannich
	,r.fio_vneseniya1
	,r.oprosniy_list
	,r.zakluchenie_du
	,r.zakluchenie_du1
	,st_k_priemke.Value AS k_priemke
	,r.qr
	,r.qrpath
	,a.bti_adres
	,a.bti_naznachenie
	,a.bti_god_postroyki
	,a.bti_etaji
	,a.bti_alt_adres
	,a.bti_for_find
	,r.memo
	,r.v_plane_key
	,r.osmotren_key
	,r.isklucheno_key
	,r.isklucheno_memo
	,r.isklucheno_pic as isklucheno_pic
	,r.isklucheno_date
	,r.zamechaniya_key
	,r.zamechaniya_nashi_key
	,r.zamechaniya_nashi_text
	,r.zamechaniya_nashi_text_boss
	,r.zamechaniya_nashi_date
	,r.zamechaniya_nashi_date_ustr
	,r.akt_v_ogs_key
	,r.akt_podpisan_key
	,r.ustraneno_key
	,r.new_key
	,r.dlinafasada_key
	,r.piktogrammi_key
	,r.elektrpodkl_key
	,r.vse_ok_key
	,r.proverka_timer
	,r.koordinati_timer
	,r.v_plane_v_rabote
	,r.prinato_status
	,r.prinato_data
	,r.prinato_memo
	,r.zakluchenie_du_history
	--,[dbo].[geographyPoint_to_str](r.wgs84_leg) as koordinati_leg
	,r.dom_marshrut
	,A.nazvanie_ulitsi AS ilion_ulitsa
	,[dbo].[dom_korp_str_toString](A.dom,A.korpus,A.stroenie,DT.domtype_full,ST.domtype_full,0) AS ilion_dom
	,r.data_v_proverku
	,r.data_ustr_zam
	,a.adres_bti_proverka
	,r.fasad_summa
	,r.nalichie_summa
	,r.drugie_summa
	,r.montaj_summa
	,r.electrika_summa
	,r.tipdu_summa
	,r.kategoriya_summa
	,r.priznak
	,r.domdu2
	,r.log_file
	,sootv_bti --, stSootv_bti.Value AS sootv_bti
	,r.kartograf_zam
	,dlina.foto AS dlina_foto
	,dlina.memo AS dlina_memo
	,dlina.status AS dlina_status
	,dlina.zam AS dlina_zam
	,dlina.podtverjd_foto AS podtverjd_dlina_foto
	,dlina.podtverjd_memo AS podtverjd_dlina_memo
	,dlina.podtverjd_status AS podtverjd_dlina_status
	,nesootv_demontirovan.[key] AS dop_zam1_key
	,nesootv_demontirovan.pic AS dop_zam1_pic
	,nesootv_demontirovan.text AS dop_zam1_text
	,nesootv_demontirovan.foto AS nesootv_demontirovan_foto
	,nesootv_demontirovan.memo AS nesootv_demontirovan_memo
	,nesootv_demontirovan.status AS nesootv_demontirovan_status
	,nesootv_demontirovan.zam AS nesootv_demontirovan_zam
	,nesootv_demontirovan.podtverjd_foto AS podtverjd_nesootv_demontirovan_foto
	,nesootv_demontirovan.podtverjd_memo AS podtverjd_nesootv_demontirovan_memo
	,nesootv_demontirovan.podtverjd_status AS podtverjd_nesootv_demontirovan_status
	,nesootv_kategorii.foto AS nesootv_kategorii_foto
	,nesootv_kategorii.memo AS nesootv_kategorii_memo
	,nesootv_kategorii.status AS nesootv_kategorii_status
	,nesootv_kategorii.zam AS nesootv_kategorii_zam
	,nesootv_kategorii.podtverjd_foto AS podtverjd_nesootv_kategorii_foto
	,nesootv_kategorii.podtverjd_memo AS podtverjd_nesootv_kategorii_memo
	,nesootv_kategorii.podtverjd_status AS podtverjd_nesootv_kategorii_status
	,nesootv_tip.foto AS nesootv_tip_foto
	,nesootv_tip.memo AS nesootv_tip_memo
	,nesootv_tip.status AS nesootv_tip_status
	,nesootv_tip.zam AS nesootv_tip_zam
	,nesootv_tip.podtverjd_foto AS podtverjd_nesootv_tip_foto
	,nesootv_tip.podtverjd_memo AS podtverjd_nesootv_tip_memo
	,nesootv_tip.podtverjd_status AS podtverjd_nesootv_tip_status
	,pictogrammi.foto AS pictogrammi_foto
	,pictogrammi.memo AS pictogrammi_memo
	,pictogrammi.status AS pictogrammi_status
	,pictogrammi.zam AS pictogrammi_zam
	,pictogrammi.podtverjd_foto AS podtverjd_pictogrammi_foto
	,pictogrammi.podtverjd_memo AS podtverjd_pictogrammi_memo
	,pictogrammi.podtverjd_status AS podtverjd_pictogrammi_status
	,podkluchenie.foto AS podkluchenie_foto
	,podkluchenie.memo AS podkluchenie_memo
	,podkluchenie.status AS podkluchenie_status
	,podkluchenie.zam AS podkluchenie_zam
	,podkluchenie.foto AS podtverjd_podkluchenie_foto
	,podkluchenie.podtverjd_memo AS podtverjd_podkluchenie_memo
	,podkluchenie.podtverjd_status AS podtverjd_podkluchenie_status
	,ustanovka_du.podtverjd_foto AS podtverjd_ustanovka_du_foto
	,ustanovka_du.podtverjd_memo AS podtverjd_ustanovka_du_memo
	,ustanovka_du.podtverjd_status AS podtverjd_ustanovka_du_status
	,ustanovka_du.foto AS ustanovka_du_foto
	,ustanovka_du.memo AS ustanovka_du_memo
	, ustanovka_du.status AS ustanovka_du_status
	, ustanovka_du.zam AS ustanovka_du_zam
	, vostanovl_fasad.[key] AS dop_zam2_key
	, vostanovl_fasad.pic AS dop_zam2_pic
	, vostanovl_fasad.text AS dop_zam2_text
	, vostanovl_fasad.podtverjd_foto AS podtverjd_vostanovl_fasad_foto
	, vostanovl_fasad.podtverjd_memo AS podtverjd_vostanovl_fasad_memo
	, vostanovl_fasad.podtverjd_status AS podtverjd_vostanovl_fasad_status
	, vostanovl_fasad.foto AS vostanovl_fasad_foto
	, vostanovl_fasad.memo AS vostanovl_fasad_memo
	, vostanovl_fasad.status AS vostanovl_fasad_status
	, vostanovl_fasad.zam AS vostanovl_fasad_zam
	, vozmojnost_el_podkl.podtverjd_foto AS podtverjd_vozmojnost_el_podkl_foto
	, vozmojnost_el_podkl.podtverjd_memo AS podtverjd_vozmojnost_el_podkl_memo
	, vozmojnost_el_podkl.podtverjd_status AS podtverjd_vozmojnost_el_podkl_status
	, vozmojnost_el_podkl.foto AS vozmojnost_el_podkl_foto
	, vozmojnost_el_podkl.memo AS vozmojnost_el_podkl_memo
	, vozmojnost_el_podkl.status AS vozmojnost_el_podkl_status
	, vozmojnost_el_podkl.zam AS vozmojnost_el_podkl_zam
	, zam1.[key] AS dop_zam3_key
	, zam1.pic AS dop_zam3_pic
	, zam1.text AS dop_zam3_text
	, zam1.podtverjd_foto AS podtverjd_zam1_foto
	, zam1.podtverjd_memo AS podtverjd_zam1_memo
	, zam1.podtverjd_status AS podtverjd_zam1_status
	, zam1.foto AS zam1_foto
	, zam1.memo AS zam1_memo
	, zam1.status AS zam1_status
	, zam2.[key] AS dop_zam4_key
	, zam2.pic AS dop_zam4_pic
	, zam2.text AS dop_zam4_text
	, zam2.podtverjd_foto AS podtverjd_zam2_foto
	, zam2.podtverjd_memo AS podtverjd_zam2_memo
	, zam2.podtverjd_status AS podtverjd_zam2_status
	, zam2.foto AS zam2_foto
	, zam2.memo AS zam2_memo
	, zam2.status AS zam2_status
	, zam3.[key] AS dop_zam5_key
	, zam3.pic AS dop_zam5_pic
	, zam3.text AS dop_zam5_text
	, zam3.podtverjd_foto AS podtverjd_zam3_foto
	, zam3.podtverjd_memo AS podtverjd_zam3_memo
	, zam3.podtverjd_status AS podtverjd_zam3_status
	, zam3.foto AS zam3_foto
	, zam3.memo AS zam3_memo
	, zam3.[status] AS zam3_status
	, zam4.[key] AS dop_zam6_key
	, zam4.pic AS dop_zam6_pic
	, zam4.text AS dop_zam6_text
	, zam4.podtverjd_foto AS podtverjd_zam4_foto
	, zam4.podtverjd_memo AS podtverjd_zam4_memo
	, zam4.podtverjd_status AS podtverjd_zam4_status
	, zam4.foto AS zam4_foto
	, zam4.memo AS zam4_memo
	, zam4.status AS zam4_status
	,r.adress_id

FROM            
	 dbo.reestr_t AS r 
	 LEFT OUTER JOIN dbo.Organizations orgs ON orgs.id=r.organization_id 
	 LEFT OUTER JOIN dbo.Organizations Podr ON Podr.id=r.podradchik_id
	 LEFT OUTER JOIN dbo.Organizations SubPodr ON SubPodr.id=r.subpodradchik_id
	 INNER JOIN DBO.adress A  ON A.id=R.ADRESS_ID
	 inner join dbo.Okrug  ON Okrug.id=A.okrug_id
	 inner join dbo.Raion  ON Raion.id=A.AdminArea_ID
	 LEFT OUTER JOIN dbo.dom_type DT  ON A.dom_type=DT.id
	 LEFT OUTER JOIN dbo.dom_type ST  ON A.stroenie_type=ST.id
	 LEFT OUTER JOIN dbo.tipdu AS tmatc  ON r.tipdumatc_kod = tmatc.kod 
	 LEFT OUTER JOIN dbo.tipdu AS tip  ON r.tipdu_kod = tip.kod 
	 LEFT OUTER JOIN  [dbo].[rz_zam1] AS zam1  ON r.kod = zam1.kod
	 LEFT OUTER JOIN  [dbo].[rz_zam2] AS zam2  ON r.kod = zam2.kod
	 LEFT OUTER JOIN  [dbo].[rz_zam3] AS zam3  ON r.kod = zam3.kod
	 LEFT OUTER JOIN  [dbo].[rz_zam4] AS zam4  ON r.kod = zam4.kod
	 LEFT OUTER JOIN  [dbo].[rz_dlina] AS dlina  ON r.kod = dlina.kod
	 LEFT OUTER JOIN [dbo].[rz_podkluchenie] AS podkluchenie  ON r.kod = podkluchenie.kod
	 LEFT OUTER JOIN [dbo].[rz_pictogrammi] AS pictogrammi  ON r.kod = pictogrammi.kod
	 LEFT OUTER JOIN [dbo].[rz_vozmojnost_el_podkl] as vozmojnost_el_podkl ON r.kod = vozmojnost_el_podkl.kod
	 LEFT OUTER JOIN [dbo].[rz_vostanovl_fasad] AS vostanovl_fasad  ON r.kod = vostanovl_fasad.kod
	 LEFT OUTER JOIN [dbo].[rz_nesootv_kategorii] AS nesootv_kategorii  ON r.kod = nesootv_kategorii.kod
	 LEFT OUTER JOIN [dbo].[rz_nesootv_tip] AS nesootv_tip  ON r.kod = nesootv_tip.kod
	 LEFT OUTER JOIN [dbo].[rz_ustanovka_du] AS ustanovka_du  ON r.kod = ustanovka_du.kod
	 LEFT OUTER JOIN [dbo].[rz_nesootv_demontirovan] AS nesootv_demontirovan  ON r.kod = nesootv_demontirovan.kod
	 LEFT OUTER JOIN dbo.standardValues AS stSootv_bti ON stSootv_bti.id=sootv_bti_b
	 LEFT OUTER JOIN dbo.standardValues AS st_sootvetstvie_tipa  ON st_sootvetstvie_tipa.id=sootvetstvie_tipa_b
	 LEFT OUTER JOIN dbo.standardValues AS st_ust_na_linii  ON st_ust_na_linii.id=ust_na_linii_b
	 LEFT OUTER JOIN dbo.standardValues AS st_k_priemke  ON st_k_priemke.id=k_priemke_b
	 LEFT OUTER JOIN dbo.standardValues AS st_vost_fasada  ON st_vost_fasada.id=vost_fasada_b
	 LEFT OUTER JOIN dbo.standardValues AS st_raspayachnaya_korobka  ON st_raspayachnaya_korobka.id=raspayachnaya_korobka_b
	 LEFT OUTER JOIN dbo.standardValues AS st_vospriyatie  ON st_vospriyatie.id=vospriyatie_b
	 LEFT OUTER JOIN dbo.standardValues AS st_dlina_fasada  ON st_dlina_fasada.id=dlina_fasada_b
	 LEFT OUTER JOIN dbo.standardValues AS st_koldu  ON st_koldu.id=koldu_b
	 LEFT OUTER JOIN dbo.standardValues AS st_piktogrammi  ON st_piktogrammi.id=piktogrammi_b
	 LEFT OUTER JOIN dbo.standardValues AS st_nalichie_podkl  ON st_nalichie_podkl.id=nalichie_podkl_b
	 LEFT OUTER JOIN dbo.standardValues AS st_vozmojnost_podkl  ON st_vozmojnost_podkl.id=vozmojnost_podkl_b
	 LEFT OUTER JOIN dbo.standardValues AS st_demontaj  ON st_demontaj.id=demontaj_b
WHERE not a.okrug_id in ('47E6B906-5978-46B4-902D-35D44DB63631')





















































GO

CREATE TRIGGER [dbo].[insteadTrig_INSERT] ON [dbo].[reestr]
INSTEAD OF INSERT
AS
BEGIN
SET NOCOUNT ON
DECLARE @R TABLE (
	[kod] [int],
	[unikalniy] [varchar](50),
	[num] int null
)

INSERT INTO reestr_t (
	num,
	project,
	kategoriya,
	unikalniy,
	tipdu_kod,
	tipdumatc_kod,
	razmerdu,
	ploshaddu,
	ulitsadu,
	domdu_ilion,
	domdu,
	montaj,
	montaj_plan,
	subpodradchik,
	date1,
	pic1,
	checkpic1,
	pic2,
	pic3,
	checkpic3,
	egko_map_txt,
	proverka_karti,
	fio,
	doljnost,
	org,
	history,
	data_osmotra,
	data_osmotra_fio,
	data_osmotra_doljnost,
	fact_ustanovki,
	vospriyatie_b,
	dlina_fasada_b,
	koldu_b,
	piktogrammi_b,
	raspayachnaya_korobka_b,
	nalichie_podkl_b,
	vozmojnost_podkl_b,
	demontaj_b,
	vost_fasada_b,
	proverka_podsveta_foto,
	data_proverka_podsveta,
	proverka_podsveta_sost,
	proverka_podsveta_dojnost,
	proverka_podsveta_fio,
	sootvetstvie_tipa_b,
	ust_na_linii_b,
	egko_fio,
	egko_doljnost,
	egko_data,
	tip_neobkhodimix_rabot,
	nesootv_tipa,
	nesootv_kategorii,
	nedemontirovan_stariy,
	vvost_fasad,
	ne_ustanovlen,
	zamechaniy_net,
	[status],
	status_fio,
	data_vvoda_akt,
	fio_vvoda_akt,
	doljnost_vvoda_akt,
	data_ekpertnogo_zakl,
	nomer_ekpertnogo_zakl,
	naimenov_ekspert_org,
	fio_vneseniya,
	naimenov_upr_org,
	istochnik_dannich,
	fio_vneseniya1,
	oprosniy_list,
	zakluchenie_du,
	zakluchenie_du1,
	k_priemke_b,
	qr,
	qrpath,
	bti_adres,
	bti_naznachenie,
	bti_god_postroyki,
	bti_etaji,
	bti_alt_adres,
	bti_for_find,
	memo,
	v_plane_key,
	osmotren_key,
	isklucheno_key,
	isklucheno_memo,
	isklucheno_pic,
	isklucheno_date,
	zamechaniya_key,
	zamechaniya_nashi_key,
	zamechaniya_nashi_text,
	zamechaniya_nashi_text_boss,
	zamechaniya_nashi_date,
	zamechaniya_nashi_date_ustr,
	akt_v_ogs_key,
	akt_podpisan_key,
	ustraneno_key,
	new_key,
	dlinafasada_key,
	piktogrammi_key,
	elektrpodkl_key,
	vse_ok_key,
	proverka_timer,
	koordinati_timer,
	v_plane_v_rabote,
	prinato_status,
	prinato_data,
	prinato_memo,
	zakluchenie_du_history,
	wgs84_leg,
	dom_marshrut,
	data_v_proverku,
	data_ustr_zam,
	adres_bti_proverka,
	fasad_summa,
	nalichie_summa,
	drugie_summa,
	montaj_summa,
	electrika_summa,
	tipdu_summa,
	kategoriya_summa,
	priznak,
	domdu2,
	log_file,
	sootv_bti_b,
	kartograf_zam,
	wgs84
	) 
	OUTPUT  INSERTED.kod,  INSERTED.unikalniy, inserted.num INTO @R 
SELECT
	 num
	,project
	,kategoriya
	,unikalniy
	,[dbo].[kodDU](tipdu)
	,[dbo].[kodDU](tipdumatc)
	,razmerdu
	,ploshaddu
	,ulitsadu
	,domdu_ilion
	,domdu
	, montaj
	, montaj_plan
	,subpodradchik
	, date1
	,pic1
	, checkpic1
	,pic2
	,pic3
	,checkpic3
	,egko_map_txt
	,proverka_karti
	,fio
	,doljnost
	,org
	,history
	,data_osmotra
	,data_osmotra_fio
	,data_osmotra_doljnost
	,fact_ustanovki
	,[dbo].[varchar_bit_ДаНет](vospriyatie)
	,[dbo].[varchar_bit_ДаНет](dlina_fasada)
	,[dbo].[nchar10_bit_ДаНет](koldu)
	,[dbo].[varchar_bit_ДаНет](piktogrammi)
	,[dbo].[varchar_bit_УстановленаНеУстановлена](raspayachnaya_korobka)
	,[dbo].[nchar10_bit_ДаНет](nalichie_podkl)
	,[dbo].[nchar10_bit_ДаНет](vozmojnost_podkl)
	,[dbo].[varchar_bit_ДаНет](demontaj)
	,[dbo].[varchar_bit_ТребуетсяНеТребуется](vost_fasada)
	,proverka_podsveta_foto
	,data_proverka_podsveta
	,proverka_podsveta_sost
	,proverka_podsveta_dojnost
	,proverka_podsveta_fio
	,[dbo].[varchar_bit_СоответствуетНеСоответствует](sootvetstvie_tipa)
	,[dbo].[varchar_bit_ДаНет](ust_na_linii)
	,egko_fio
	,egko_doljnost
	, egko_data
	,tip_neobkhodimix_rabot
	,nesootv_tipa
	,nesootv_kategorii
	,nedemontirovan_stariy
	,vvost_fasad
	,ne_ustanovlen
	,zamechaniy_net
	,[status]
	,status_fio
	, data_vvoda_akt
	,fio_vvoda_akt
	,doljnost_vvoda_akt
	, data_ekpertnogo_zakl
	,nomer_ekpertnogo_zakl
	,naimenov_ekspert_org
	,fio_vneseniya
	,naimenov_upr_org
	,istochnik_dannich
	,fio_vneseniya1
	,oprosniy_list
	,zakluchenie_du
	,zakluchenie_du1
	,[dbo].[varchar_bit_ДаНет](k_priemke)
	,qr
	,qrpath
	,bti_adres
	,bti_naznachenie
	,bti_god_postroyki
	,bti_etaji
	,bti_alt_adres
	,inserted.bti_for_find
	, memo
	, v_plane_key
	, osmotren_key
	, isklucheno_key
	, isklucheno_memo
	, isklucheno_pic
	, isklucheno_date
	, zamechaniya_key
	, zamechaniya_nashi_key
	, zamechaniya_nashi_text
	, zamechaniya_nashi_text_boss
	, zamechaniya_nashi_date
	, zamechaniya_nashi_date_ustr
	, akt_v_ogs_key
	, akt_podpisan_key
	, ustraneno_key
	, new_key
	, dlinafasada_key
	, piktogrammi_key
	, elektrpodkl_key
	, vse_ok_key
	,proverka_timer
	,koordinati_timer
	,v_plane_v_rabote
	, prinato_status
	, prinato_data
	, prinato_memo
	,zakluchenie_du_history
	,DBO.str_to_geographyPoint(INSERTED.koordinati_leg,4326) 
	, dom_marshrut
	, data_v_proverku
	, data_ustr_zam
	,adres_bti_proverka
	, fasad_summa
	, nalichie_summa
	, drugie_summa
	, montaj_summa
	, electrika_summa
	, tipdu_summa
	, kategoriya_summa
	,inserted.priznak
	,domdu2
	, log_file
	,[dbo].[varchar_bit_СоответствуетНеСоответствует](sootv_bti)
	, kartograf_zam
	, DBO.str_to_geographyPoint(INSERTED.geogr_koord,4326)
FROM INSERTED
	inner join adress a on 
		a.okrug=INSERTED.Okrug
		and
		a.ulitsa=INSERTED.ulitsa
		and 
		a.nazvanie_ulitsi=INSERTED.nazvanie_ulitsi 	
	left outer join dom_type DT on a.dom_type=dt.id
	left outer join dom_type ST on st.id = a.stroenie_type
	inner join tipdu on tipdu.tip=INSERTED.tipdu
WHERE
	not INSERTED.unikalniy in (select unikalniy from reestr_t)
	and [dbo].[deleteDublSpace](INSERTED.dom_korp_str)=[dbo].[dom_korp_str_toString](a.dom,a.korpus,a.stroenie,dt.domtype_full,st.domtype_full)

/*nesootv_demontirovan*/
IF (EXISTS
	(SELECT * FROM INSERTED
	WHERE
		(ltrim(rtrim(isnull(nesootv_demontirovan_status,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam1_text,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam1_key,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam1_pic,'')))<>'') OR
		(ltrim(rtrim(isnull(nesootv_demontirovan_zam,'')))<>'') OR
		(ltrim(rtrim(isnull(nesootv_demontirovan_memo,'')))<>'') OR
		(ltrim(rtrim(isnull(nesootv_demontirovan_foto,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_nesootv_demontirovan_memo,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_nesootv_demontirovan_foto,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_nesootv_demontirovan_status,'')))<>'')))
	INSERT INTO reestr_zamechaniya(KOD,zam_type,status,zam,memo,foto,podtverjd_memo,podtverjd_foto,podtverjd_status,[text],[key],pic)
	SELECT R.KOD,'nesootv_demontirovan',nesootv_demontirovan_status,nesootv_demontirovan_zam,nesootv_demontirovan_memo,nesootv_demontirovan_foto,podtverjd_nesootv_demontirovan_memo,podtverjd_nesootv_demontirovan_foto,podtverjd_nesootv_demontirovan_status,dop_zam1_text,dop_zam1_key,dop_zam1_pic
	FROM  @R AS  R INNER JOIN INSERTED ON  R.unikalniy = INSERTED.unikalniy

/*vostanovl_fasad*/
IF (EXISTS
	(SELECT * FROM INSERTED
	WHERE
		(ltrim(rtrim(isnull(vostanovl_fasad_status,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam2_text,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam2_key,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam2_pic,'')))<>'') OR
		(ltrim(rtrim(isnull(vostanovl_fasad_zam,'')))<>'') OR
		(ltrim(rtrim(isnull(vostanovl_fasad_memo,'')))<>'') OR
		(ltrim(rtrim(isnull(vostanovl_fasad_foto,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_vostanovl_fasad_memo,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_vostanovl_fasad_foto,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_vostanovl_fasad_status,'')))<>'')))
	INSERT INTO reestr_zamechaniya(KOD,zam_type,status,zam,memo,foto,podtverjd_memo,podtverjd_foto,podtverjd_status,[text],[key],pic)
	SELECT R.KOD,'vostanovl_fasad',vostanovl_fasad_status,vostanovl_fasad_zam,vostanovl_fasad_memo,vostanovl_fasad_foto,podtverjd_vostanovl_fasad_memo,podtverjd_vostanovl_fasad_foto,podtverjd_vostanovl_fasad_status,dop_zam2_text,dop_zam2_key,dop_zam2_pic
	FROM  @R AS  R INNER JOIN INSERTED ON  R.unikalniy = INSERTED.unikalniy

/*zam1*/
IF (EXISTS
	(SELECT * FROM INSERTED
	WHERE
		(ltrim(rtrim(isnull(zam1_status,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam3_text,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam3_key,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam3_pic,'')))<>'') OR
		(ltrim(rtrim(isnull(zam1_memo,'')))<>'') OR
		(ltrim(rtrim(isnull(zam1_foto,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_zam1_memo,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_zam1_foto,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_zam1_status,'')))<>'')))
	INSERT INTO reestr_zamechaniya(KOD,zam_type,[status],memo,foto,podtverjd_memo,podtverjd_foto,podtverjd_status,[text],[key],pic)
	SELECT R.KOD,'zam1',zam1_status,zam1_memo,zam1_foto,podtverjd_zam1_memo,podtverjd_zam1_foto,podtverjd_zam1_status,dop_zam3_text,dop_zam3_key,dop_zam3_pic
	FROM  @R AS  R INNER JOIN INSERTED ON  R.unikalniy = INSERTED.unikalniy

/*zam2*/
IF (EXISTS
	(SELECT * FROM INSERTED
	WHERE
		(ltrim(rtrim(isnull(zam2_status,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam4_text,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam4_key,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam4_pic,'')))<>'') OR
		(ltrim(rtrim(isnull(zam2_memo,'')))<>'') OR
		(ltrim(rtrim(isnull(zam2_foto,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_zam2_memo,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_zam2_foto,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_zam2_status,'')))<>'')))
	INSERT INTO reestr_zamechaniya(KOD,zam_type,[status],memo,foto,podtverjd_memo,podtverjd_foto,podtverjd_status,[text],[key],pic)
	SELECT R.KOD,'zam2',zam2_status,zam2_memo,zam2_foto,podtverjd_zam2_memo,podtverjd_zam2_foto,podtverjd_zam2_status,dop_zam4_text,dop_zam4_key,dop_zam4_pic
	FROM  @R AS  R INNER JOIN INSERTED ON  R.unikalniy = INSERTED.unikalniy

/*zam3*/
IF (EXISTS
	(SELECT * FROM INSERTED
	WHERE
		(ltrim(rtrim(isnull(zam3_status,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam5_text,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam5_key,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam5_pic,'')))<>'') OR
		(ltrim(rtrim(isnull(zam3_memo,'')))<>'') OR
		(ltrim(rtrim(isnull(zam3_foto,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_zam3_memo,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_zam3_foto,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_zam3_status,'')))<>'')))
	INSERT INTO reestr_zamechaniya(KOD,zam_type,[status],memo,foto,podtverjd_memo,podtverjd_foto,podtverjd_status,[text],[key],pic)
	SELECT R.KOD,'zam3',zam3_status,zam3_memo,zam3_foto,podtverjd_zam3_memo,podtverjd_zam3_foto,podtverjd_zam3_status,dop_zam5_text,dop_zam5_key,dop_zam5_pic
	FROM  @R AS  R INNER JOIN INSERTED ON  R.unikalniy = INSERTED.unikalniy

/*zam4*/
IF (EXISTS
	(SELECT * FROM INSERTED
	WHERE
		(ltrim(rtrim(isnull(zam4_status,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam6_text,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam6_key,'')))<>'') OR
		(ltrim(rtrim(isnull(dop_zam6_pic,'')))<>'') OR
		(ltrim(rtrim(isnull(zam4_memo,'')))<>'') OR
		(ltrim(rtrim(isnull(zam4_foto,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_zam4_memo,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_zam4_foto,'')))<>'') OR
		(ltrim(rtrim(isnull(podtverjd_zam4_status,'')))<>'')))
	INSERT INTO reestr_zamechaniya(KOD,zam_type,status,memo,foto,podtverjd_memo,podtverjd_foto,podtverjd_status,[text],[key],pic)
	SELECT R.KOD,'zam4',zam4_status,zam4_memo,zam4_foto,podtverjd_zam4_memo,podtverjd_zam4_foto,podtverjd_zam4_status,dop_zam6_text,dop_zam6_key,dop_zam6_pic
	FROM  @R AS  R INNER JOIN INSERTED ON  R.unikalniy = INSERTED.unikalniy

/*ustanovka_du*/
IF (EXISTS
	(SELECT * FROM INSERTED
	WHERE
	(ltrim(rtrim(isnull(ustanovka_du_status,'')))<>'') OR
	(ltrim(rtrim(isnull(ustanovka_du_zam,'')))<>'') OR
	(ltrim(rtrim(isnull(ustanovka_du_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(ustanovka_du_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_ustanovka_du_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_ustanovka_du_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_ustanovka_du_status,'')))<>'')))
	INSERT INTO reestr_zamechaniya(KOD,zam_type,status,zam,memo,foto,podtverjd_memo,podtverjd_foto,podtverjd_status)
	SELECT R.KOD,'ustanovka_du',ustanovka_du_status,ustanovka_du_zam,ustanovka_du_memo,ustanovka_du_foto,podtverjd_ustanovka_du_memo,podtverjd_ustanovka_du_foto,podtverjd_ustanovka_du_status
	FROM  @R AS  R INNER JOIN INSERTED ON  R.unikalniy = INSERTED.unikalniy
/*nesootv_tip*/
IF (EXISTS
	(SELECT * FROM INSERTED
	WHERE
	(ltrim(rtrim(isnull(nesootv_tip_status,'')))<>'') OR
	(ltrim(rtrim(isnull(nesootv_tip_zam,'')))<>'') OR
	(ltrim(rtrim(isnull(nesootv_tip_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(nesootv_tip_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_nesootv_tip_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_nesootv_tip_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_nesootv_tip_status,'')))<>'')))
	INSERT INTO reestr_zamechaniya(KOD,zam_type,status,zam,memo,foto,podtverjd_memo,podtverjd_foto,podtverjd_status)
	SELECT R.KOD,'nesootv_tip',nesootv_tip_status,nesootv_tip_zam,nesootv_tip_memo,nesootv_tip_foto,podtverjd_nesootv_tip_memo,podtverjd_nesootv_tip_foto,podtverjd_nesootv_tip_status
	FROM  @R AS  R INNER JOIN INSERTED ON  R.unikalniy = INSERTED.unikalniy
/*nesootv_kategorii*/
IF (EXISTS
	(SELECT * FROM INSERTED
	WHERE
	(ltrim(rtrim(isnull(nesootv_kategorii_status,'')))<>'') OR
	(ltrim(rtrim(isnull(nesootv_kategorii_zam,'')))<>'') OR
	(ltrim(rtrim(isnull(nesootv_kategorii_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(nesootv_kategorii_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_nesootv_kategorii_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_nesootv_kategorii_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_nesootv_kategorii_status,'')))<>'')))
	INSERT INTO reestr_zamechaniya(KOD,zam_type,status,zam,memo,foto,podtverjd_memo,podtverjd_foto,podtverjd_status)
	SELECT R.KOD,'nesootv_kategorii',nesootv_kategorii_status,nesootv_kategorii_zam,nesootv_kategorii_memo,nesootv_kategorii_foto,podtverjd_nesootv_kategorii_memo,podtverjd_nesootv_kategorii_foto,podtverjd_nesootv_kategorii_status
	FROM  @R AS  R INNER JOIN INSERTED ON  R.unikalniy = INSERTED.unikalniy
/*vozmojnost_el_podkl*/
IF (EXISTS
	(SELECT * FROM INSERTED
	WHERE
	(ltrim(rtrim(isnull(vozmojnost_el_podkl_status,'')))<>'') OR
	(ltrim(rtrim(isnull(vozmojnost_el_podkl_zam,'')))<>'') OR
	(ltrim(rtrim(isnull(vozmojnost_el_podkl_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(vozmojnost_el_podkl_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_vozmojnost_el_podkl_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_vozmojnost_el_podkl_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_vozmojnost_el_podkl_status,'')))<>'')))
	INSERT INTO reestr_zamechaniya(KOD,zam_type,status,zam,memo,foto,podtverjd_memo,podtverjd_foto,podtverjd_status)
	SELECT R.KOD,'vozmojnost_el_podkl',vozmojnost_el_podkl_status,vozmojnost_el_podkl_zam,vozmojnost_el_podkl_memo,vozmojnost_el_podkl_foto,podtverjd_vozmojnost_el_podkl_memo,podtverjd_vozmojnost_el_podkl_foto,podtverjd_vozmojnost_el_podkl_status
	FROM  @R AS  R INNER JOIN INSERTED ON  R.unikalniy = INSERTED.unikalniy
/*pictogrammi*/
IF (EXISTS
	(SELECT * FROM INSERTED
	WHERE
	(ltrim(rtrim(isnull(pictogrammi_status,'')))<>'') OR
	(ltrim(rtrim(isnull(pictogrammi_zam,'')))<>'') OR
	(ltrim(rtrim(isnull(pictogrammi_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(pictogrammi_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_pictogrammi_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_pictogrammi_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_pictogrammi_status,'')))<>'')))
	INSERT INTO reestr_zamechaniya(KOD,zam_type,status,zam,memo,foto,podtverjd_memo,podtverjd_foto,podtverjd_status)
	SELECT R.KOD,'pictogrammi',pictogrammi_status,pictogrammi_zam,pictogrammi_memo,pictogrammi_foto,podtverjd_pictogrammi_memo,podtverjd_pictogrammi_foto,podtverjd_pictogrammi_status
	FROM  @R AS  R INNER JOIN INSERTED ON  R.unikalniy = INSERTED.unikalniy
/*podkluchenie*/
IF (EXISTS
	(SELECT * FROM INSERTED
	WHERE
	(ltrim(rtrim(isnull(podkluchenie_status,'')))<>'') OR
	(ltrim(rtrim(isnull(podkluchenie_zam,'')))<>'') OR
	(ltrim(rtrim(isnull(podkluchenie_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(podkluchenie_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_podkluchenie_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_podkluchenie_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_podkluchenie_status,'')))<>'')))
	INSERT INTO reestr_zamechaniya(KOD,zam_type,status,zam,memo,foto,podtverjd_memo,podtverjd_foto,podtverjd_status)
	SELECT R.KOD,'podkluchenie',podkluchenie_status,podkluchenie_zam,podkluchenie_memo,podkluchenie_foto,podtverjd_podkluchenie_memo,podtverjd_podkluchenie_foto,podtverjd_podkluchenie_status
	FROM  @R AS  R INNER JOIN INSERTED ON  R.unikalniy = INSERTED.unikalniy
/*dlina*/
IF (EXISTS
	(SELECT * FROM INSERTED
	WHERE
	(ltrim(rtrim(isnull(dlina_status,'')))<>'') OR
	(ltrim(rtrim(isnull(dlina_zam,'')))<>'') OR
	(ltrim(rtrim(isnull(dlina_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(dlina_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_dlina_memo,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_dlina_foto,'')))<>'') OR
	(ltrim(rtrim(isnull(podtverjd_dlina_status,'')))<>'')))
	INSERT INTO reestr_zamechaniya(KOD,zam_type,status,zam,memo,foto,podtverjd_memo,podtverjd_foto,podtverjd_status)
	SELECT R.KOD,'dlina',dlina_status,dlina_zam,dlina_memo,dlina_foto,podtverjd_dlina_memo,podtverjd_dlina_foto,podtverjd_dlina_status
	FROM  @R AS  R INNER JOIN INSERTED ON  R.unikalniy = INSERTED.unikalniy

END



GO

CREATE TRIGGER [dbo].[insteadTrig_UPDATE] ON [dbo].[reestr]
INSTEAD OF update
AS
BEGIN
SET NOCOUNT ON
SET XACT_ABORT OFF
--DECLARE @INSTABLE TABLE (ACTION VARCHAR(100),KOD INT, ID UNIQUEIDENTIFIER)
--DECLARE @INSTABLE1 TABLE (KOD INT, vospriyatie varchar (50))
/*nesootv_demontirovan*/
if (UPDATE(nesootv_demontirovan_status) OR UPDATE(dop_zam1_text) OR UPDATE(dop_zam1_key) OR UPDATE(dop_zam1_pic) OR UPDATE(nesootv_demontirovan_zam) OR UPDATE(nesootv_demontirovan_memo) OR
	UPDATE(nesootv_demontirovan_foto) OR UPDATE(podtverjd_nesootv_demontirovan_memo) OR UPDATE(podtverjd_nesootv_demontirovan_foto) OR UPDATE(podtverjd_nesootv_demontirovan_status))
MERGE INTO reestr_zamechaniya
USING INSERTED
ON reestr_zamechaniya.kod=inserted.kod AND reestr_zamechaniya.zam_type ='nesootv_demontirovan'
/*WHEN MATCHED AND
	(ISNULL(inserted.nesootv_demontirovan_status,'')='' AND
	ISNULL(inserted.dop_zam1_text,'')='' AND
	ISNULL(inserted.dop_zam1_key,'')='' AND
	ISNULL(inserted.dop_zam1_pic,'')='' AND
	ISNULL(inserted.nesootv_demontirovan_zam,'')='' AND
	ISNULL(inserted.nesootv_demontirovan_memo,'')='' AND
	ISNULL(inserted.nesootv_demontirovan_foto,'')='' AND
	ISNULL(inserted.podtverjd_nesootv_demontirovan_memo,'')='' AND
	ISNULL(inserted.podtverjd_nesootv_demontirovan_foto,'')='' AND
	ISNULL(inserted.podtverjd_nesootv_demontirovan_status,'')='') THEN DELETE*/
WHEN MATCHED THEN
	UPDATE
	SET
		[status]=inserted.nesootv_demontirovan_status
		,[text]=inserted.dop_zam1_text
		,[key]=inserted.dop_zam1_key
		,pic=inserted.dop_zam1_pic
		,zam=inserted.nesootv_demontirovan_zam
		,memo=inserted.nesootv_demontirovan_memo
		,foto=inserted.nesootv_demontirovan_foto
		,podtverjd_memo=inserted.podtverjd_nesootv_demontirovan_memo
		,podtverjd_foto=inserted.podtverjd_nesootv_demontirovan_foto
		,podtverjd_status=inserted.podtverjd_nesootv_demontirovan_status	
WHEN NOT MATCHED AND (NOT INSERTED.kod IS NULL) THEN
		INSERT 
			 (kod
			 ,zam_type
			 ,[status]
			 ,[text]
			 ,[key]
			 ,pic
			 ,zam
			 ,memo
			 ,foto
			 ,podtverjd_memo
			 ,podtverjd_foto
			 ,podtverjd_status)
		 VALUES 
			 (INSERTED.kod, 
			 'nesootv_demontirovan',
			 INSERTED.nesootv_demontirovan_status,
			 INSERTED.dop_zam1_text,
			 INSERTED.dop_zam1_key,
			 INSERTED.dop_zam1_pic,
			 INSERTED.nesootv_demontirovan_zam,
			 INSERTED.nesootv_demontirovan_memo,
			 INSERTED.nesootv_demontirovan_foto,
			 INSERTED.podtverjd_nesootv_demontirovan_memo,
			 INSERTED.podtverjd_nesootv_demontirovan_foto,
			 INSERTED.podtverjd_nesootv_demontirovan_status);

/*vostanovl_fasad*/
if (UPDATE(vostanovl_fasad_status) OR UPDATE(dop_zam2_text) OR UPDATE(dop_zam2_key) OR UPDATE(dop_zam2_pic) OR UPDATE(vostanovl_fasad_zam) OR
	UPDATE(vostanovl_fasad_memo) OR UPDATE(vostanovl_fasad_foto) OR UPDATE(podtverjd_vostanovl_fasad_memo) OR UPDATE(podtverjd_vostanovl_fasad_foto) OR	UPDATE(podtverjd_vostanovl_fasad_status))
MERGE INTO reestr_zamechaniya
USING INSERTED
ON reestr_zamechaniya.kod=inserted.kod AND reestr_zamechaniya.zam_type ='vostanovl_fasad'
/*WHEN MATCHED AND
	(ISNULL(inserted.vostanovl_fasad_status,'')='' AND
	ISNULL(inserted.dop_zam2_text,'')='' AND
	ISNULL(inserted.dop_zam2_key,'')='' AND
	ISNULL(inserted.dop_zam2_pic,'')='' AND
	ISNULL(inserted.vostanovl_fasad_zam,'')='' AND
	ISNULL(inserted.vostanovl_fasad_memo,'')='' AND
	ISNULL(inserted.vostanovl_fasad_foto,'')='' AND
	ISNULL(inserted.podtverjd_vostanovl_fasad_memo,'')='' AND
	ISNULL(inserted.podtverjd_vostanovl_fasad_foto,'')='' AND
	ISNULL(inserted.podtverjd_vostanovl_fasad_status,'')='') THEN DELETE*/
WHEN MATCHED THEN
	UPDATE
	SET
		[status]=inserted.vostanovl_fasad_status
		,[text]=inserted.dop_zam2_text
		,[key]=inserted.dop_zam2_key
		,pic=inserted.dop_zam2_pic
		,zam=inserted.vostanovl_fasad_zam
		,memo=inserted.vostanovl_fasad_memo
		,foto=inserted.vostanovl_fasad_foto
		,podtverjd_memo=inserted.podtverjd_vostanovl_fasad_memo
		,podtverjd_foto=inserted.podtverjd_vostanovl_fasad_foto
		,podtverjd_status=inserted.podtverjd_vostanovl_fasad_status	
WHEN NOT MATCHED AND (NOT INSERTED.kod IS NULL)THEN
		INSERT 
			 (kod
			 ,zam_type
			 ,[status]
			 ,[text]
			 ,[key]
			 ,pic
			 ,zam
			 ,memo
			 ,foto
			 ,podtverjd_memo
			 ,podtverjd_foto
			 ,podtverjd_status)
		 VALUES 
			 (INSERTED.kod, 
			 'vostanovl_fasad',
			 INSERTED.vostanovl_fasad_status,
			 INSERTED.dop_zam2_text,
			 INSERTED.dop_zam2_key,
			 INSERTED.dop_zam2_pic,
			 INSERTED.vostanovl_fasad_zam,
			 INSERTED.vostanovl_fasad_memo,
			 INSERTED.vostanovl_fasad_foto,
			 INSERTED.podtverjd_vostanovl_fasad_memo,
			 INSERTED.podtverjd_vostanovl_fasad_foto,
			 INSERTED.podtverjd_vostanovl_fasad_status);

/*zam1*/

if (UPDATE(zam1_status) OR UPDATE(dop_zam3_text) OR UPDATE(dop_zam3_key) OR UPDATE(dop_zam3_pic) OR UPDATE(zam1_memo) OR
	UPDATE(zam1_foto) OR UPDATE(podtverjd_zam1_memo) OR UPDATE(podtverjd_zam1_foto) OR UPDATE(podtverjd_zam1_status))
MERGE INTO reestr_zamechaniya
USING INSERTED
ON reestr_zamechaniya.kod=inserted.kod AND reestr_zamechaniya.zam_type ='zam1'
/*WHEN MATCHED AND
	(ISNULL(inserted.zam1_status,'')='' AND
	ISNULL(inserted.dop_zam3_text,'')='' AND
	ISNULL(inserted.dop_zam3_key,'')='' AND
	ISNULL(inserted.dop_zam3_pic,'')='' AND
	ISNULL(inserted.zam1_memo,'')='' AND
	ISNULL(inserted.zam1_foto,'')='' AND
	ISNULL(inserted.podtverjd_zam1_memo,'')='' AND
	ISNULL(inserted.podtverjd_zam1_foto,'')='' AND
	ISNULL(inserted.podtverjd_zam1_status,'')='') THEN DELETE*/
WHEN MATCHED THEN
	UPDATE
	SET
		[status]=inserted.zam1_status
		,[text]=inserted.dop_zam3_text
		,[key]=inserted.dop_zam3_key
		,pic=inserted.dop_zam3_pic
		,memo=inserted.zam1_memo
		,foto=inserted.zam1_foto
		,podtverjd_memo=inserted.podtverjd_zam1_memo
		,podtverjd_foto=inserted.podtverjd_zam1_foto
		,podtverjd_status=inserted.podtverjd_zam1_status	
WHEN NOT MATCHED AND (NOT INSERTED.kod IS NULL)THEN
		INSERT 
			 (kod
			 ,zam_type
			 ,[status]
			 ,[text]
			 ,[key]
			 ,pic
			 ,memo
			 ,foto
			 ,podtverjd_memo
			 ,podtverjd_foto
			 ,podtverjd_status)
		 VALUES 
			 (INSERTED.kod, 
			 'zam1',
			 INSERTED.zam1_status,
			 INSERTED.dop_zam3_text,
			 INSERTED.dop_zam3_key,
			 INSERTED.dop_zam3_pic,
			 INSERTED.zam1_memo,
			 INSERTED.zam1_foto,
			 INSERTED.podtverjd_zam1_memo,
			 INSERTED.podtverjd_zam1_foto,
			 INSERTED.podtverjd_zam1_status);
/*zam2*/
if (UPDATE(zam2_status) OR UPDATE(dop_zam4_text) OR UPDATE(dop_zam4_key) OR UPDATE(dop_zam4_pic) OR UPDATE(zam2_memo) OR
	UPDATE(zam2_foto) OR UPDATE(podtverjd_zam2_memo) OR UPDATE(podtverjd_zam2_foto) OR UPDATE(podtverjd_zam2_status))
MERGE INTO reestr_zamechaniya
USING INSERTED
ON reestr_zamechaniya.kod=inserted.kod AND reestr_zamechaniya.zam_type ='zam2'
/*WHEN MATCHED AND
	(ISNULL(inserted.zam2_status,'')='' AND
	ISNULL(inserted.dop_zam4_text,'')='' AND
	ISNULL(inserted.dop_zam4_key,'')='' AND
	ISNULL(inserted.dop_zam4_pic,'')='' AND
	ISNULL(inserted.zam2_memo,'')='' AND
	ISNULL(inserted.zam2_foto,'')='' AND
	ISNULL(inserted.podtverjd_zam2_memo,'')='' AND
	ISNULL(inserted.podtverjd_zam2_foto,'')='' AND
	ISNULL(inserted.podtverjd_zam2_status,'')='') THEN DELETE*/
WHEN MATCHED THEN
	UPDATE
	SET
		[status]=inserted.zam2_status
		,[text]=inserted.dop_zam4_text
		,[key]=inserted.dop_zam4_key
		,pic=inserted.dop_zam4_pic
		,memo=inserted.zam2_memo
		,foto=inserted.zam2_foto
		,podtverjd_memo=inserted.podtverjd_zam2_memo
		,podtverjd_foto=inserted.podtverjd_zam2_foto
		,podtverjd_status=inserted.podtverjd_zam2_status	
WHEN NOT MATCHED AND (NOT INSERTED.kod IS NULL)THEN
		INSERT 
			 (kod
			 ,zam_type
			 ,[status]
			 ,[text]
			 ,[key]
			 ,pic
			 ,memo
			 ,foto
			 ,podtverjd_memo
			 ,podtverjd_foto
			 ,podtverjd_status)
		 VALUES 
			 (INSERTED.kod, 
			 'zam2',
			 INSERTED.zam2_status,
			 INSERTED.dop_zam4_text,
			 INSERTED.dop_zam4_key,
			 INSERTED.dop_zam4_pic,
			 INSERTED.zam2_memo,
			 INSERTED.zam2_foto,
			 INSERTED.podtverjd_zam2_memo,
			 INSERTED.podtverjd_zam2_foto,
			 INSERTED.podtverjd_zam2_status);


/*zam3*/

if (UPDATE(zam3_status) OR UPDATE(dop_zam5_text) OR UPDATE(dop_zam5_key) OR UPDATE(dop_zam5_pic) OR UPDATE(zam3_memo) OR
	UPDATE(zam3_foto) OR UPDATE(podtverjd_zam3_memo) OR UPDATE(podtverjd_zam3_foto) OR UPDATE(podtverjd_zam3_status))
MERGE INTO reestr_zamechaniya
USING INSERTED
ON reestr_zamechaniya.kod=inserted.kod AND reestr_zamechaniya.zam_type ='zam3'
/*WHEN MATCHED AND
	(ISNULL(inserted.zam3_status,'')='' AND
	ISNULL(inserted.dop_zam5_text,'')='' AND
	ISNULL(inserted.dop_zam5_key,'')='' AND
	ISNULL(inserted.dop_zam5_pic,'')='' AND
	ISNULL(inserted.zam3_memo,'')='' AND
	ISNULL(inserted.zam3_foto,'')='' AND
	ISNULL(inserted.podtverjd_zam3_memo,'')='' AND
	ISNULL(inserted.podtverjd_zam3_foto,'')='' AND
	ISNULL(inserted.podtverjd_zam3_status,'')='') THEN DELETE*/
WHEN MATCHED THEN
	UPDATE
	SET
		[status]=inserted.zam3_status
		,[text]=inserted.dop_zam5_text
		,[key]=inserted.dop_zam5_key
		,pic=inserted.dop_zam5_pic
		,memo=inserted.zam3_memo
		,foto=inserted.zam3_foto
		,podtverjd_memo=inserted.podtverjd_zam3_memo
		,podtverjd_foto=inserted.podtverjd_zam3_foto
		,podtverjd_status=inserted.podtverjd_zam3_status	
WHEN NOT MATCHED AND (NOT INSERTED.kod IS NULL)THEN
		INSERT 
			 (kod
			 ,zam_type
			 ,[status]
			 ,[text]
			 ,[key]
			 ,pic
			 ,memo
			 ,foto
			 ,podtverjd_memo
			 ,podtverjd_foto
			 ,podtverjd_status)
		 VALUES 
			 (INSERTED.kod, 
			 'zam3',
			 INSERTED.zam3_status,
			 INSERTED.dop_zam5_text,
			 INSERTED.dop_zam5_key,
			 INSERTED.dop_zam5_pic,
			 INSERTED.zam3_memo,
			 INSERTED.zam3_foto,
			 INSERTED.podtverjd_zam3_memo,
			 INSERTED.podtverjd_zam3_foto,
			 INSERTED.podtverjd_zam3_status);

/*zam4*/

if (UPDATE(zam4_status) OR UPDATE(dop_zam6_text) OR UPDATE(dop_zam6_key) OR UPDATE(dop_zam6_pic) OR UPDATE(zam4_memo) OR
	UPDATE(zam4_foto) OR UPDATE(podtverjd_zam4_memo) OR UPDATE(podtverjd_zam4_foto) OR UPDATE(podtverjd_zam4_status))
MERGE INTO reestr_zamechaniya
USING INSERTED
ON reestr_zamechaniya.kod=inserted.kod AND reestr_zamechaniya.zam_type ='zam4'
/*WHEN MATCHED AND
	(ISNULL(inserted.zam4_status,'')='' AND
	ISNULL(inserted.dop_zam6_text,'')='' AND
	ISNULL(inserted.dop_zam6_key,'')='' AND
	ISNULL(inserted.dop_zam6_pic,'')='' AND
	ISNULL(inserted.zam4_memo,'')='' AND
	ISNULL(inserted.zam4_foto,'')='' AND
	ISNULL(inserted.podtverjd_zam4_memo,'')='' AND
	ISNULL(inserted.podtverjd_zam4_foto,'')='' AND
	ISNULL(inserted.podtverjd_zam4_status,'')='') THEN DELETE*/
WHEN MATCHED THEN
	UPDATE
	SET
		[status]=inserted.zam4_status
		,[text]=inserted.dop_zam6_text
		,[key]=inserted.dop_zam6_key
		,pic=inserted.dop_zam6_pic
		,memo=inserted.zam4_memo
		,foto=inserted.zam4_foto
		,podtverjd_memo=inserted.podtverjd_zam4_memo
		,podtverjd_foto=inserted.podtverjd_zam4_foto
		,podtverjd_status=inserted.podtverjd_zam4_status	
WHEN NOT MATCHED AND (NOT INSERTED.kod IS NULL)THEN
		INSERT (
			 kod
			 ,zam_type
			 ,[status]
			 ,[text]
			 ,[key]
			 ,pic
			 ,memo
			 ,foto
			 ,podtverjd_memo
			 ,podtverjd_foto
			 ,podtverjd_status)
		 VALUES 
			 (
			 INSERTED.kod, 
			 'zam4',
			 INSERTED.zam4_status,
			 INSERTED.dop_zam6_text,
			 INSERTED.dop_zam6_key,
			 INSERTED.dop_zam6_pic,
			 INSERTED.zam4_memo,
			 INSERTED.zam4_foto,
			 INSERTED.podtverjd_zam4_memo,
			 INSERTED.podtverjd_zam4_foto,
			 INSERTED.podtverjd_zam4_status);

/*UPDATE reestr_v SET ZAM4_ID=INSTABLE.ID FROM reestr_v INNER JOIN @INSTABLE AS INSTABLE ON INSTABLE.KOD=reestr_v.kod*/
/*ustanovka_du*/
if (UPDATE(ustanovka_du_status) OR UPDATE(ustanovka_du_zam) OR
	UPDATE(ustanovka_du_memo) OR UPDATE(ustanovka_du_foto) OR UPDATE(podtverjd_ustanovka_du_memo) OR UPDATE(podtverjd_ustanovka_du_foto) OR	UPDATE(podtverjd_ustanovka_du_status))
MERGE INTO reestr_zamechaniya
USING INSERTED
ON reestr_zamechaniya.kod=inserted.kod AND reestr_zamechaniya.zam_type ='ustanovka_du'
/*WHEN MATCHED AND
	(ISNULL(inserted.ustanovka_du_status,'')='' AND
	ISNULL(inserted.ustanovka_du_zam,'')='' AND
	ISNULL(inserted.ustanovka_du_memo,'')='' AND
	ISNULL(inserted.ustanovka_du_foto,'')='' AND
	ISNULL(inserted.podtverjd_ustanovka_du_memo,'')='' AND
	ISNULL(inserted.podtverjd_ustanovka_du_foto,'')='' AND
	ISNULL(inserted.podtverjd_ustanovka_du_status,'')='') THEN DELETE*/
WHEN MATCHED THEN
	UPDATE
	SET
		[status]=inserted.ustanovka_du_status
		,zam=inserted.ustanovka_du_zam
		,memo=inserted.ustanovka_du_memo
		,foto=inserted.ustanovka_du_foto
		,podtverjd_memo=inserted.podtverjd_ustanovka_du_memo
		,podtverjd_foto=inserted.podtverjd_ustanovka_du_foto
		,podtverjd_status=inserted.podtverjd_ustanovka_du_status	
WHEN NOT MATCHED AND (NOT INSERTED.kod IS NULL)THEN
		INSERT 
			 (kod
			 ,zam_type
			 ,[status]
			 ,zam
			 ,memo
			 ,foto
			 ,podtverjd_memo
			 ,podtverjd_foto
			 ,podtverjd_status)
		 VALUES 
			 (INSERTED.kod, 
			 'ustanovka_du',
			 INSERTED.ustanovka_du_status,
			 INSERTED.ustanovka_du_zam,
			 INSERTED.ustanovka_du_memo,
			 INSERTED.ustanovka_du_foto,
			 INSERTED.podtverjd_ustanovka_du_memo,
			 INSERTED.podtverjd_ustanovka_du_foto,
			 INSERTED.podtverjd_ustanovka_du_status);

/*nesootv_tip*/
if (UPDATE(nesootv_tip_status) OR UPDATE(nesootv_tip_zam) OR
	UPDATE(nesootv_tip_memo) OR UPDATE(nesootv_tip_foto) OR UPDATE(podtverjd_nesootv_tip_memo) OR UPDATE(podtverjd_nesootv_tip_foto) OR	UPDATE(podtverjd_nesootv_tip_status))
MERGE INTO reestr_zamechaniya
USING INSERTED
ON reestr_zamechaniya.kod=inserted.kod AND reestr_zamechaniya.zam_type ='nesootv_tip'
/*WHEN MATCHED AND
	(ISNULL(inserted.nesootv_tip_status,'')='' AND
	ISNULL(inserted.nesootv_tip_zam,'')='' AND
	ISNULL(inserted.nesootv_tip_memo,'')='' AND
	ISNULL(inserted.nesootv_tip_foto,'')='' AND
	ISNULL(inserted.podtverjd_nesootv_tip_memo,'')='' AND
	ISNULL(inserted.podtverjd_nesootv_tip_foto,'')='' AND
	ISNULL(inserted.podtverjd_nesootv_tip_status,'')='') THEN DELETE*/
WHEN MATCHED THEN
	UPDATE
	SET
		[status]=inserted.nesootv_tip_status
		,zam=inserted.nesootv_tip_zam
		,memo=inserted.nesootv_tip_memo
		,foto=inserted.nesootv_tip_foto
		,podtverjd_memo=inserted.podtverjd_nesootv_tip_memo
		,podtverjd_foto=inserted.podtverjd_nesootv_tip_foto
		,podtverjd_status=inserted.podtverjd_nesootv_tip_status	
WHEN NOT MATCHED AND (NOT INSERTED.kod IS NULL)THEN
		INSERT 
			 (kod
			 ,zam_type
			 ,[status]
			 ,zam
			 ,memo
			 ,foto
			 ,podtverjd_memo
			 ,podtverjd_foto
			 ,podtverjd_status)
		 VALUES 
			 (INSERTED.kod, 
			 'nesootv_tip',
			 INSERTED.nesootv_tip_status,
			 INSERTED.nesootv_tip_zam,
			 INSERTED.nesootv_tip_memo,
			 INSERTED.nesootv_tip_foto,
			 INSERTED.podtverjd_nesootv_tip_memo,
			 INSERTED.podtverjd_nesootv_tip_foto,
			 INSERTED.podtverjd_nesootv_tip_status);


/*nesootv_kategorii*/
if (UPDATE(nesootv_kategorii_status) OR UPDATE(nesootv_kategorii_zam) OR
	UPDATE(nesootv_kategorii_memo) OR UPDATE(nesootv_kategorii_foto) OR UPDATE(podtverjd_nesootv_kategorii_memo) OR UPDATE(podtverjd_nesootv_kategorii_foto) OR	UPDATE(podtverjd_nesootv_kategorii_status))
MERGE INTO reestr_zamechaniya
USING INSERTED
ON reestr_zamechaniya.kod=inserted.kod AND reestr_zamechaniya.zam_type ='nesootv_kategorii'
/*WHEN MATCHED AND
	(ISNULL(inserted.nesootv_kategorii_status,'')='' AND
	ISNULL(inserted.nesootv_kategorii_zam,'')='' AND
	ISNULL(inserted.nesootv_kategorii_memo,'')='' AND
	ISNULL(inserted.nesootv_kategorii_foto,'')='' AND
	ISNULL(inserted.podtverjd_nesootv_kategorii_memo,'')='' AND
	ISNULL(inserted.podtverjd_nesootv_kategorii_foto,'')='' AND
	ISNULL(inserted.podtverjd_nesootv_kategorii_status,'')='') THEN DELETE*/
WHEN MATCHED THEN
	UPDATE
	SET
		[status]=inserted.nesootv_kategorii_status
		,zam=inserted.nesootv_kategorii_zam
		,memo=inserted.nesootv_kategorii_memo
		,foto=inserted.nesootv_kategorii_foto
		,podtverjd_memo=inserted.podtverjd_nesootv_kategorii_memo
		,podtverjd_foto=inserted.podtverjd_nesootv_kategorii_foto
		,podtverjd_status=inserted.podtverjd_nesootv_kategorii_status	
WHEN NOT MATCHED AND (NOT INSERTED.kod IS NULL)THEN
		INSERT 
			 (kod
			 ,zam_type
			 ,[status]
			 ,zam
			 ,memo
			 ,foto
			 ,podtverjd_memo
			 ,podtverjd_foto
			 ,podtverjd_status)
		 VALUES 
			 (INSERTED.kod, 
			 'nesootv_kategorii',
			 INSERTED.nesootv_kategorii_status,
			 INSERTED.nesootv_kategorii_zam,
			 INSERTED.nesootv_kategorii_memo,
			 INSERTED.nesootv_kategorii_foto,
			 INSERTED.podtverjd_nesootv_kategorii_memo,
			 INSERTED.podtverjd_nesootv_kategorii_foto,
			 INSERTED.podtverjd_nesootv_kategorii_status);


/*vozmojnost_el_podkl*/
if (UPDATE(vozmojnost_el_podkl_status) OR UPDATE(vozmojnost_el_podkl_zam) OR
	UPDATE(vozmojnost_el_podkl_memo) OR UPDATE(vozmojnost_el_podkl_foto) OR UPDATE(podtverjd_vozmojnost_el_podkl_memo) OR UPDATE(podtverjd_vozmojnost_el_podkl_foto) OR	UPDATE(podtverjd_vozmojnost_el_podkl_status))
MERGE INTO reestr_zamechaniya
USING INSERTED
ON reestr_zamechaniya.kod=inserted.kod AND reestr_zamechaniya.zam_type ='vozmojnost_el_podkl'
/*WHEN MATCHED AND
	(ISNULL(inserted.vozmojnost_el_podkl_status,'')='' AND
	ISNULL(inserted.vozmojnost_el_podkl_zam,'')='' AND
	ISNULL(inserted.vozmojnost_el_podkl_memo,'')='' AND
	ISNULL(inserted.vozmojnost_el_podkl_foto,'')='' AND
	ISNULL(inserted.podtverjd_vozmojnost_el_podkl_memo,'')='' AND
	ISNULL(inserted.podtverjd_vozmojnost_el_podkl_foto,'')='' AND
	ISNULL(inserted.podtverjd_vozmojnost_el_podkl_status,'')='') THEN DELETE*/
WHEN MATCHED THEN
	UPDATE
	SET
		[status]=inserted.vozmojnost_el_podkl_status
		,zam=inserted.vozmojnost_el_podkl_zam
		,memo=inserted.vozmojnost_el_podkl_memo
		,foto=inserted.vozmojnost_el_podkl_foto
		,podtverjd_memo=inserted.podtverjd_vozmojnost_el_podkl_memo
		,podtverjd_foto=inserted.podtverjd_vozmojnost_el_podkl_foto
		,podtverjd_status=inserted.podtverjd_vozmojnost_el_podkl_status	
WHEN NOT MATCHED AND (NOT INSERTED.kod IS NULL)THEN
		INSERT 
			 (kod
			 ,zam_type
			 ,[status]
			 ,zam
			 ,memo
			 ,foto
			 ,podtverjd_memo
			 ,podtverjd_foto
			 ,podtverjd_status)
		 VALUES 
			 (INSERTED.kod, 
			 'vozmojnost_el_podkl',
			 INSERTED.vozmojnost_el_podkl_status,
			 INSERTED.vozmojnost_el_podkl_zam,
			 INSERTED.vozmojnost_el_podkl_memo,
			 INSERTED.vozmojnost_el_podkl_foto,
			 INSERTED.podtverjd_vozmojnost_el_podkl_memo,
			 INSERTED.podtverjd_vozmojnost_el_podkl_foto,
			 INSERTED.podtverjd_vozmojnost_el_podkl_status);



/*pictogrammi*/
if (UPDATE(pictogrammi_status) OR UPDATE(pictogrammi_zam) OR
	UPDATE(pictogrammi_memo) OR UPDATE(pictogrammi_foto) OR UPDATE(podtverjd_pictogrammi_memo) OR UPDATE(podtverjd_pictogrammi_foto) OR	UPDATE(podtverjd_pictogrammi_status))
MERGE INTO reestr_zamechaniya
USING INSERTED
ON reestr_zamechaniya.kod=inserted.kod AND reestr_zamechaniya.zam_type ='pictogrammi'
/*WHEN MATCHED AND
	(ISNULL(inserted.pictogrammi_status,'')='' AND
	ISNULL(inserted.pictogrammi_zam,'')='' AND
	ISNULL(inserted.pictogrammi_memo,'')='' AND
	ISNULL(inserted.pictogrammi_foto,'')='' AND
	ISNULL(inserted.podtverjd_pictogrammi_memo,'')='' AND
	ISNULL(inserted.podtverjd_pictogrammi_foto,'')='' AND
	ISNULL(inserted.podtverjd_pictogrammi_status,'')='') THEN DELETE*/
WHEN MATCHED THEN
	UPDATE
	SET
		[status]=inserted.pictogrammi_status
		,zam=inserted.pictogrammi_zam
		,memo=inserted.pictogrammi_memo
		,foto=inserted.pictogrammi_foto
		,podtverjd_memo=inserted.podtverjd_pictogrammi_memo
		,podtverjd_foto=inserted.podtverjd_pictogrammi_foto
		,podtverjd_status=inserted.podtverjd_pictogrammi_status	
WHEN NOT MATCHED AND (NOT INSERTED.kod IS NULL)THEN
		INSERT 
			 (kod
			 ,zam_type
			 ,[status]
			 ,zam
			 ,memo
			 ,foto
			 ,podtverjd_memo
			 ,podtverjd_foto
			 ,podtverjd_status)
		 VALUES 
			 (INSERTED.kod, 
			 'pictogrammi',
			 INSERTED.pictogrammi_status,
			 INSERTED.pictogrammi_zam,
			 INSERTED.pictogrammi_memo,
			 INSERTED.pictogrammi_foto,
			 INSERTED.podtverjd_pictogrammi_memo,
			 INSERTED.podtverjd_pictogrammi_foto,
			 INSERTED.podtverjd_pictogrammi_status);

/*podkluchenie*/
if (UPDATE(podkluchenie_status) OR UPDATE(podkluchenie_zam) OR
	UPDATE(podkluchenie_memo) OR UPDATE(podkluchenie_foto) OR UPDATE(podtverjd_podkluchenie_memo) OR UPDATE(podtverjd_podkluchenie_foto) OR	UPDATE(podtverjd_podkluchenie_status))
MERGE INTO reestr_zamechaniya
USING INSERTED
ON reestr_zamechaniya.kod=inserted.kod AND reestr_zamechaniya.zam_type ='podkluchenie'
/*WHEN MATCHED AND
	(ISNULL(inserted.podkluchenie_status,'')='' AND
	ISNULL(inserted.podkluchenie_zam,'')='' AND
	ISNULL(inserted.podkluchenie_memo,'')='' AND
	ISNULL(inserted.podkluchenie_foto,'')='' AND
	ISNULL(inserted.podtverjd_podkluchenie_memo,'')='' AND
	ISNULL(inserted.podtverjd_podkluchenie_foto,'')='' AND
	ISNULL(inserted.podtverjd_podkluchenie_status,'')='') THEN DELETE*/
WHEN MATCHED THEN
	UPDATE
	SET
		[status]=inserted.podkluchenie_status
		,zam=inserted.podkluchenie_zam
		,memo=inserted.podkluchenie_memo
		,foto=inserted.podkluchenie_foto
		,podtverjd_memo=inserted.podtverjd_podkluchenie_memo
		,podtverjd_foto=inserted.podtverjd_podkluchenie_foto
		,podtverjd_status=inserted.podtverjd_podkluchenie_status	
WHEN NOT MATCHED AND (NOT INSERTED.kod IS NULL)THEN
		INSERT 
			 (kod
			 ,zam_type
			 ,[status]
			 ,zam
			 ,memo
			 ,foto
			 ,podtverjd_memo
			 ,podtverjd_foto
			 ,podtverjd_status)
		 VALUES 
			 (INSERTED.kod, 
			 'podkluchenie',
			 INSERTED.podkluchenie_status,
			 INSERTED.podkluchenie_zam,
			 INSERTED.podkluchenie_memo,
			 INSERTED.podkluchenie_foto,
			 INSERTED.podtverjd_podkluchenie_memo,
			 INSERTED.podtverjd_podkluchenie_foto,
			 INSERTED.podtverjd_podkluchenie_status);

/*dlina*/
if (UPDATE(dlina_status) OR UPDATE(dlina_zam) OR
	UPDATE(dlina_memo) OR UPDATE(dlina_foto) OR UPDATE(podtverjd_dlina_memo) OR UPDATE(podtverjd_dlina_foto) OR	UPDATE(podtverjd_dlina_status))
MERGE INTO reestr_zamechaniya
USING INSERTED
ON reestr_zamechaniya.kod=inserted.kod AND reestr_zamechaniya.zam_type ='dlina'
/*WHEN MATCHED AND
	(ISNULL(inserted.dlina_status,'')='' AND
	ISNULL(inserted.dlina_zam,'')='' AND
	ISNULL(inserted.dlina_memo,'')='' AND
	ISNULL(inserted.dlina_foto,'')='' AND
	ISNULL(inserted.podtverjd_dlina_memo,'')='' AND
	ISNULL(inserted.podtverjd_dlina_foto,'')='' AND
	ISNULL(inserted.podtverjd_dlina_status,'')='') THEN DELETE*/
WHEN MATCHED THEN
	UPDATE
	SET
		[status]=inserted.dlina_status
		,zam=inserted.dlina_zam
		,memo=inserted.dlina_memo
		,foto=inserted.dlina_foto
		,podtverjd_memo=inserted.podtverjd_dlina_memo
		,podtverjd_foto=inserted.podtverjd_dlina_foto
		,podtverjd_status=inserted.podtverjd_dlina_status	
WHEN NOT MATCHED AND (NOT INSERTED.kod IS NULL)THEN
		INSERT 
			 (kod
			 ,zam_type
			 ,[status]
			 ,zam
			 ,memo
			 ,foto
			 ,podtverjd_memo
			 ,podtverjd_foto
			 ,podtverjd_status)
		 VALUES 
			 (INSERTED.kod, 
			 'dlina',
			 INSERTED.dlina_status,
			 INSERTED.dlina_zam,
			 INSERTED.dlina_memo,
			 INSERTED.dlina_foto,
			 INSERTED.podtverjd_dlina_memo,
			 INSERTED.podtverjd_dlina_foto,
			 INSERTED.podtverjd_dlina_status);
/*обновление Reestr*/
IF (
	UPDATE(num) OR
	UPDATE(project) OR
	UPDATE(kategoriya) OR
	UPDATE(unikalniy) OR
	UPDATE(tipdu) OR
	UPDATE(tipdumatc) OR
	UPDATE(razmerdu) OR
	UPDATE(ploshaddu) OR
	UPDATE(ulitsadu) OR
	UPDATE(domdu_ilion) OR
	UPDATE(domdu) OR
	UPDATE(montaj) OR
	UPDATE(montaj_plan) OR
	UPDATE(date1) OR
	UPDATE(pic1) OR
	UPDATE(checkpic1) OR
	UPDATE(pic2) OR
	UPDATE(pic3) OR
	UPDATE(checkpic3) OR
	UPDATE(egko_map_txt) OR
	UPDATE(proverka_karti) OR
	UPDATE(fio) OR
	UPDATE(doljnost) OR
	UPDATE(history) OR
	UPDATE(data_osmotra) OR
	UPDATE(data_osmotra_fio) OR
	UPDATE(data_osmotra_doljnost) OR
	UPDATE(fact_ustanovki) OR
	UPDATE(proverka_podsveta_foto) OR
	UPDATE(data_proverka_podsveta) OR
	UPDATE(proverka_podsveta_sost) OR
	UPDATE(proverka_podsveta_dojnost) OR
	UPDATE(proverka_podsveta_fio) OR
	UPDATE(egko_fio) OR
	UPDATE(egko_doljnost) OR
	UPDATE(egko_data) OR
	UPDATE(tip_neobkhodimix_rabot) OR
	UPDATE(nesootv_tipa) OR
	UPDATE(nesootv_kategorii) OR
	UPDATE(nedemontirovan_stariy) OR
	UPDATE(vvost_fasad) OR
	UPDATE(ne_ustanovlen) OR
	UPDATE(zamechaniy_net) OR
	UPDATE([status]) OR
	UPDATE(status_fio) OR
	UPDATE(data_vvoda_akt) OR
	UPDATE(fio_vvoda_akt) OR
	UPDATE(doljnost_vvoda_akt) OR
	UPDATE(data_ekpertnogo_zakl) OR
	UPDATE(nomer_ekpertnogo_zakl) OR
	UPDATE(naimenov_ekspert_org) OR
	UPDATE(fio_vneseniya) OR
	UPDATE(naimenov_upr_org) OR
	UPDATE(istochnik_dannich) OR
	UPDATE(fio_vneseniya1) OR
	UPDATE(oprosniy_list) OR
	UPDATE(zakluchenie_du) OR
	UPDATE(zakluchenie_du1) OR
	UPDATE(qr) OR
	UPDATE(qrpath) OR
	UPDATE(memo) OR
	UPDATE(v_plane_key) OR
	UPDATE(osmotren_key) OR
	UPDATE(isklucheno_key) OR
	UPDATE(isklucheno_memo) OR
	UPDATE(isklucheno_pic) OR
	UPDATE(isklucheno_date) OR
	UPDATE(zamechaniya_key) OR
	UPDATE(zamechaniya_nashi_key) OR
	UPDATE(zamechaniya_nashi_text) OR
	UPDATE(zamechaniya_nashi_text_boss) OR
	UPDATE(zamechaniya_nashi_date) OR
	UPDATE(zamechaniya_nashi_date_ustr) OR
	UPDATE(akt_v_ogs_key) OR
	UPDATE(akt_podpisan_key) OR
	UPDATE(ustraneno_key) OR
	UPDATE(new_key) OR
	UPDATE(dlinafasada_key) OR
	UPDATE(piktogrammi_key) OR
	UPDATE(elektrpodkl_key) OR
	UPDATE(vse_ok_key) OR
	UPDATE(proverka_timer) OR
	UPDATE(koordinati_timer) OR
	UPDATE(v_plane_v_rabote) OR
	UPDATE(prinato_status) OR
	UPDATE(prinato_data) OR
	UPDATE(prinato_memo) OR
	UPDATE(zakluchenie_du_history) OR
	UPDATE(dom_marshrut) OR
	UPDATE(data_v_proverku) OR
	UPDATE(data_ustr_zam) OR
	UPDATE(fasad_summa) OR
	UPDATE(nalichie_summa) OR
	UPDATE(drugie_summa) OR
	UPDATE(montaj_summa) OR
	UPDATE(electrika_summa) OR
	UPDATE(tipdu_summa) OR
	UPDATE(kategoriya_summa) OR
	UPDATE(priznak) OR
	UPDATE(domdu2) OR
	UPDATE(log_file) OR
	UPDATE(kartograf_zam) OR
	UPDATE(vospriyatie) OR
	UPDATE(dlina_fasada)  OR
	UPDATE(koldu)  OR
	UPDATE(piktogrammi)  OR
	UPDATE(nalichie_podkl) OR
	UPDATE(vozmojnost_podkl) OR
	UPDATE(demontaj) OR
	UPDATE(raspayachnaya_korobka) OR
	UPDATE(vost_fasada) OR
	UPDATE(k_priemke)  OR
	UPDATE(sootv_bti)  OR
	UPDATE(geogr_koord) OR
	--UPDATE(koordinati_leg) OR
	UPDATE(sootvetstvie_tipa) OR
	UPDATE(ust_na_linii) OR
	UPDATE(egko_x) OR
	UPDATE(egko_y)
)
UPDATE reestr_t
SET
	num = INSERTED.num
	,project = INSERTED.project
	,kategoriya = INSERTED.kategoriya
	,unikalniy = INSERTED.unikalniy
	,tipdu_kod = dbo.kodDU(INSERTED.tipdu)
	,tipdumatc_kod = dbo.kodDU(INSERTED.tipdumatc)
	,razmerdu = INSERTED.razmerdu
	,ploshaddu = INSERTED.ploshaddu
	,ulitsadu = INSERTED.ulitsadu
	,domdu_ilion = INSERTED.domdu_ilion
	,domdu = INSERTED.domdu
	,montaj = INSERTED.montaj
	,montaj_plan = INSERTED.montaj_plan
	,date1 = INSERTED.date1
	,pic1 = INSERTED.pic1
	,checkpic1 = INSERTED.checkpic1
	,pic2 = INSERTED.pic2
	,pic3 = INSERTED.pic3
	,checkpic3 = INSERTED.checkpic3
	,egko_map_txt = INSERTED.egko_map_txt
	,proverka_karti = INSERTED.proverka_karti
	,fio = INSERTED.fio
	,doljnost = INSERTED.doljnost
	,history = INSERTED.history
	,data_osmotra = INSERTED.data_osmotra
	,data_osmotra_fio = INSERTED.data_osmotra_fio
	,data_osmotra_doljnost = INSERTED.data_osmotra_doljnost
	,fact_ustanovki = INSERTED.fact_ustanovki
	,proverka_podsveta_foto = INSERTED.proverka_podsveta_foto
	,data_proverka_podsveta = INSERTED.data_proverka_podsveta
	,proverka_podsveta_sost = INSERTED.proverka_podsveta_sost
	,proverka_podsveta_dojnost = INSERTED.proverka_podsveta_dojnost
	,proverka_podsveta_fio = INSERTED.proverka_podsveta_fio
	,egko_fio = INSERTED.egko_fio
	,egko_doljnost = INSERTED.egko_doljnost
	,egko_data = INSERTED.egko_data
	,tip_neobkhodimix_rabot = INSERTED.tip_neobkhodimix_rabot
	,nesootv_tipa = INSERTED.nesootv_tipa
	,nesootv_kategorii = INSERTED.nesootv_kategorii
	,nedemontirovan_stariy = INSERTED.nedemontirovan_stariy
	,vvost_fasad = INSERTED.vvost_fasad
	,ne_ustanovlen = INSERTED.ne_ustanovlen
	,zamechaniy_net = INSERTED.zamechaniy_net
	,[status] = INSERTED.[status]
	,status_fio = INSERTED.status_fio
	,data_vvoda_akt = INSERTED.data_vvoda_akt
	,fio_vvoda_akt = INSERTED.fio_vvoda_akt
	,doljnost_vvoda_akt = INSERTED.doljnost_vvoda_akt
	,data_ekpertnogo_zakl = INSERTED.data_ekpertnogo_zakl
	,nomer_ekpertnogo_zakl = INSERTED.nomer_ekpertnogo_zakl
	,naimenov_ekspert_org = INSERTED.naimenov_ekspert_org
	,fio_vneseniya = INSERTED.fio_vneseniya
	,naimenov_upr_org = INSERTED.naimenov_upr_org
	,istochnik_dannich = INSERTED.istochnik_dannich
	,fio_vneseniya1 = INSERTED.fio_vneseniya1
	,oprosniy_list = INSERTED.oprosniy_list
	,zakluchenie_du = INSERTED.zakluchenie_du
	,zakluchenie_du1 = INSERTED.zakluchenie_du1
	,qr = INSERTED.qr
	,qrpath = INSERTED.qrpath
	,memo = INSERTED.memo
	,v_plane_key = INSERTED.v_plane_key
	,osmotren_key = INSERTED.osmotren_key
	,isklucheno_key = INSERTED.isklucheno_key
	,isklucheno_memo = INSERTED.isklucheno_memo
	,isklucheno_pic = INSERTED.isklucheno_pic
	,isklucheno_date = INSERTED.isklucheno_date
	,zamechaniya_key = INSERTED.zamechaniya_key
	,zamechaniya_nashi_key = INSERTED.zamechaniya_nashi_key
	,zamechaniya_nashi_text = INSERTED.zamechaniya_nashi_text
	,zamechaniya_nashi_text_boss = INSERTED.zamechaniya_nashi_text_boss
	,zamechaniya_nashi_date = INSERTED.zamechaniya_nashi_date
	,zamechaniya_nashi_date_ustr = INSERTED.zamechaniya_nashi_date_ustr
	,akt_v_ogs_key = INSERTED.akt_v_ogs_key
	,akt_podpisan_key = INSERTED.akt_podpisan_key
	,ustraneno_key = INSERTED.ustraneno_key
	,new_key = INSERTED.new_key
	,dlinafasada_key = INSERTED.dlinafasada_key
	,piktogrammi_key = INSERTED.piktogrammi_key
	,elektrpodkl_key = INSERTED.elektrpodkl_key
	,vse_ok_key = INSERTED.vse_ok_key
	,proverka_timer = INSERTED.proverka_timer
	,koordinati_timer = INSERTED.koordinati_timer
	,v_plane_v_rabote = INSERTED.v_plane_v_rabote
	,prinato_status = INSERTED.prinato_status
	,prinato_data = INSERTED.prinato_data
	,prinato_memo = INSERTED.prinato_memo
	,zakluchenie_du_history = INSERTED.zakluchenie_du_history
	,dom_marshrut = INSERTED.dom_marshrut
	,data_v_proverku = INSERTED.data_v_proverku
	,data_ustr_zam = INSERTED.data_ustr_zam
	,fasad_summa = INSERTED.fasad_summa
	,nalichie_summa = INSERTED.nalichie_summa
	,drugie_summa = INSERTED.drugie_summa
	,montaj_summa = INSERTED.montaj_summa
	,electrika_summa = INSERTED.electrika_summa
	,tipdu_summa = INSERTED.tipdu_summa
	,kategoriya_summa = INSERTED.kategoriya_summa
	,priznak = INSERTED.priznak
	,domdu2 = INSERTED.domdu2
	,log_file = INSERTED.log_file
	,kartograf_zam = INSERTED.kartograf_zam
	,vospriyatie_b=dbo.standardValue(inserted.vospriyatie)
	,dlina_fasada_b=dbo.standardValue(inserted.dlina_fasada)
	,koldu_b=dbo.standardValue(inserted.koldu)
	,piktogrammi_b=dbo.standardValue(inserted.piktogrammi)
	,nalichie_podkl_b=dbo.standardValue(inserted.nalichie_podkl)
	,vozmojnost_podkl_b=dbo.standardValue(inserted.vozmojnost_podkl)
	,raspayachnaya_korobka_b=dbo.standardValue(inserted.raspayachnaya_korobka)
	,demontaj_b=dbo.standardValue(inserted.demontaj)
	,vost_fasada_b=dbo.standardValue(inserted.vost_fasada)
	,k_priemke_b=dbo.standardValue(inserted.k_priemke)
	,sootv_bti_b=dbo.standardValue(inserted.sootv_bti)
	,sootvetstvie_tipa_b=dbo.standardValue(inserted.sootvetstvie_tipa)
	,ust_na_linii_b=dbo.standardValue(inserted.ust_na_linii)

	,vospriyatie=inserted.vospriyatie
	,dlina_fasada=inserted.dlina_fasada
	,koldu=inserted.koldu
	,piktogrammi=inserted.piktogrammi
	,nalichie_podkl=inserted.nalichie_podkl
	,vozmojnost_podkl=inserted.vozmojnost_podkl
	,raspayachnaya_korobka=inserted.raspayachnaya_korobka
	,demontaj=inserted.demontaj
	,vost_fasada=inserted.vost_fasada
	,k_priemke=inserted.k_priemke
	,sootv_bti=inserted.sootv_bti
	,sootvetstvie_tipa=inserted.sootvetstvie_tipa
	,ust_na_linii=inserted.ust_na_linii


	,wgs84 = DBO.str_to_geographyPoint(INSERTED.geogr_koord,4326)
	--,wgs84_leg = DBO.str_to_geographyPoint(INSERTED.koordinati_leg,4326)
	,EGKO=[dbo].[geometryPoint](inserted.egko_x,inserted.egko_y)
FROM 
	reestr_t inner join inserted
	ON reestr_t.kod=inserted.kod

/*if 	UPDATE(ilion_ulitsa) OR
	UPDATE(ilion_dom) OR
	UPDATE(okrug) OR
	UPDATE(ulitsa) OR
	UPDATE(nazvanie_ulitsi) OR
	UPDATE(dom) OR
	UPDATE(korpus) OR
	UPDATE(stroenie) OR
	UPDATE(dom_korp_str) OR
	UPDATE(dom_korp_str1)
update adress
SET		
	okrug = INSERTED.okrug
	,ulitsa = INSERTED.ulitsa
	,nazvanie_ulitsi = INSERTED.nazvanie_ulitsi
	,dom = INSERTED.dom
	,korpus = INSERTED.korpus
	,stroenie = INSERTED.stroenie
FROM 
	reestr_t inner join inserted
	ON reestr_t.kod=inserted.kod*/

if 	(UPDATE(bti_adres) OR
	UPDATE(bti_naznachenie) OR
	UPDATE(bti_god_postroyki) OR
	UPDATE(bti_etaji) OR
	UPDATE(bti_alt_adres) OR
	UPDATE(bti_for_find) OR
	UPDATE(adres_bti_proverka))
UPDATE a
SET		
	bti_for_find=inserted.bti_for_find
	,bti_adres=inserted.bti_adres
	,bti_naznachenie=inserted.bti_naznachenie
	,bti_god_postroyki=inserted.bti_god_postroyki
	,bti_etaji=inserted.bti_etaji
	,bti_alt_adres=inserted.bti_alt_adres
	,adres_bti_proverka=inserted.adres_bti_proverka
FROM 
	adress a inner join inserted
	ON a.id=inserted.adress_id


/*if 	(UPDATE(org))
UPDATE r 
SET
	Organization_id=o.id
FROM Organizations o
	inner join inserted
	on o.FullName=inserted.org
	inner join reestr_t r
	on inserted.kod=r.kod*/
	
/*if	(UPDATE(subpodradchik))
UPDATE r
SET
	subpodradchik_id=(select id from Organizations where FullName=inserted.subpodradchik)
FROM 
	inserted
	inner join reestr_t r
	on inserted.kod=r.kod*/

END

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[15] 4[14] 2[51] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[34] 4[40] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[12] 2[63] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[63] 2[7] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[68] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4[80] 3) )"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 6
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = -4061
         Left = 0
      End
      Begin Tables = 
         Begin Table = "r"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 345
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tmatc"
            Begin Extent = 
               Top = 4067
               Left = 38
               Bottom = 4196
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tipdu"
            Begin Extent = 
               Top = 217
               Left = 767
               Bottom = 518
               Right = 941
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "zam4"
            Begin Extent = 
               Top = 9
               Left = 1350
               Bottom = 138
               Right = 1563
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "zam3"
            Begin Extent = 
               Top = 10
               Left = 1131
               Bottom = 139
               Right = 1344
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "zam2"
            Begin Extent = 
               Top = 11
               Left = 916
               Bottom = 140
               Right = 1129
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "zam1"
            Begin Extent = 
               Top = 13
               Left = 700
               Bottom = 142
               Right = 913
            End
            DisplayFlags = ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'reestr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'280
            TopColumn = 0
         End
         Begin Table = "dlina"
            Begin Extent = 
               Top = 666
               Left = 38
               Bottom = 795
               Right = 249
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "podkluchenie"
            Begin Extent = 
               Top = 798
               Left = 38
               Bottom = 927
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pictogrammi"
            Begin Extent = 
               Top = 930
               Left = 38
               Bottom = 1059
               Right = 292
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vozmojnost_el_podkl"
            Begin Extent = 
               Top = 1062
               Left = 38
               Bottom = 1191
               Right = 334
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vostanovl_fasad"
            Begin Extent = 
               Top = 1194
               Left = 38
               Bottom = 1323
               Right = 307
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "nesootv_kategorii"
            Begin Extent = 
               Top = 1326
               Left = 38
               Bottom = 1455
               Right = 316
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "nesootv_tip"
            Begin Extent = 
               Top = 1458
               Left = 38
               Bottom = 1587
               Right = 284
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ustanovka_du"
            Begin Extent = 
               Top = 1590
               Left = 38
               Bottom = 1719
               Right = 296
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "nesootv_demontirovan"
            Begin Extent = 
               Top = 1722
               Left = 38
               Bottom = 1851
               Right = 345
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 246
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2730
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2355
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'reestr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane3', @value = N'         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1770
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'reestr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane4', @value = N'         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 6405
         Alias = 4980
         Table = 5970
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'reestr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 4, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'reestr';

