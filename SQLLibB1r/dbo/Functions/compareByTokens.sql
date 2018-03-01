CREATE FUNCTION compareByTokens
(
	@param1 nvarchar(4000),
	@param2 nvarchar(4000),
	@DelEqual bit=0
)
RETURNS @t TABLE (
	id INT IDENTITY(1,1),
	id1 int NULL,
	StrVal1 nvarchar(100) COLLATE Cyrillic_General_BIN2 NULL,
	id2 int NULL,
	StrVal2 nvarchar(100) COLLATE Cyrillic_General_BIN2 NULL,
	Result nvarchar(100) COLLATE Cyrillic_General_BIN2 NULL
	 PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
),
	INDEX [tokenList] NONCLUSTERED 
(
	[id] ASC,
	[StrVal1] ASC,
		[id1] ASC,
	[StrVal2] ASC,
		[id2] ASC
)
)
AS
BEGIN
DECLARE @t1 AS [tokenList]
DECLARE @t2 AS [tokenList]
INSERT INTO @t ([StrVal1],[id1],[StrVal2],[id2],Result)
SELECT t1.[StrVal]
	,t1.[id]
	,t2.[StrVal]
	,t2.[id]
	,case 
		when not t1.[id] is null and not t2.[id] is null then  'совпадает' 
		when not t1.[id] is null and t2.[id] is null then  'слева'
		when t1.[id] is null and not t2.[id] is null then  'справа'  
	else 'sdfsdf'
	end
FROM [dbo].[ConvertStringDelimsToTable](@param1,' ') t1 
	FULL JOIN
	[dbo].[ConvertStringDelimsToTable](@param2,' ') t2
	ON t1.StrVal=t2.StrVal
if (@DelEqual=1 ) delete from @t where Result='совпадает'
RETURN 
END
