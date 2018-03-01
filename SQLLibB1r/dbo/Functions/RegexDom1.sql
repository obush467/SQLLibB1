CREATE FUNCTION [dbo].[RegexDom1](@DomInput varchar(50) =null, @Reg varchar(500) = '(?:(д\.|вл\.|д/в|дв\.)\s*){0,1}((?>(?!стр\.|соор\.|кор\.|корп\.))\S+){0,1}\s*(?:(?:кор\.|корп\.){0,1}\s*((?>(?!стр\.|соор\.))\S+){0,1}){0,1}\s*(стр\.|соор\.){0,1}\s*(.+){0,1}')
returns @res table(dom_TYPE varchar(50),dom varchar(50), korpus varchar(50), stroenie_TYPE varchar(50), stroenie varchar(50))
AS
begin
declare @t table (id int not null identity(1,1),[Group] nvarchar(4000), [Index] INT)
declare @dom varchar(50), @dom_TYPE varchar(50), @korpus varchar(50), @stroenie varchar(50), @stroenie_TYPE varchar(50)
insert into @t([Group],[Index])
SELECT * FROM [dbo].[Match] (@DomInput, @Reg)
select 
	@dom_TYPE=CASE 
		WHEN [group]='д.' then 'дом'
		when [group]='вл.' then 'владение'
		when [group]='д/в' or  [group]='дв.'  then 'домовладение'
		else 'дом'
	end
from @t where id=2
select @dom=[group] from @t where id=3
select @korpus=[group] from @t where id=4
select 
	@stroenie_TYPE=CASE 
		WHEN [group]='стр.' then 'строение'
		when [group]='соор.' then 'сооружение'
		when [group]='литер'  then 'литер'
	end
from @t where id=5
select @stroenie=[group] from @t where id=6
insert into @res (dom_TYPE,dom,korpus,stroenie, stroenie_TYPE) values(@dom_TYPE,@dom, @korpus, @stroenie,@stroenie_TYPE)
return
end
