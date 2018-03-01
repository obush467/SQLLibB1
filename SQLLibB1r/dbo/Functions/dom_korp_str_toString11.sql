
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[dom_korp_str_toString11] 
(
	   @dom nvarchar(50)
      ,@korpus nvarchar(50)
      ,@stroenie nvarchar(50)
      ,@dom_type int
      ,@stroenie_type int
)
RETURNS nvarchar(50)
WITH SCHEMABINDING
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultVar nvarchar(50),@dom_str nvarchar(50),@stroenie_str nvarchar(50)
	select @dom_str=domtype_shot from dbo.dom_type where id=@dom_type
	select @stroenie_str=domtype_shot from dbo.dom_type where id=@stroenie_type

	SELECT @ResultVar=
	  case 
		when ltrim(rtrim(isnull(@dom,'')))<>'' then
			@dom_str + ltrim(rtrim(@dom))
			else ''
		end
		+
		case 
			when ltrim(rtrim(isnull(@korpus,'')))<>'' then ' кор. ' + ltrim(rtrim(@korpus))
			else ''
		end
		+
		case 
		when ltrim(rtrim(isnull(@stroenie,'')))<>'' then
			' '+@stroenie_str + ltrim(rtrim(@stroenie))
			else ''
		end
	RETURN ltrim(rtrim(@ResultVar))

END

