
CREATE function [dbo].[fn_find_addr](@addr  varchar(255) = null, @id varchar(255) = null)
returns  @Tab table (id_ploshadki varchar(255), addr1 varchar(255), addr2 varchar(255), addr3 varchar(255)
, addr4 varchar(255), addr5 varchar(255), addr6 varchar(255), addr7 varchar(255), addr8 varchar(255))
as 
begin
 
 
 
 
insert into  @Tab 




select IsNUll(zn.adres_mesta_sbora_tbo, ISNULL(va.id_mesta_sbora_tbo,isnull(adres.id_ploshadki,o.adres_mesta_sbora_otkhodov))) id_ploshadki, 
max(adres.adres_ploshadki) addr1 ,min(adres.adres_ploshadki)  addr2, 
max(va.adres_mesta_sbora_tbo) addr3,min(va.adres_mesta_sbora_tbo) addr4,
max(zn.adres_mesta_sbora_tbo) addr5, MIN(zn.adres_mesta_sbora_tbo)  addr6,
MAX(o.adres_mesta_sbora_otkhodov) addr7, MIN(o.adres_mesta_sbora_otkhodov) addr8
 
from  dbo.tbo_obekti_sbora_otkhodov adres
full join tbo_vse_adresa va on va.id_mesta_sbora_tbo = adres.id_ploshadki
full join tbo_zapolnaem_nejelyo zn on zn.id_mesta_sbora_tbo =  adres.id_ploshadki
full join tbo_otdelnie o on o.id_mesta_sbora_otkhodov = adres.id_ploshadki

where (@addr='' or @addr=adres.adres_ploshadki or  @addr=va.adres_mesta_sbora_tbo or  @addr=zn.adres_mesta_sbora_tbo or  @addr=o.adres_mesta_sbora_otkhodov) 
  and (@id='' or @id= adres.id_ploshadki or  @id=va.id_mesta_sbora_tbo or  @id=zn.id_mesta_sbora_tbo or @id=o.adres_mesta_sbora_otkhodov)
group by  IsNUll(zn.adres_mesta_sbora_tbo, ISNULL(va.id_mesta_sbora_tbo,isnull(adres.id_ploshadki,o.adres_mesta_sbora_otkhodov)))

return

end 