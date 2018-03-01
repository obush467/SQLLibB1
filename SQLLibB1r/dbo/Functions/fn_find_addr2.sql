

CREATE function [dbo].[fn_find_addr2](@id varchar(255) = null)
returns  @Tab table (id_ploshadki varchar(255), addr1 varchar(255))
as 
begin
 
 if(@id<>'')
begin

  insert into  @Tab 
  select distinct * from(
  select a.id_ploshadki ,  a.adres_ploshadki 
  from  dbo.tbo_obekti_sbora_otkhodov a
  where (@id= a.id_ploshadki)
  union all 
  select va.id_mesta_sbora_tbo,  va.adres_mesta_sbora_tbo  
  from  dbo.tbo_vse_adresa va
  where (@id= va.id_mesta_sbora_tbo)
  union all 
  select id_mesta_sbora_tbo,adres_mesta_sbora_tbo
  from tbo_zapolnaem_nejelyo zn
  where(@id= zn.id_mesta_sbora_tbo)
  union all 
  select o.id_mesta_sbora_otkhodov,o.adres_mesta_sbora_otkhodov
  from tbo_otdelnie o 
  where  (@id=  o.adres_mesta_sbora_otkhodov)
  ) t
end
else  
begin

  insert into  @Tab 
  
  select top 0 a.id_ploshadki id_ploshadki,  a.adres_ploshadki  addr1  
  from  dbo.tbo_obekti_sbora_otkhodov a
  
end
return

end 