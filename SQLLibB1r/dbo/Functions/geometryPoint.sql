-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[geometryPoint]
(
	@X float,
	@Y float
)
RETURNS geometry
AS
BEGIN
	DECLARE @ResultVar geometry
	if (@x is null or @y is null)
		SET @ResultVar=null
	ELSE
	BEGIN 
		SET @ResultVar=geometry::Point(@X,@Y,4545)
	END
	RETURN @ResultVar
END
