-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[kod_by_tip_DU]
(
	@kod int
)
RETURNS varchar(50)
AS
BEGIN
DECLARE @ResultVar varchar(50)
SELECT @ResultVar=kod FROM tipdu
WHERE kod=@kod
RETURN @ResultVar

END
