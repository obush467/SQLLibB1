-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[wordCount] 
(
	-- Add the parameters for the function here
	@Splitting varchar(500)
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultVar int

	select @ResultVar=count(Part) from dbo.SplitString(@Splitting,' ') as SplitTable

	-- Return the result of the function
	RETURN @ResultVar

END

