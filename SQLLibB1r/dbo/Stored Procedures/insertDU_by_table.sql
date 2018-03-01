

CREATE PROCEDURE [dbo].[insertDU_by_table]
	@priznak nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE 
		@date1 date
	SET @date1=getdate()
	declare @rest [dbo].[intTable]

DELETE from DU_to_insert WHERE [Уникальный номер ДУ] in (select unikalniy from reestr_t)

insert into reestr_t
(
	adress_id
	,unikalniy
	,kategoriya
	,tipdu_kod
	,prinato_status
	,ulitsadu
	,domdu
	,montaj
	,montaj_plan
	,memo
	,v_plane_v_rabote
	,v_plane_key
	,osmotren_key
	,zamechaniya_key
	,akt_v_ogs_key
	,akt_podpisan_key
	,ustraneno_key
	,new_key
	,isklucheno_key
	,status
	,data_osmotra_fio
	,project
	,priznak
	,date1,
	raspayachnaya_korobka_b,
	vospriyatie_b,
	dlina_fasada_b,
	koldu_b,
	piktogrammi_b,
	nalichie_podkl_b,
	vozmojnost_podkl_b,
	demontaj_b,
	ust_na_linii_b,
	k_priemke_b,
	vost_fasada_b,
	sootvetstvie_tipa_b,
	sootv_bti_b)
	OUTPUT inserted.kod into @rest
select 
	a.id
	,d.[Уникальный номер ДУ]
	,d.[Категория улицы]
	,[tipdu].kod tipdu_kod
	,0 prinato_status
	,d.[Информационное содержание указателя (Улица)/Надпись на первом ко] ulitsadu
	,d.[Информационное содержание указателя (Дом)] domdu
	,@date1
	,@date1
	,D.[Причина несоответствия типа ДУ категории улицы] memo
	,'0' v_plane_v_rabote
	,1 v_plane_key
	,0 osmotren_key
	,0 zamechaniya_key
	,0 akt_v_ogs_key
	,0 akt_podpisan_key
	,0 ustraneno_key
	,0 new_key
	,0 isklucheno_key
	,'В плане' status
	,'' data_osmotra_fio
	,'4 этап'
	,@priznak
	,@date1,
	13,
	13,
	13,
	13,
	13,
	13,
	13,
	13,
	13,
	13,
	13,
	13,
	13
from 
	adress a 
	inner join Okrug on a.okrug_id=Okrug.id
	left outer join dom_type DT on a.dom_type=dt.id
	left outer join dom_type ST on st.id = a.stroenie_type
	inner join DU_to_insert D 
		on (d.Округ=Okrug.shotName or d.Округ=Okrug.fullName or a.okrug=d.Округ)
		and REPLACE(d.Район,'ё','е')=REPLACE(a.ulitsa,'ё','е') 
		and (REPLACE(d.Улица,'ё','е')=REPLACE(a.nazvanie_ulitsi,'ё','е') or [dbo].[replaceToEnd](REPLACE(a.nazvanie_ulitsi,'ё','е'),'улица')=[dbo].[replaceToEnd](REPLACE(d.Улица,'ё','е'),'улица'))
		and [dbo].[deleteDublSpace](d.[Номер дома (полностью)])=[dbo].[dom_korp_str_toString](a.dom,a.korpus,a.stroenie,dt.domtype_full,st.domtype_full,0)
	inner join tipdu on tipdu.tip=D.ТипДУ
	left outer join reestr_t on d.[Уникальный номер ДУ]=reestr_t.unikalniy
WHERE
	unikalniy is null

DELETE from DU_to_insert WHERE [Уникальный номер ДУ] in (select unikalniy from reestr_t inner join @rest ri on reestr_t.kod=ri.ID )

END




