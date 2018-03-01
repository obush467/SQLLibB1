
CREATE FUNCTION [dbo].[ObjectFullAddress] 

(
	-- Add the parameters for the function here
	@AOID uniqueidentifier,
	@Splitter nvarchar(10),
	@NameFull bit = 0,
	@WithRoot bit = 0,
	@WithSelf bit = 0 
)
RETURNS nvarchar(200)
 
AS
BEGIN
	-- Declare the return variable here
declare @name nvarchar(500)
set @name=''
declare @formalname nvarchar(100)
declare @shortname nvarchar(100)
declare @AddressCursor cursor
set  @AddressCursor=cursor
	for
	WITH child_to_parents AS (
	  SELECT FORMALNAME,SHORTNAME,AOGUID,AOID,PARENTGUID,AOLEVEL FROM fias_Moscow.Object
		  WHERE aoid = @AOID
	  UNION ALL
	  SELECT o1.FORMALNAME,o1.SHORTNAME,o1.AOGUID,o1.AOID,o1.PARENTGUID,o1.AOLEVEL FROM fias_Moscow.Object o1, child_to_parents
		  WHERE o1.aoguid = child_to_parents.parentguid
			AND o1.ACTSTATUS = 1 and not o1.PARENTGUID is null
	)
	SELECT formalname, 
		case 
			when @NameFull=1 then fias_Moscow.AddressObjectType.SOCRNAME
			else fias_Moscow.AddressObjectType.SCNAME
		end TypeName 
	FROM 
		child_to_parents 
		left outer join  
		fias_Moscow.AddressObjectType 
		on 
			AOLEVEL=fias_Moscow.AddressObjectType.LEVEL 
			and
			shortname=fias_Moscow.AddressObjectType.SCNAME
			where (aoid <> @AOID and @WithSelf=0) or (@WithSelf=1)
		ORDER BY aolevel
open @AddressCursor;
fetch next from @AddressCursor into @formalname,@shortname;
if (@WithRoot=0) fetch next from @AddressCursor into @formalname,@shortname
WHILE @@FETCH_STATUS = 0  
BEGIN 
	if (@name ='')
		set @name = @formalname + ' ' + lower(@shortname) + case when @NameFull=0 then '.'  else '' end
	else
		set @name = @name+ @Splitter + @formalname + ' ' + LOWER(@shortname) + case when @NameFull=0 then '.'  else '' end
	fetch next from @AddressCursor into @formalname,@shortname 
end

close @AddressCursor
deallocate @AddressCursor

RETURN @name

END


