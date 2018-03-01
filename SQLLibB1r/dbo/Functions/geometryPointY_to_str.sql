
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[geometryPointY_to_str](@Geo geometry)
RETURNS varchar(50) WITH  schemabinding
AS
BEGIN
	DECLARE @ResultVar varchar(50), @Point geometry
	IF (@Geo is null)
	SET @ResultVar=null
	ELSE
		BEGIN
		SET @Point=@Geo.STPointN(1)
		IF (@Point is null)
			SET @ResultVar=null
			ELSE
			BEGIN
			SET @ResultVar =ltrim(rtrim(str(@Point.STY,20,4)))
			END
		END
	RETURN @ResultVar
END

