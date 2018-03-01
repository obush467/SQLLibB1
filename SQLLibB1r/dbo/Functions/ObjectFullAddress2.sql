



CREATE FUNCTION [dbo].[ObjectFullAddress2] 

(
	-- Add the parameters for the function here
	@houseGUID uniqueidentifier,
	@Splitter nvarchar(10),
	@NameFull bit = 0,
	@WithRoot bit = 0,
	@WithSelf bit = 0 
) 
RETURNS nvarchar(200) with schemabinding
 
AS 
BEGIN
	-- Declare the return variable here
declare	@AOGUID uniqueidentifier,@house nvarchar(100),@b nvarchar(100),@str nvarchar(100),@gdate datetime
set @gdate=GETDATE()
select @AOGUID=AOGUID,@house=[dbo].[dom_korp_str_toStringSplit] (HOUSENUM,BUILDNUM, STRUCNUM,es.NAME,ss.NAME,1,',')
from fias_Moscow.House h
	inner join fias_Moscow.StructureStatus ss
	on  ss.STRSTATID=h.STRSTATUS	
	inner join fias_Moscow.EstateStatus es
	on  es.ESTSTATID=h.ESTSTATUS
where @houseGUID=HOUSEGUID and @gdate between STARTDATE and ENDDATE

declare @name nvarchar(500)
set @name=''
declare @formalname nvarchar(100)
declare @shortname nvarchar(100),@streetCODE nvarchar(100)
declare @AddressCursor cursor
set  @AddressCursor=cursor
	for
	WITH child_to_parents AS (
	  SELECT FORMALNAME,SHORTNAME,AOGUID,PARENTGUID,AOLEVEL,streetCODE FROM fias_Moscow.Object
		  WHERE aoGUid = @AOGUID
		  and @gdate between STARTDATE and ENDDATE
	  UNION ALL
	  SELECT o1.FORMALNAME,o1.SHORTNAME,o1.AOGUID,o1.PARENTGUID,o1.AOLEVEL,o1.streetCODE FROM fias_Moscow.Object o1, child_to_parents
		  WHERE o1.aoguid = child_to_parents.parentguid
			AND o1.ACTSTATUS = 1 --and not o1.PARENTGUID is null
			and @gdate between STARTDATE and ENDDATE
	)
	SELECT formalname, 
		case 
			when @NameFull=1 then fias_Moscow.AddressObjectType.SOCRNAME
			else fias_Moscow.AddressObjectType.SCNAME
		end TypeName 
		,streetCODE
	FROM 
		child_to_parents 
		left outer join  
		fias_Moscow.AddressObjectType 
		on 
			AOLEVEL=fias_Moscow.AddressObjectType.LEVEL 
			and
			shortname=fias_Moscow.AddressObjectType.SCNAME
			where (aoguid <> @AOGUID and @WithSelf=0) or (@WithSelf=1)
		ORDER BY aolevel
open @AddressCursor;
fetch next from @AddressCursor into @formalname,@shortname,@streetCODE;
if (@WithRoot=0) fetch next from @AddressCursor into @formalname,@shortname,@streetCODE
WHILE @@FETCH_STATUS = 0  
BEGIN 
	if (@name ='')
		set @name = lower(@shortname) + ' ' + @formalname + case when @NameFull=0 then '.'  else '' end
	else
		set @name = @name+ @Splitter + 
			case when @streetCODE='0000' then LOWER(@shortname) + ' ' + @formalname
			else @formalname + ' ' + LOWER(@shortname)
			end
			+ case when @NameFull=0 then '.'  else '' end
	fetch next from @AddressCursor into @formalname,@shortname,@streetCODE 
end

close @AddressCursor
deallocate @AddressCursor

set @name=@name+@Splitter+ @house 

RETURN @name

END






