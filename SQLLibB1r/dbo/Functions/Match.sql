CREATE FUNCTION [dbo].[Match]
(@Input NVARCHAR (4000), @Patternt NVARCHAR (4000))
RETURNS 
     TABLE (
        [Group] NVARCHAR (4000) NULL,
        [Index] INT             NULL)
AS
 EXTERNAL NAME [SQLLibB1].[SQLLibB1.RegEx].[MatchRegEx]

