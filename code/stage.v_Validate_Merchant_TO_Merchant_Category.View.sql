USE [ftb_SQL1]
GO
/****** Object:  View [stage].[v_Validate_Merchant_TO_Merchant_Category]    Script Date: 23-Oct-22 20:11:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create VIEW [stage].[v_Validate_Merchant_TO_Merchant_Category]
AS
SELECT stage.merchant.id AS merchant_id, stage.merchant.name AS merchant_name, stage.merchant.id_merchant_category, stage.merchant_category.id AS category_id, stage.merchant_category.name AS category_name
FROM   stage.merchant LEFT OUTER JOIN
             stage.merchant_category ON stage.merchant.id_merchant_category = stage.merchant_category.id
WHERE (stage.merchant_category.id IS NULL)
GO
