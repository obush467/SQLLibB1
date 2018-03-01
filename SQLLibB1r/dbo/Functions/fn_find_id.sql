
CREATE function [dbo].[fn_find_id](@addr  varchar(255) = null, @id varchar(255) = null)
returns  @Tab table (adres_ploshadki varchar(255), id1 varchar(255), id2 varchar(255), id3 varchar(255)
, id4 varchar(255), id5 varchar(255), id6 varchar(255), id7 varchar(255), id8 varchar(255))
as 
begin
 
insert into  @Tab 

/*
select IsNUll(adres.id_ploshadki, ISNULL(va.id_mesta_sbora_tbo,isnull(zn.adres_mesta_sbora_tbo,o.adres_mesta_sbora_otkhodov))) id_ploshadki, 
max(adres.adres_ploshadki) addr1 ,min(adres.adres_ploshadki)  addr2, 
max(va.adres_mesta_sbora_tbo) addr3,min(va.adres_mesta_sbora_tbo) addr4,
max(zn.adres_mesta_sbora_tbo) addr5, MIN(zn.adres_mesta_sbora_tbo)  addr6,
MAX(o.adres_mesta_sbora_otkhodov) addr7, MIN(o.adres_mesta_sbora_otkhodov) addr8
*/

select IsNUll(adres.adres_ploshadki,isnull(va.adres_mesta_sbora_tbo, isnull(zn.adres_mesta_sbora_tbo,o.adres_mesta_sbora_otkhodov))) adres_ploshadki,
max(adres.id_ploshadki) id1 ,min(adres.id_ploshadki)  id2,
MIN(va.id_mesta_sbora_tbo) id3, MAX( va.id_mesta_sbora_tbo) id4,
MIN(zn.id_mesta_sbora_tbo) id5, Max(zn.id_mesta_sbora_tbo) id6, 
MIN(o.id_mesta_sbora_otkhodov) id7,Max(o.id_mesta_sbora_otkhodov) id8

from  dbo.tbo_obekti_sbora_otkhodov adres
full join tbo_vse_adresa va on va.adres_mesta_sbora_tbo=adres.adres_ploshadki
full join tbo_zapolnaem_nejelyo zn on zn.id_mesta_sbora_tbo =  adres.id_ploshadki
full join tbo_otdelnie o on o.id_mesta_sbora_otkhodov = adres.id_ploshadki

where (@addr='' or @addr=adres.adres_ploshadki or  @addr=va.adres_mesta_sbora_tbo or zn.adres_mesta_sbora_tbo =@addr or o.adres_mesta_sbora_otkhodov=@addr) 
  and (@id='' or @id= adres.id_ploshadki or  @id=va.id_mesta_sbora_tbo or @id=zn.id_mesta_sbora_tbo or @id=o.id_mesta_sbora_otkhodov)
group by IsNUll(adres.adres_ploshadki,isnull(va.adres_mesta_sbora_tbo,isnull(zn.adres_mesta_sbora_tbo,o.adres_mesta_sbora_otkhodov)))

return

end 