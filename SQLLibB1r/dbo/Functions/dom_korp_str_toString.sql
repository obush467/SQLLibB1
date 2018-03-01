-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[dom_korp_str_toString] 
(
	   @dom nvarchar(50)
      ,@korpus nvarchar(50)
      ,@stroenie nvarchar(50)
      ,@dom_type nvarchar(50)
      ,@stroenie_type nvarchar(50)
	  ,@FullFormat bit=0
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
		when (ltrim(rtrim(isnull(@dom,'')))<>'') and @FullFormat=1  then
			lower(@dom_type) +' '+ ltrim(rtrim(@dom))

			when (ltrim(rtrim(isnull(@dom,'')))<>'') and @FullFormat=0  then
			case @dom_type 
				when 'дом' then 'д. '
				when 'домовладение' then 'дв. '
				when 'владение' then 'вл. '
			end + ltrim(rtrim(@dom))

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
			case @stroenie_type 
				when 'строение' then ' стр. '
				when 'сооружение' then ' соор. '
			end + ltrim(rtrim(@stroenie))
			else ''
		end
	RETURN ltrim(rtrim(@ResultVar))

END
