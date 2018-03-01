CREATE VIEW dbo.adresa
AS
SELECT     dbo.adress.[#], dbo.Okrug.fullName AS Okrug, dbo.raion.name AS ulitsa, dbo.adress.nazvanie_ulitsi, dbo.adress.polniy_adres, dom_type_1.domtype_full, 
                      dom_type_1.domtype_shot, dbo.adress.dom, dbo.adress.korpus, dbo.adress.stroenie, dbo.adress.ulitsa_only, dbo.adress.type_full, dbo.adress.ulitsa_num, 
                      dbo.adress.propis, dbo.adress.ulitsa_sokr, dbo.adress.kod_adresa, dbo.adress.bti_for_find, dom_type_1.id
FROM         dbo.adress INNER JOIN
                      dbo.dom_type ON dbo.adress.stroenie_type = dbo.dom_type.id LEFT OUTER JOIN
                      dbo.dom_type AS dom_type_1 ON dbo.adress.dom_type = dom_type_1.id LEFT OUTER JOIN
                      dbo.Okrug ON dbo.adress.okrug_id = dbo.Okrug.id LEFT OUTER JOIN
                      dbo.raion ON dbo.adress.raion_id = dbo.raion.id

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[23] 2[7] 3) )"
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
         Begin Table = "Okrug"
            Begin Extent = 
               Top = 0
               Left = 442
               Bottom = 112
               Right = 602
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "raion"
            Begin Extent = 
               Top = 98
               Left = 799
               Bottom = 367
               Right = 960
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dom_type_1"
            Begin Extent = 
               Top = 153
               Left = 448
               Bottom = 331
               Right = 608
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "adress"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 388
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dom_type"
            Begin Extent = 
               Top = 338
               Left = 449
               Bottom = 511
               Right = 609
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
      Begin ColumnWidths = 19
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width =', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'adresa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N' 1500
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'adresa';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'adresa';

