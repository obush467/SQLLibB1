
CREATE proc [dbo].[find_reestr_by_kod]
@kod int
as



select
kod
,nazvanie_ulitsi
,dom_korp_str
,kategoriya
,unikalniy
,tipdu
,ulitsadu
,domdu


/*,

 okrug [Округ], ulitsa [Район],
 tipdu [Тип ДУ], data_osmotra_fio [Сотрудник], proverka_karti [Наличие карты БТИ] */
from reestr 
where kod=@kod
