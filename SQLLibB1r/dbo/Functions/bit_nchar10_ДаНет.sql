
CREATE FUNCTION [dbo].[bit_nchar10_ДаНет]
(
	@P bit
)
RETURNS nchar(10) WITH  schemabinding
AS 
BEGIN
	DECLARE @ResultVar nchar(10)
	SELECT @ResultVar=
		CASE 
			WHEN @P is null THEN ''
			WHEN @P=1 THEN 'Да'
			WHEN @P=0 THEN 'Нет'
		END
	RETURN @ResultVar
END


