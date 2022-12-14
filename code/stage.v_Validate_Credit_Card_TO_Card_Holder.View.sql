USE [ftb_SQL1]
GO
/****** Object:  View [stage].[v_Validate_Credit_Card_TO_Card_Holder]    Script Date: 23-Oct-22 20:11:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [stage].[v_Validate_Credit_Card_TO_Card_Holder]
AS

SELECT	stage.credit_card.card
		, stage.credit_card.cardholder_id
		, stage.card_holder.id
		, stage.card_holder.name

FROM	stage.card_holder 
		RIGHT OUTER JOIN stage.credit_card 
			ON stage.card_holder.id = stage.credit_card.cardholder_id

WHERE	(stage.card_holder.id IS NULL)

GO
