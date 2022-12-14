USE [ftb_SQL1]
GO
/****** Object:  View [dbo].[v_CreditCard_Transactions_Under_$2]    Script Date: 23-Oct-22 20:11:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[v_CreditCard_Transactions_Under_$2]
AS

/****** Object:  View [dbo].[v_CreditCard_Transactions_Under_$2]    Script Date: 23-Oct-22 15:43:56 ******/
--
-- Some fraudsters hack a credit card by making several small transactions (generally less than $2.00), which are typically ignored by cardholders.
--      - How can you isolate (or group) the transactions of each cardholder?
--		- Count the transactions that are less than $2.00 per cardholder.
--		- Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.
--
/****** Object:  View [dbo].[v_CreditCard_Transactions_Under_$2]    Script Date: 23-Oct-22 15:43:56 ******/

SELECT TOP(100) PERCENT 	
			Credit_Card_Card
			, Transactions_Under_2					= SUM(Transaction_Amount_Under_2)
			, Transaction_Count						= COUNT(*) 
			, Transaction_Percent_Under_2			= CAST(SUM(Transaction_Amount_Under_2) AS DECIMAL)/CAST(COUNT(*) AS DECIMAL)

FROM		dbo.[V__CreditCard_Transactions_FullDataset] 

GROUP BY	Credit_Card_Card

ORDER BY	CAST(SUM(Transaction_Amount_Under_2) AS DECIMAL)/CAST(COUNT(*) AS DECIMAL) DESC

GO
