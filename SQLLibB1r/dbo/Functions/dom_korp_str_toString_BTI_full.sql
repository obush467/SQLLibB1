
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[dom_korp_str_toString_BTI_full] 
(
	   @dom nvarchar(50)
      ,@korpus nvarchar(50)
      ,@stroenie nvarchar(50)
      ,@dom_type nvarchar(50)
      ,@stroenie_type nvarchar(50)
)
RETURNS nvarchar(150)
WITH SCHEMABINDING
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultVar nvarchar(50),@ResultVar1 nvarchar(50),@ResultVar2 nvarchar(50),@ResultVar3 nvarchar(50)

	-- Add the T-SQL statements to compute the return value here
	SELECT @ResultVar1=
	  case 
		when ltrim(rtrim(isnull(@dom,'')))<>'' then
			case @dom_type 
				when 'дом' then 'дом '
				when 'домовладение' then 'домовладение '
				when 'владение' then 'владение '
			end + ltrim(rtrim(@dom))
			else ''
		end
		SElect @ResultVar2=
		case 
			when ltrim(rtrim(isnull(@korpus,'')))<>'' then 'корпус ' + ltrim(rtrim(@korpus))
			else ''
		end
		SELECT @ResultVar3=
		case 
		when ltrim(rtrim(isnull(@stroenie,'')))<>'' then
			case @stroenie_type 
				when 'строение' then 'строение '
				when 'сооружение' then 'сооружение '
			end + ltrim(rtrim(@stroenie))
			else ''
		end
	IF @ResultVar1<>'' SET @ResultVar=@ResultVar1
	IF @ResultVar<>'' 
		begin
			IF @ResultVar2<>'' SET @ResultVar=@ResultVar + ', '+@ResultVar2
		END
		ELSE
			begin
			IF @ResultVar2<>'' SET @ResultVar=@ResultVar2
			end 
	IF @ResultVar<>'' 
		begin
			IF @ResultVar3<>'' SET @ResultVar=@ResultVar + ', '+@ResultVar3
		END
		ELSE
			begin
			IF @ResultVar3<>'' SET @ResultVar=@ResultVar3
			end 
	RETURN @ResultVar

END

