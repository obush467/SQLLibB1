
CREATE VIEW [dbo].[rz_ustanovka_du]
WITH   VIEW_METADATA
AS
SELECT        kod, status, text, [key], pic, zam, memo, foto, podtverjd_memo, podtverjd_foto, podtverjd_status
FROM            dbo.reestr_zamechaniya
WHERE        (zam_type = 'ustanovka_du')

