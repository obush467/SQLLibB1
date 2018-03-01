-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[lrtrim_isnull] (@str varchar(8000))
RETURNS varchar(8000) WITH  schemabinding
AS
BEGIN
	-- Declare the return variable here
DECLARE @ResultVar varchar(8000)

	-- Add the T-SQL statements to compute the return value here
SET @ResultVar =ltrim(rtrim(isnull(@str,'')))

	-- Return the result of the function
RETURN @ResultVar

END
