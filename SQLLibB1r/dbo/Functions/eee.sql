CREATE function [dbo].[eee](@aoguid uniqueidentifier)
returns @Tbl TABLE (aoguid uniqueidentifier, parentguid uniqueidentifier, OFFNAME nvarchar(200), FORMALNAME nvarchar(200),SOCRNAME nvarchar(200),SCNAME  nvarchar(200)) with schemabinding
as
begin
WITH o
 AS (
	SELECT aoguid, parentguid,OFFNAME,FORMALNAME,aot.SOCRNAME,aot.SCNAME
	FROM 
		fias_Moscow.Object o 
		inner join 
		fias_Moscow.AddressObjectType aot
		on aot.LEVEL=o.AOLEVEL and aot.SCNAME=o.SHORTNAME
	where 
		aoguid=@aoguid 
		and 
		NEXTID is null
	UNION ALL
	SELECT o11.aoguid, o11.parentguid, o11.OFFNAME,o11.FORMALNAME,aot.SOCRNAME,aot.SCNAME
	FROM 
		fias_Moscow.Object o11 
		inner join 
		fias_Moscow.AddressObjectType aot
		on aot.LEVEL=o11.AOLEVEL and aot.SCNAME=o11.SHORTNAME
		inner join o
		on
		o11.AOGUID = o.parentguid and NEXTID is null
   )
 insert into @Tbl(aoguid, parentguid, OFFNAME,FORMALNAME,aot.SOCRNAME,SCNAME ) SELECT aoguid, parentguid, OFFNAME,FORMALNAME,SOCRNAME,SCNAME  FROM o 
 return 
end