CREATE proc [dbo].[find_reestr]
@okrug varchar(50),
@ulitsa varchar(50),
@nazvanie_ulitsi varchar(50),
@dom  varchar(10),
@fieldname sysname,
@fieldvalue varchar(255)
as

select @okrug =ISNULL(@okrug,''),
@ulitsa =ISNULL(@ulitsa,''),
@nazvanie_ulitsi =ISNULL(@nazvanie_ulitsi,''),
@dom =ISNULL(@dom,''),
@fieldvalue=isnull('%'+@fieldvalue+'%','')


select top 1000  kod ,  okrug , ulitsa , nazvanie_ulitsi , dom , korpus , stroenie , 
kategoriya ,  unikalniy , tipdu , data_osmotra_fio , proverka_karti 
from reestr 
where 
(@okrug ='' or okrug=@okrug) 
and (@ulitsa ='' or ulitsa=@ulitsa) 
and (@nazvanie_ulitsi ='' or nazvanie_ulitsi=@nazvanie_ulitsi) 
and (@dom='' or dom=@dom)
and (@fieldvalue='' or (@fieldname='unikalniy' and unikalniy like @fieldvalue)
                    or (@fieldname='nazvanie_ulitsi' and nazvanie_ulitsi like @fieldvalue)
)


/*
Из этого бредового кол-ва столбцов удали мусор!!!
вот как то так
любые лишние столбцы с дублированной информацией это лишние затраты на: 
* производительности браузера
* не информативные данные в окне, а следствие много пролистывать 

ulitsadu это что такое?т
это текст который написан на указателе. его проверяет обходчик во время проверк

num?
это номер пунка в таблице которую присылает подрядчик. тоже можно убрать




*/