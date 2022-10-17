USE [ftb_SQL1]
GO
/****** Object:  View [dbo].[v_Merchant_Trans_Under_$2]    Script Date: 17-Oct-22 13:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[v_Merchant_Trans_Under_$2]
AS

/****** Object:  View [dbo].[Credit_Cards_Trans_Under_$2]    Script Date: 13-Oct-22 16:34:12 ******/
--
-- What are the top 5 merchants prone to being hacked using small transactions? 
--	
/****** Object:  View [dbo].[Credit_Cards_Trans_Under_$2]    Script Date: 13-Oct-22 16:34:12 ******/

-- SELECT TOP(5) --> There were multiple Merchants tied for 4th (5 Transactions)

WITH X AS(SELECT TOP(5) PERCENT COUNT(Transaction_ID) AS Transaction_Count
			FROM		dbo.[_CreditCard_Transactions_FullDataset] AS X
			WHERE		(Transaction_Amount < 2)
			GROUP BY	Transaction_Merchant_ID, Merchant_Name 
			ORDER BY	COUNT(Transaction_ID) DESC
			)

SELECT TOP(100) PERCENT 
			Transaction_Merchant_ID  
			, Merchant_Name 
			, COUNT(Transaction_ID) AS Transaction_Count

FROM		dbo.[_CreditCard_Transactions_FullDataset] 

WHERE		(Transaction_Amount < 2)

GROUP BY	Transaction_Merchant_ID, Merchant_Name 

HAVING		COUNT(Transaction_ID) >= (SELECT MIN(X.Transaction_Count) FROM X) --> There were multiple Merchants tied for 4th (5 Transactions)

ORDER BY	COUNT(Transaction_ID) DESC

GO
