USE [ftb_SQL1]
GO
/****** Object:  View [dbo].[v__CreditCard_Transactions_FullDataset]    Script Date: 23-Oct-22 20:11:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[v__CreditCard_Transactions_FullDataset]
AS

SELECT TOP(100) PERCENT 	
		Transaction_ID						= t.[id]
		, Transaction_DateTime				= t.[date]
		, Transaction_Date					= CONVERT(CHAR, t.[date], 23)
		, Transaction_Month					= DATEPART(MONTH,t.[date])
		, Transaction_Time					= CONVERT(CHAR, t.[date], 108)
		, Transaction_Time_00_07			= IIF((CONVERT(CHAR, t.[date], 108)) BETWEEN '00:00:00' AND '06:59:99', 1,0)
		, Transaction_Time_07_09			= IIF((CONVERT(CHAR, t.[date], 108)) BETWEEN '07:00:00' AND '08:59:99', 1,0)
		, Transaction_Time_09_24			= IIF((CONVERT(CHAR, t.[date], 108)) BETWEEN '09:00:00' AND '23:59:99', 1,0)
		, Transaction_Hour					= DATEPART(HOUR,t.[date])
		, Transaction_Amount				= t.[amount]
		, Transaction_Amount_Under_2		= IIF(t.[amount]<2,1,0)
		, Transaction_Amount_EvenDollars	= IIF(t.[amount] - ROUND(t.[amount], 0) = 0,1,0) -- Transaction Amounts with no decimals 
		, Transaction_Amount_Over_1000		= IIF(t.[amount]>1000,1,0)
		, Transaction_Credit_Card_ID		= t.[credit_card_id]
		, Credit_Card_Card					= cc.[card]
		, Credit_Card_CarddHolder_ID		= cc.[cardholder_id]
		, Cardholder_Name					= ch.[name]
		, Transaction_Merchant_ID			= t.[merchant_id]
		, Merchant_Name						= m.[name]
		, Merchant_Merchant_Category_ID		= m.[id]
		, Merchant_Category_Name			= mc.[name]

FROM	dbo.[transaction]						AS t
		INNER JOIN dbo.[credit_card]			AS cc
			ON t.[credit_card_id] = cc.[id]
		INNER JOIN dbo.[cardholder]				AS ch
			ON cc.[cardholder_id] = ch.[id]
		INNER JOIN dbo.[merchant]				AS m
			ON t.[merchant_id] = m.[id]
		INNER JOIN dbo.[merchant_Category]		AS mc
			ON m.[merchant_category_id] = mc.[id]

GO
