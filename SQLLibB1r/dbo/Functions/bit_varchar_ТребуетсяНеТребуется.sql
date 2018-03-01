
CREATE FUNCTION [dbo].[bit_varchar_ТребуетсяНеТребуется]
(
	@P bit
)
RETURNS varchar(50) WITH  schemabinding
AS
BEGIN
	DECLARE @ResultVar varchar(50)
	SELECT @ResultVar=
		CASE 
			WHEN @P is null THEN ''
			WHEN @P=1 THEN 'Требуется'
			WHEN @P=0 THEN 'Не требуется'
		END
	RETURN @ResultVar
END

