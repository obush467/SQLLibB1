-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[StreetNumbers]
(	
	-- Add the parameters for the function here
	@count int
)
RETURNS @Tbl TABLE (Number nvarchar(10))
AS
begin
declare @ID int
declare @MAXID int
set @ID=1
set @MAXID=@count
while @ID<=@MAXID
begin
	insert into @Tbl(Number) values (CAST(@ID as nvarchar(10)) + '-й')
	insert into @Tbl(Number) values (CAST(@ID as nvarchar(10)) + '-я')
	insert into @Tbl(Number) values (CAST(@ID as nvarchar(10)) + '-е')
	insert into @Tbl(Number) values (CAST(@ID as nvarchar(10)) + '-ый')
	insert into @Tbl(Number) values (CAST(@ID as nvarchar(10)) + '-ая')
	insert into @Tbl(Number) values (CAST(@ID as nvarchar(10)) + '-ое')
	insert into @Tbl(Number) values (CAST(@ID as nvarchar(10)) + '-ые')
	insert into @Tbl(Number) values (CAST(@ID as nvarchar(10)) + '-ие')
	set @ID=@ID+1
end
RETURN 

end

