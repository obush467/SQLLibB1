

CREATE FUNCTION [dbo].[varchar_bit_УстановленаНеУстановлена]
(
	@P varchar(50)  
)
RETURNS bit
AS
BEGIN
	DECLARE @ResultVar  bit
	SELECT @ResultVar=
		CASE 
			WHEN [dbo].[lrtrim_isnull](@P)='' THEN null
			WHEN [dbo].[lrtrim_isnull](@P)='Установлена' THEN 1
			WHEN [dbo].[lrtrim_isnull](@P)='Не установлена' THEN 0
		END
	RETURN @ResultVar
END


