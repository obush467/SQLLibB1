-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sp_Expertam 
 @startdate datetime = '2016/1/6',
 @enddate datetime = '2016/30/6'
AS
BEGIN
	SET NOCOUNT ON;
DECLARE @tmpt TABLE
(
	Номер varchar(max), 
	Тип varchar(max), 
	Округ varchar(max), 
	Район varchar(max), 
	Улица varchar(max), 
	Дом varchar(max),
	Замечания varchar(max),
	Устранение varchar(max),
	Устранено datetime,
	Ответственный varchar(max),
	Осмотрено datetime, 
	Список  datetime
)
declare @zamcount int
declare @progcount int
declare @percentcount int
declare @dobcount int

set @zamcount = (SELECT count(unikalniy) from reestr where [project] = '3 этап' and (ustraneno_key = 1 or [zamechaniya_key] = '1')  and [date1]<= @enddate and [date1]>=@startdate)
set @progcount = (SELECT count(unikalniy) from reestr where [project] = '3 этап' and [date1]<= @enddate and [date1]>=@startdate)
set @percentcount = round(@progcount * 0.3 , 0)

insert into @tmpt 
SELECT 
	unikalniy Номер, 
	tipdu Тип,
	okrug Округ, 
	ulitsa Район, 
	nazvanie_ulitsi Улица, 
	dom_korp_str Дом,
	case  when isnull(ustanovka_du_zam,'') = 'Не установлен' or isnull(fact_ustanovki,'') = 'Не установлен' then 'ДУ не установлен; ' else '' end
	+
	case when (isnull(nesootv_demontirovan_zam,'') <> '' and ltrim(rtrim(isnull(dop_zam1_text,'')))='') then nesootv_demontirovan_zam +'; '
		 when (isnull(nesootv_demontirovan_zam,'') = '' and ltrim(rtrim(isnull(dop_zam1_text,'')))<>'') then dop_zam1_text+'; '
		 when (isnull(nesootv_demontirovan_zam,'') <> '' and ltrim(rtrim(isnull(dop_zam1_text,'')))<>'') then dop_zam1_text+'; '
		else '' end
	+
	case when (isnull(vostanovl_fasad_zam,'') <> '' and ltrim(rtrim(isnull(dop_zam2_text,'')))='') then vostanovl_fasad_zam +'; '
		 when (isnull(vostanovl_fasad_zam,'') = '' and ltrim(rtrim(isnull(dop_zam2_text,'')))<>'') then dop_zam2_text+'; '
		 when (isnull(vostanovl_fasad_zam,'') <> '' and ltrim(rtrim(isnull(dop_zam2_text,'')))<>'') then dop_zam2_text+'; '
		else '' end
	+
	case  when isnull(dop_zam3_text,'') = '' then '' 
		else dop_zam3_text+'; ' end
	+
	case  when isnull(dop_zam4_text,'') = '' then '' 
		else dop_zam4_text+'; ' end
	+
	case  when isnull(dop_zam5_text,'')='' then '' 
		else dop_zam5_text+'; ' end
	+
	case  when isnull(dop_zam6_text,'')='' then '' 
		else dop_zam6_text+'; ' end
	+
	case  when isnull(podkluchenie_zam,'')='' then '' 
		else podkluchenie_zam+'; ' end
	+
	case  when isnull(nesootv_tip_zam,'') <> '' then nesootv_tip_zam+'; '
		  when isnull(nesootv_tip_zam,'') = '' and isnull(sootvetstvie_tipa,'') = 'Не соответствует' then 'Тип ДУ не соответствует категории улицы; ' 
		else '' end
	+
	case  when isnull(nesootv_kategorii_zam,'') = '' then '' 
		else nesootv_kategorii_zam+'; ' end
	+
	case  when isnull(vozmojnost_el_podkl_zam,'') = '' then '' 
		else vozmojnost_el_podkl_zam+'; ' end
	+
	case  when isnull(pictogrammi_zam,'') = '' then '' 
		else pictogrammi_zam+'; ' end
	+
	case  when isnull(dlina_zam,'') = '' then '' 
		else dlina_zam+'; ' end
	Замечания
	,
	case ustraneno_key when 0 then 'Не устранено' 
		when 1 then 'Устранено' 
		when null then '' end Устранение,
	data_ustr_zam Устранено,
	data_osmotra_fio Ответственный,
	data_osmotra Осмотрено, date1 Список
from  reestr 
where [project] = '3 этап' and (ustraneno_key = 1 or [zamechaniya_key] = '1')  and [date1]<= cast('2016/30/6' as datetime) and [date1]>=cast('2016/1/6' as datetime)
ORDER BY Округ,	Район,	Улица,	Дом	, Номер,Замечания

if @percentcount > @zamcount 
	begin
	set @dobcount = @percentcount - @zamcount
	print 'Добавить записей - ' + cast(@dobcount as varchar)
	set rowcount @dobcount
	insert into @tmpt (Номер, Тип, Округ, Район, Улица, Дом,Замечания,Устранение,Устранено,Ответственный,Осмотрено, Список)
	SELECT 
		unikalniy Номер, 
		tipdu Тип, 
		okrug Округ, 
		ulitsa Район, 
		nazvanie_ulitsi Улица, 
		dom_korp_str Дом,
		'Без замечаний' Замечания,
		null Устранение,
		data_ustr_zam Устранено,
		data_osmotra_fio Ответственный,
		data_osmotra Осмотрено, 
		date1 Список
	from  reestr 
	where 
		[project] = '3 этап' /*and (ustraneno_key = 1 or [zamechaniya_key] = '1')  */
		and 
		[date1]<= @enddate and [date1]>=@startdate 
		AND NOT unikalniy in (select Номер from @tmpt)
end
set rowcount 0
select * from @tmpt order by Округ, Район, Улица, Дом, Тип,  Номер, Замечания
END
