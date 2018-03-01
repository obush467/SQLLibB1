-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION GETDATEOFFSET
(
)
RETURNS datetimeoffset
AS
BEGIN
RETURN switchoffset (CONVERT(datetimeoffset, GETDATE()), '-04:00'); 
END
