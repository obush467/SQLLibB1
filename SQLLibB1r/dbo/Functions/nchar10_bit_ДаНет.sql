

CREATE FUNCTION [dbo].[nchar10_bit_ДаНет]
(
	@P nchar(10)  
)
RETURNS bit
AS
BEGIN
	DECLARE @ResultVar  bit
	SELECT @ResultVar=
		CASE 
			WHEN [dbo].[lrtrim_isnull](@P)='' THEN null
			WHEN [dbo].[lrtrim_isnull](@P)='Да' THEN 1
			WHEN [dbo].[lrtrim_isnull](@P)='Нет' THEN 0
		END
	RETURN @ResultVar
END



