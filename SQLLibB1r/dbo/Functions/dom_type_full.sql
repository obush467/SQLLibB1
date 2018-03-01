-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[dom_type_full] 
(
	@ID INT
)
RETURNS nvarchar(50)  
AS 
BEGIN
	-- Declare the return variable here
	DECLARE  @ResultVar nvarchar(50)

	-- Add the T-SQL statements to compute the return value here
	SELECT @ResultVar=domtype_full from dbo.dom_type WHERE dom_type.id=@ID

	-- Return the result of the function
	RETURN @ResultVar

END
