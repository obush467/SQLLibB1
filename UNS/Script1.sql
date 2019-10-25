
DECLARE @input datetime
SET @input=getdate()-5
-- TODO: задайте здесь значения параметров.

EXECUTE [bclr].[Load] @input
GO
