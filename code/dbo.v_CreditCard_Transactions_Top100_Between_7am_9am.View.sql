USE [ftb_SQL1]
GO
/****** Object:  View [dbo].[v_CreditCard_Transactions_Top100_Between_7am_9am]    Script Date: 23-Oct-22 20:11:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





create VIEW [dbo].[v_CreditCard_Transactions_Top100_Between_7am_9am]
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
			, Transaction_DateTime 
			, Transaction_Time
			, Credit_Card_Card
			, Transaction_Amount 

FROM		dbo.[v__CreditCard_Transactions_FullDataset] 

WHERE		((CONVERT(char(5), [Transaction_DateTime], 108) BETWEEN '07:00' AND '09:00'))

ORDER BY	Transaction_Amount DESC


GO
