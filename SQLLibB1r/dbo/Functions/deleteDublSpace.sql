-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[deleteDublSpace]
(
	-- Add the parameters for the function here
	@Str nvarchar(4000)
)
RETURNS nvarchar(4000)
AS
BEGIN
	DECLARE @ResultVar nvarchar(4000)
	set @ResultVar=replace(@Str,char(9),' ')
	set @ResultVar=replace(@ResultVar,char(10),' ')
	set @ResultVar=replace(@ResultVar,char(11),' ')
	set @ResultVar=replace(@ResultVar,char(12),' ')
	set @ResultVar=replace(@ResultVar,char(13),' ')
	set @ResultVar=replace(@ResultVar,char(96),' ')
	while @ResultVar<>replace(@ResultVar,'  ',' ')
	SELECT @ResultVar=replace(@ResultVar,'  ',' ')
	-- Return the result of the function
	RETURN ltrim(rtrim(@ResultVar))

END
