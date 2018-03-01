

CREATE VIEW [dbo].[proverkaGU]
AS
SELECT        g.[Уникальный номер информационного указателя] AS Num, g.Округ AS Okrug, g.Район AS Raion, g.[Улица, просп, пер и проч] AS Street, 
                         g.[Дом, корп, стр и проч] AS Dom, p.[Ошибки в адресации ГУ] AS ErrorAdress, p.[Cоответствие фактического места установки паспортному] AS Fakt, 
                         p.[Наличие согласованного макета] AS Maket, p.[Наличие согласованного паспорта] AS Passport, p.Примечание AS Prim, p.Проверено AS Checking, g.ID, 
                         p.[Соответствие реальных плашек, макета и паспортных плашек] AS Plash, p.ts,
						 p.updated
FROM            dbo.ГУ AS g INNER JOIN
                         dbo.Проверка_паспортов AS p ON p.GU_ID = g.ID INNER JOIN
                         dbo.sotr ON p.Sotr_ID = dbo.sotr.id
WHERE        (dbo.sotr.UID = USER_ID(SUSER_NAME()))



GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[53] 4[15] 2[15] 3) )"
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
         Begin Table = "g"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 520
            End
            DisplayFlags = 280
            TopColumn = 114
         End
         Begin Table = "sotr"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 399
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "p"
            Begin Extent = 
               Top = 68
               Left = 501
               Bottom = 374
               Right = 1374
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
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 7950
         Alias = 6270
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'proverkaGU';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'proverkaGU';

