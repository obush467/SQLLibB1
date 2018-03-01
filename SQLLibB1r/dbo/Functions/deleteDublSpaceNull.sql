-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[deleteDublSpaceNull] 
(
	-- Add the parameters for the function here
	@Str nvarchar(4000)
)
RETURNS nvarchar(4000)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultVar nvarchar(4000)
	SELECT @ResultVar=[dbo].[deleteDublSpace](@Str)
	IF (@ResultVar='')
	set @ResultVar=null
	RETURN @ResultVar
END
