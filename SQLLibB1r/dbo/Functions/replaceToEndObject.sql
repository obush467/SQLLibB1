
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[replaceToEndObject] 
(
	-- Add the parameters for the function here
	@StrWork nvarchar(50),
	@ShortName nvarchar(50), 
	@AOLEVEL int
)
RETURNS  nvarchar(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultVar  nvarchar(50)
	DECLARE @StrReplaced nvarchar(50)
	select @StrReplaced=SOCRNAME from fias_Moscow.AddressObjectType where LEVEL=@AOLEVEL and SCNAME=@ShortName
	SET  @ResultVar=dbo.replaceToEnd(@StrWork,@StrReplaced)
	RETURN @ResultVar

END

