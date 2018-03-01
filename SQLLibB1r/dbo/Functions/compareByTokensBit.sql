CREATE FUNCTION [dbo].[compareByTokensBit]
(
	@param1 nvarchar(4000),
	@param2 nvarchar(4000)
)
RETURNS BIT
AS
BEGIN
DECLARE @R BIT
IF EXISTS(SELECT * from [dbo].[compareByTokens](@param1,@param2,1))
SET @R= 0
ELSE SET @R= 1
RETURN @R
END

