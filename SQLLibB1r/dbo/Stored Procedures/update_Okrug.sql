CREATE PROCEDURE update_Okrug
AS
BEGIN
MERGE INTO Okrug O
USING [data_mos_ru].[AO_geojson] AO
ON O.fullName=AO.NAME+' административный округ' 
WHEN MATCHED AND 
	(
		(
			(geoData.STEquals(AO.[geometry])<>1 and not O.geoData is null and not ao.geometry is null) 
			or 
			(O.geoData is null and not ao.geometry is null)
			or 
			(not O.geoData is null and ao.geometry is null)
		) 
		OR 
		[dbo].[lrtrim_isnull](O.OKATO)<>[dbo].[lrtrim_isnull](AO.OKATO))
THEN UPDATE SET geoData = AO.[geometry], OKATO=AO.OKATO;
END

