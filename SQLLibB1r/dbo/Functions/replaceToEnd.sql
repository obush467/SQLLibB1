CREATE FUNCTION [dbo].[replaceToEnd] 
(
	@StrWork nvarchar(50),
	@StrReplaced  nvarchar(50)
)
RETURNS  nvarchar(50)
WITH SCHEMABINDING
AS
BEGIN
	DECLARE @ResultVar  nvarchar(50)
	SET  @ResultVar=ltrim(rtrim(replace(@StrWork,@StrReplaced,'')))
	SET @ResultVar=replace((@ResultVar+' ' + @StrReplaced),'  ',' ')
	RETURN @ResultVar
END
