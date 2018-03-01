

CREATE function [dbo].[eee1](@houseguid uniqueidentifier,@date datetime,@AdressObjectFull bit,@DomKorpStrFull bit) 
returns @Tbl TABLE (Ulitsa  nvarchar(200),dom nvarchar(200),korpus nvarchar(200),stroenie nvarchar(200),domFull nvarchar(200),domShort nvarchar(200),dom_korp_str1 nvarchar(200),houseguid uniqueidentifier) with schemabinding
as 
begin
declare @dom nvarchar(200),@korpus nvarchar(200),@stroenie nvarchar(200),@domFull nvarchar(200),@domShort nvarchar(200),@aoguid  uniqueidentifier, @OFFNAME  nvarchar(200), @AdressObjectFullText  nvarchar(200),@AdressObjectShortText  nvarchar(200), @FORMALNAME   nvarchar(200),@SOCRNAME   nvarchar(200), @SCNAME  nvarchar(200)
--SET @AdressObject=''
SELECT 
	@domShort=	[dbo].[dom_korp_str_toString](h.HOUSENUM,h.BUILDNUM,h.STRUCNUM,es.NAME,ss.NAME,0) 
	,@domFull=	[dbo].[dom_korp_str_toString](h.HOUSENUM,h.BUILDNUM,h.STRUCNUM,es.NAME,ss.NAME,1)
	,@dom=h.HOUSENUM
	,@korpus=h.BUILDNUM
	,@stroenie=h.STRUCNUM
	,@aoguid=h.AOGUID
from fias_Moscow.House h
	inner join fias_Moscow.EstateStatus es
	on es.ESTSTATID=h.ESTSTATUS
	inner join fias_Moscow.StructureStatus ss
	on ss.STRSTATID=h.STRSTATUS
WHERE
	h.HOUSEGUID=@houseguid
	and
	@date between h.STARTDATE and h.ENDDATE


SELECT
	 @AdressObjectFullText =  formalname+' '+socrname+ COALESCE( ', '+ @AdressObjectFullText, '') 
	,@AdressObjectShortText =  formalname+' '+scname+ COALESCE( ', '+ @AdressObjectShortText, '') 
FROM [dbo].[eee] (@aoguid)
where (OFFNAME<>'Российская Федерация' and OFFNAME<>'Москва')

insert into @Tbl(Ulitsa,dom,korpus,stroenie,domFull,domShort,dom_korp_str1,houseguid) values (@AdressObjectFullText,@dom,@korpus,@stroenie,@domFull,@domShort,@AdressObjectShortText +', '+@domShort,@houseguid) 
return 
end

