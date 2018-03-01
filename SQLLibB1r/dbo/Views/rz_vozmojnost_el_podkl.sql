
CREATE VIEW [dbo].[rz_vozmojnost_el_podkl]
WITH   VIEW_METADATA
AS
SELECT        kod, status, text, [key], pic, zam, memo, foto, podtverjd_memo, podtverjd_foto, podtverjd_status
FROM            dbo.reestr_zamechaniya
WHERE        (zam_type = 'vozmojnost_el_podkl')

