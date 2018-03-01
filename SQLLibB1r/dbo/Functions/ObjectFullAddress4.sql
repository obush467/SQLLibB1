

CREATE FUNCTION [dbo].[ObjectFullAddress4] 

(
	-- Add the parameters for the function here
	@houseGUID uniqueidentifier,
	@Splitter nvarchar(10),
	@NameFull bit = 0,
	@WithRoot bit = 0,
	@WithSelf bit = 0 
) 
RETURNS @Tbl TABLE (fullAdress nvarchar(500), ID_ORDER integer)  
AS 
BEGIN
	-- Declare the return variable here
declare	@AOGUID uniqueidentifier
	,@house nvarchar(100)
	,@b nvarchar(100)
	,@str nvarchar(100)
	,@gdate datetime
	,@name1 nvarchar(500)
	,@name2 nvarchar(500)
	,@name3 nvarchar(500)
	,@name4 nvarchar(500)
	,@FORMALNAME nvarchar(100)
	,@OFFNAME nvarchar(100)
	,@shortname nvarchar(100)
	,@streetCODE nvarchar(100)
set @gdate=GETDATE()
select @AOGUID=AOGUID,@house=[dbo].[dom_korp_str_toStringSplit] (HOUSENUM,BUILDNUM, STRUCNUM,es.NAME,ss.NAME,1,@Splitter)
from fias_Moscow.House h
	inner join fias_Moscow.StructureStatus ss
	on  ss.STRSTATID=h.STRSTATUS	
	inner join fias_Moscow.EstateStatus es
	on  es.ESTSTATID=h.ESTSTATUS
where @houseGUID=HOUSEGUID and @gdate between STARTDATE and ENDDATE

set @name1=''
set @name2=''
set @name3=''
set @name4=''

declare @AddressCursor cursor
set  @AddressCursor=cursor
	for
	WITH child_to_parents AS (
	  SELECT FORMALNAME,OFFNAME,SHORTNAME,AOGUID,PARENTGUID,AOLEVEL,streetCODE FROM fias_Moscow.Object
		  WHERE aoGUid = @AOGUID
		  and @gdate between STARTDATE and ENDDATE and ACTSTATUS = 1
	  UNION ALL
	  SELECT o1.FORMALNAME,o1.OFFNAME,o1.SHORTNAME,o1.AOGUID,o1.PARENTGUID,o1.AOLEVEL,o1.streetCODE FROM fias_Moscow.Object o1, child_to_parents
		  WHERE o1.aoguid = child_to_parents.parentguid
			AND o1.ACTSTATUS = 1 --and not o1.PARENTGUID is null
			and @gdate between o1.STARTDATE and o1.ENDDATE
	)
	SELECT FORMALNAME,OFFNAME,
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
fetch next from @AddressCursor into @FORMALNAME,@OFFNAME,@shortname,@streetCODE;
if (@WithRoot=0) fetch next from @AddressCursor into @FORMALNAME,@OFFNAME,@shortname,@streetCODE
WHILE @@FETCH_STATUS = 0  
BEGIN 
	if (@name1 ='')
		set @name1 = lower(@shortname) + ' ' + @formalname + case when @NameFull=0 then '.'  else '' end
	else
		set @name1 = @name1+ @Splitter + 
			case when @streetCODE='0000' then  LOWER(@shortname) + ' ' + @formalname
			else LOWER(@shortname) + ' '+ @FORMALNAME
			end
			+ case when @NameFull=0 then '.'  else '' end
	if (@name2 ='')
		set @name2 = lower(@shortname) + ' ' + @formalname + case when @NameFull=0 then '.'  else '' end
	else
		set @name2 = @name2+ @Splitter + 
			case when @streetCODE='0000' then  LOWER(@shortname) + ' ' + @formalname
			else @FORMALNAME + ' '+ LOWER(@shortname)
			end
			+ case when @NameFull=0 then '.'  else '' end
	if (@FORMALNAME<>@OFFNAME)
	begin
		if (@name3 ='')
			set @name3 = lower(@shortname) + ' ' + @formalname + case when @NameFull=0 then '.'  else '' end
		else
			set @name3 = @name3+ @Splitter + 
				case when @streetCODE='0000' then  LOWER(@shortname) + ' ' + @formalname
				else LOWER(@shortname) + ' '+ @FORMALNAME
				end
				+ case when @NameFull=0 then '.'  else '' end
		if (@name4 ='')
			set @name4 = lower(@shortname) + ' ' + @formalname + case when @NameFull=0 then '.'  else '' end
		else
			set @name4 = @name4+ @Splitter + 
				case when @streetCODE='0000' then  LOWER(@shortname) + ' ' + @formalname
				else @FORMALNAME + ' '+ LOWER(@shortname)
				end
				+ case when @NameFull=0 then '.'  else '' end
	end
	fetch next from @AddressCursor into @FORMALNAME,@OFFNAME,@shortname,@streetCODE 
end

close @AddressCursor
deallocate @AddressCursor

set @name1=dbo.deleteDublSpaceNull(@name1+@Splitter+@house )
set @name2=dbo.deleteDublSpaceNull(@name2+@Splitter+@house)
set @name3=dbo.deleteDublSpaceNull(@name3+@Splitter+@house )
set @name4=dbo.deleteDublSpaceNull(@name4+@Splitter+@house)
insert into @Tbl(fullAdress,ID_ORDER) values (@name1,1),(@name2,2)
if (@FORMALNAME<>@OFFNAME)
insert into @Tbl(fullAdress,ID_ORDER) values (@name3,3),(@name4,4)
return
END






