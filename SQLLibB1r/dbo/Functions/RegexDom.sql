CREATE FUNCTION [dbo].[RegexDom](@DomInput varchar(50) =null, @Reg varchar(500) = '(?:(?:д|вл|д/в)\.*\s*)(\d+\w*(?:/\d+){0,1}){0,1}(?:\s*кор(?:п){0,1}\.{0,1}\s*(\d*\w*))*\s*(?:стр(?:оение)*\.*\s*(\w*))*')
returns @res table(dom varchar(50), korpus varchar(50), stroenie varchar(50))
AS
begin
declare @t table (id int not null identity(1,1),[Group] nvarchar(4000), [Index] INT)
declare @dom varchar(50), @korpus varchar(50), @stroenie varchar(50)
insert into @t([Group],[Index])
SELECT * FROM [dbo].[Match] (@DomInput, @Reg)
select @dom=[group] from @t where id=2
select @korpus=[group] from @t where id=3
select @stroenie=[group] from @t where id=4
insert into @res (dom,korpus,stroenie) values(@dom, @korpus, @stroenie)
return
end
