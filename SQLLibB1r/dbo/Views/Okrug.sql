create view Okrug
as
SELECT [ID]
      ,[fullName]
      ,[shortName]
      ,[OKATO]
      ,[geoData]
  FROM [dbo].[AdminArea]
  where Type='02'
