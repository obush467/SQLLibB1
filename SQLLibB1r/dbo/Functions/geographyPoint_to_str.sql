-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[geographyPoint_to_str](@Geo geography)
RETURNS varchar(50) WITH  schemabinding
AS
BEGIN
	DECLARE @Lat varchar(50),@Long varchar(50), @ResultVar varchar(50), @Point  geography
	IF (@Geo is null)
	SET @ResultVar=''
	ELSE
		BEGIN
		SET @Point=@Geo.STPointN(1)
		IF (@Point is null)
			SET @ResultVar=''
			ELSE
			BEGIN
			SET @Lat=str(@Point.Lat,11,8)
			SET @Long=str(@Point.Long,11,8)
			SET @ResultVar =@Lat+','+@Long
			END
		END
	RETURN @ResultVar
END
