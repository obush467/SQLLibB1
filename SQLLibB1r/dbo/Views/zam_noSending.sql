

CREATE VIEW [dbo].[zam_noSending]
AS
SELECT        
	t.unikalniy AS Номер
	,dbo.Okrug.shotName AS Округ
	,adress.ulitsa AS Район
	,adress.nazvanie_ulitsi AS Улица
	,dbo.dom_korp_str_toString(adress.dom,adress.korpus,adress.stroenie,DT.domtype_full,ST.domtype_full)  AS Дом, 
	tipdu.tip AS Тип, 
    t.data_osmotra_fio AS Ответственный, 
	CASE WHEN ltrim(rtrim(isnull([text], ''))) <> '' THEN ltrim(rtrim(isnull([text], ''))) WHEN ltrim(rtrim(isnull(zam, ''))) 
    <> '' THEN ltrim(rtrim(isnull(zam, ''))) END AS [Тип замечания], 
	CONVERT(VARCHAR, GETDATE(), 104) AS [Направлено Подрядчику], 
    z.status AS [Факт устранения замечания], 
	z.memo AS [Заключение эксперта Подрядчика], 
	z.foto AS Фото, 
    z.podtverjd_memo AS [Подтверждение устранения Заказчиком]
FROM            dbo.reestr_t AS t 
	INNER JOIN adress ON adress.id=t.adress_id
	INNER JOIN reestr_zamechaniya AS z ON t.kod = z.kod 
	INNER JOIN Okrug ON dbo.Okrug.id = adress.okrug_id
	INNER JOIN tipdu ON tipdu.kod=t.tipdu_kod
	LEFT OUTER JOIN dom_type DT ON DT.id=adress.dom_type
	LEFT OUTER JOIN dom_type ST ON DT.id=adress.stroenie_type
WHERE        
	(NOT (ISNULL(z.status, N'') IN ('снято', 'устранено'))) 
	AND (
			ISNULL(z.text, '') <> '' 
			OR
		    ISNULL(z.zam, '') <> ''
		) 
	AND 
		(ISNULL(z.zam, '') <> 'установлен')
	AND 
		(t.isklucheno_key = 0) 
	AND 
		(t.zamechaniya_key = 1) 
	AND 
		(t.vse_ok_key = 0) 
	AND 
		(t.k_priemke_b = 2) 
	AND 
		(NOT (t.data_osmotra IS NULL)) 
	AND 
		(z.napravleno IS NULL)



GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[23] 4[38] 2[23] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "t"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 345
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "z"
            Begin Extent = 
               Top = 6
               Left = 383
               Bottom = 135
               Right = 563
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Okrug"
            Begin Extent = 
               Top = 6
               Left = 601
               Bottom = 118
               Right = 775
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'zam_noSending';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'zam_noSending';

