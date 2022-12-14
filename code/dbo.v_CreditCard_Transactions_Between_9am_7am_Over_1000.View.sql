USE [ftb_SQL1]
GO
/****** Object:  View [dbo].[v_CreditCard_Transactions_Between_9am_7am_Over_1000]    Script Date: 23-Oct-22 20:11:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






Create VIEW [dbo].[v_CreditCard_Transactions_Between_9am_7am_Over_1000]
AS

/****** Object:  View [dbo].[HighestValue_Trans_Between]    Script Date: 13-Oct-22 16:34:12 ******/
-- Take your investigation a step futher by considering the time period in which potentially fraudulent transactions are made.
-- What are the top 100 highest transactions made between 7:00 am and 9:00 am?
-- Do you see any anomalous transactions that could be fraudulent?
-- Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?
-- If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.
/****** Object:  View [dbo].[HighestValue_Trans_Between]    Script Date: 13-Oct-22 16:34:12 ******/

SELECT TOP(100)  	
			Time_Frame							= 'Between 9am and 7am'
			, Transaction_Count_Over_1000		= SUM(Transaction_Amount_Over_1000)
			, Transaction_Count					= COUNT(*) 
			, Transaction_Percent_Over_1000		= CAST(SUM(Transaction_Amount_Over_1000) AS DECIMAL)/CAST(COUNT(*) AS DECIMAL)

FROM		dbo.[v__CreditCard_Transactions_FullDataset] 

WHERE		NOT((CONVERT(char(5), Transaction_DateTime, 108) BETWEEN '07:00' AND '09:00'))

GO
