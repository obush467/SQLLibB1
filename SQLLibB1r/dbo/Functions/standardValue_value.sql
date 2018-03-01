CREATE FUNCTION [dbo].[standardValue_value]
(
	@id int
)
RETURNS varchar(50)
AS
BEGIN
	DECLARE @ResultVar varchar(50)
	SELECT @ResultVar=Value FROM standardValues WHERE 
	 id=@id
	RETURN @ResultVar
END

