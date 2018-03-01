
CREATE FUNCTION [dbo].[varchar_bit_ТребуетсяНеТребуется]
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
			WHEN [dbo].[lrtrim_isnull](@P)='Требуется' THEN 1
			WHEN [dbo].[lrtrim_isnull](@P)='Не требуется' THEN 0
		END
	RETURN @ResultVar
END









