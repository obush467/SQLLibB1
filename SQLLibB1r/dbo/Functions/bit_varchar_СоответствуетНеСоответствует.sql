
CREATE FUNCTION [dbo].[bit_varchar_СоответствуетНеСоответствует]
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
			WHEN @P=1 THEN 'Соответствует'
			WHEN @P=0 THEN 'Не Соответствует'
		END
	RETURN @ResultVar
END

