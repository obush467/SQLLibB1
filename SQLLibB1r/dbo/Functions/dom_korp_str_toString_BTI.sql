
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[dom_korp_str_toString_BTI] 
(
	   @dom nvarchar(50)
      ,@korpus nvarchar(50)
      ,@stroenie nvarchar(50)
      ,@dom_type nvarchar(50)
      ,@stroenie_type nvarchar(50)
)
RETURNS nvarchar(50)
WITH SCHEMABINDING
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultVar nvarchar(50)

	-- Add the T-SQL statements to compute the return value here
	SELECT @ResultVar=
	  case 
		when ltrim(rtrim(isnull(@dom,'')))<>'' then
			case @dom_type 
				when 'дом' then ''
				when 'домовладение' then ''
				when 'владение' then ''
			end + ltrim(rtrim(@dom))
			else ''
		end
		+
		case 
			when ltrim(rtrim(isnull(@korpus,'')))<>'' then ' корп.' + ltrim(rtrim(@korpus))
			else ''
		end
		+
		case 
		when ltrim(rtrim(isnull(@stroenie,'')))<>'' then
			case @stroenie_type 
				when 'строение' then ' стр.'
				when 'сооружение' then ' соор.'
			end + ltrim(rtrim(@stroenie))
			else ''
		end
	RETURN @ResultVar

END

