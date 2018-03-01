

CREATE   function [dbo].[ConvertStringDelimsToTable](@Str  varchar(8000), @Delims varchar(1) = ',')
returns  @Tab table (StrVal varchar(100) COLLATE Cyrillic_General_CI_AS, id int)
as 
begin
  declare @delPos int;
  declare @i int, @id int;
 --set @Delims = ','

	set @delPos= 0;
  if @Str is not null begin
		while (1=1)  begin
      select @id= count(1)+1 from @Tab
		  set @i = CHARINDEX (@Delims,@Str,@delPos+1)
		  if @i <> 0 begin
		    insert into @Tab(StrVal,id)
					values (Rtrim(LTRIM(Substring(@Str,@delPos+1,@i-@delpos-1))), @id);	
		  end else begin
		    insert into @Tab(StrVal,id)
					values (Rtrim(LTRIM(Substring(@Str,@delPos+1,len(@Str)-@delpos))), @id);	
				break;
			end;
			set @delPos = @i;	
		end;
  end;	
  return ;
end
