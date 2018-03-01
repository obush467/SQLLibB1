-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[standardValue]
(
	@Value varchar(50)
)
RETURNS int
AS
BEGIN
	DECLARE @ResultVar int
	SELECT @ResultVar=id FROM standardValues WHERE ([dbo].[lrtrim_isnull](Value)=(@Value) AND NOT @Value is null) OR (Value is null AND @Value is null)
	RETURN @ResultVar
END
