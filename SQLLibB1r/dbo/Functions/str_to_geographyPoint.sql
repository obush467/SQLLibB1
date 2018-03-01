-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[str_to_geographyPoint](@StrIn varchar(50),@ESPG INT)
RETURNS geography
AS
BEGIN
	DECLARE @Lat varchar(50),@Long varchar(50), @ResultVar geography
	IF ([dbo].[lrtrim_isnull](@StrIn)='')
		SET @ResultVar=NULL
	ELSE
			BEGIN
			SET @Lat=SUBSTRING(@StrIn,1,patindex('%,%',@StrIn)-1)
			SET @Long=SUBSTRING(@StrIn,patindex('%,%',@StrIn)+1,len(@StrIn)-patindex('%,%',@StrIn))
			IF ([dbo].[lrtrim_isnull](@Lat)<>'' and [dbo].[lrtrim_isnull](@Long)<>'')
				SET @ResultVar=geography::Point(@Lat,@Long,@ESPG)
			ELSE SET @ResultVar=NULL
			END
	RETURN @ResultVar
END
