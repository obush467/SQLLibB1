

CREATE FUNCTION [dbo].[bit_varchar_УстановленаНеУстановлена]
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
			WHEN @P=1 THEN 'Установлена'
			WHEN @P=0 THEN 'Не установлена'
		END
	RETURN @ResultVar
END


