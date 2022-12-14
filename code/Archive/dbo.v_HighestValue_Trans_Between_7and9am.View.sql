USE [ftb_SQL1]
GO
/****** Object:  View [dbo].[v_HighestValue_Trans_Between_7and9am]    Script Date: 17-Oct-22 16:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[v_HighestValue_Trans_Between_7and9am]
AS

/****** Object:  View [dbo].[HighestValue_Trans_Between]    Script Date: 13-Oct-22 16:34:12 ******/
-- Take your investigation a step futher by considering the time period in which potentially fraudulent transactions are made.
-- What are the top 100 highest transactions made between 7:00 am and 9:00 am?
-- Do you see any anomalous transactions that could be fraudulent?
-- Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?
-- If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.
/****** Object:  View [dbo].[HighestValue_Trans_Between]    Script Date: 13-Oct-22 16:34:12 ******/

SELECT TOP(100)  	
			Transaction_ID
			, Transaction_Date 
			, Transaction_Time		= CONVERT(char(5), Transaction_Date, 108)
			, Credit_Card_Card
			, Transaction_Amount 

FROM		dbo.[v__CreditCard_Transactions_FullDataset] 

WHERE		((CONVERT(char(5), Transaction_Date, 108) BETWEEN '07:00' AND '09:00'))

ORDER BY	Transaction_Amount DESC


GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[11] 3) )"
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
         Begin Table = "transaction"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 238
               Right = 279
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
         Width = 1000
         Width = 1980
         Width = 1410
         Width = 1000
         Width = 2740
         Width = 1000
         Width = 1000
         Width = 1000
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_HighestValue_Trans_Between_7and9am'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_HighestValue_Trans_Between_7and9am'
GO
