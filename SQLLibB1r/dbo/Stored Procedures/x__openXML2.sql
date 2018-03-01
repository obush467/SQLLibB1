
CREATE  procedure [dbo].[x__openXML2]
@fname varchar(250),
@text text,
@params varchar(2500),
@select varchar(1000),
@where varchar(200),
@tabname varchar(255) = ''
AS

-- Из-за отсутствия этой инструкции была проблема!
set nocount on

declare @s nvarchar(1000)

set @s = ' delete '+@tabname+'  where fname = @fname '
if Ltrim(@tabname) <> ''
 exec sp_executesql @s, N'@fname varchar(250)', @fname


declare @i int 
set  @i= CHARINDEX ('into', @select, charindex('select', @select))


if ltrim(@select) <>'select distinct localname+ '' varchar(500),'''
 and ltrim(@select) <>'select distinct localname+ '','''

select @select =  case when @i>0 then substring(@select,1,@i-1) + ', '''+@fname+''' as fname '+ substring(@select,@i,len(@select)) 
       else @select+ ', '''+@fname+''' as fname '
      end; 

-- exec  x__openXML :@XML_FILE, '','*', ''
 declare @sql nvarchar(4000)

set @sql  = 
N'declare @idoc int
exec sp_xml_preparedocument @idoc OUTPUT, @text
    ,''<xml xmlns:rs="urn:schemas-microsoft-com:rowset" xmlns:z="#RowsetSchema"/>''


'+@select+
'
FROM OPENXML (@idoc, ''/xml/rs:data/z:row'',0)
'+
case when IsNull(@params,'') ='' then ''
 else ' WITH ( ' +@params+')'
end + 
case when isnull(ltrim(@where),'')='' then ''
 else ' where '+ @where
end + 

'
exec sp_xml_removedocument @idoc
'
print @sql
exec sp_executesql @sql, N'@text text', @text

if CHARINDEX(' into',@select,0) >0 
 select 1 as id
 




