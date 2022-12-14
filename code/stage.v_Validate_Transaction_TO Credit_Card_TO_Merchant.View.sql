USE [ftb_SQL1]
GO
/****** Object:  View [stage].[v_Validate_Transaction_TO Credit_Card_TO_Merchant]    Script Date: 23-Oct-22 20:11:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [stage].[v_Validate_Transaction_TO Credit_Card_TO_Merchant]
AS

SELECT	stage.[transaction].id
		, stage.[transaction].date
		, stage.[transaction].amount
		, stage.[transaction].card
		, stage.[transaction].id_merchant
		, stage.credit_card.cardholder_id
		, stage.merchant.name AS merchant_name

FROM   stage.[transaction] 
		LEFT OUTER JOIN	stage.merchant 
			ON stage.[transaction].id_merchant = stage.merchant.id 
		LEFT OUTER JOIN	stage.credit_card 
			ON stage.[transaction].card = stage.credit_card.card


WHERE	(stage.credit_card.cardholder_id IS NULL) 
		OR (stage.merchant.name IS NULL)
GO
