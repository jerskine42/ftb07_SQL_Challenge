USE [ftb_SQL1]
GO
/****** Object:  View [dbo].[v_CreditCard_Transactions_Under_$2_Merchant]    Script Date: 23-Oct-22 20:11:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[v_CreditCard_Transactions_Under_$2_Merchant]
AS

/****** Object:  View [dbo].[Credit_Cards_Trans_Under_$2]    Script Date: 13-Oct-22 16:34:12 ******/
--
-- What are the top 5 merchants prone to being hacked using small transactions? 
--	
/****** Object:  View [dbo].[Credit_Cards_Trans_Under_$2]    Script Date: 13-Oct-22 16:34:12 ******/

-- SELECT TOP(5) --> There were multiple Merchants tied for 4th (5 Transactions)

WITH Top5 AS(SELECT TOP(5) PERCENT COUNT(Transaction_ID) AS Transaction_Count
			FROM		dbo.[v__CreditCard_Transactions_FullDataset] AS X
			WHERE		(Transaction_Amount < 2)
			GROUP BY	Transaction_Merchant_ID, Merchant_Name 
			ORDER BY	COUNT(Transaction_ID) DESC
			)

SELECT TOP(100) PERCENT 
			Merchant_Category_Name
			, Merchant_Name 
			, COUNT(Transaction_ID) AS Transaction_Count

FROM		dbo.[v__CreditCard_Transactions_FullDataset] 

WHERE		(Transaction_Amount < 2)

GROUP BY	Merchant_Category_Name, Merchant_Name 

HAVING		COUNT(Transaction_ID) >= (SELECT MIN(Top5.Transaction_Count) FROM Top5) --> There were multiple Merchants tied for 4th (5 Transactions)

ORDER BY	Merchant_Category_Name ASC, COUNT(Transaction_ID) DESC, Merchant_Name 

GO
