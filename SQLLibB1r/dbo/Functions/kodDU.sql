-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[kodDU]
(
	@tip varchar(50)
)
RETURNS int
AS
BEGIN
DECLARE @ResultVar int
SELECT @ResultVar=kod FROM tipdu
WHERE (tip=@tip and not @tip is null) or (@tip is null and tip is null)

RETURN @ResultVar

END
