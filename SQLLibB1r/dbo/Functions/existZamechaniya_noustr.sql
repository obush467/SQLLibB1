-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION existZamechaniya_noustr 
(
	@kod int
)
RETURNS BIT
AS
BEGIN
	-- Declare the return variable here
DECLARE @Result BIT
IF (EXISTS
(
	SELECT [kod]
	FROM [dbo].[reestr_zamechaniya] z 
	WHERE   
		(NOT ISNULL(z.status, '') in ('снято','устранено')) 
		AND (ISNULL(z.text, '') <> '' 
			OR
            ISNULL(z.zam, '') <> '') 
		AND (ISNULL(z.zam, '') <> 'Установлен')	
		AND kod=@kod))
	SET @Result= 1
	ELSE
	SET @Result= 0
	RETURN @Result

END
