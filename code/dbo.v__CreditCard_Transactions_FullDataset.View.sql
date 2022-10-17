USE [ftb_SQL1]
GO
/****** Object:  View [dbo].[v__CreditCard_Transactions_FullDataset]    Script Date: 17-Oct-22 13:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[v__CreditCard_Transactions_FullDataset]
AS

SELECT TOP(100) PERCENT 	
		Transaction_ID						= t.[id]
		, Transaction_Date					= t.[date]
		, Transaction_Amount				= t.[amount]
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
