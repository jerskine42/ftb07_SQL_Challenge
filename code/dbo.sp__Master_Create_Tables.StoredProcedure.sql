USE [ftb_SQL1]
GO
/****** Object:  StoredProcedure [dbo].[sp__Master_Create_Tables]    Script Date: 17-Oct-22 12:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<James Erskine>
-- Create date: <2022-10-05>
-- Description:	<SQL Database for Module 7 Challenge Problem>
-- =============================================
CREATE PROCEDURE [dbo].[sp__Master_Create_Tables] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

-- Step 0 -- Import data from CSV Files
-- Validation Queries should have no records displayed
SELECT * FROM [ftb_SQL1].[stage].[v_Validate_Credit_Card_TO_Card_Holder]
SELECT * FROM [ftb_SQL1].[stage].[v_Validate_Merchant_TO_Merchant_Category]
SELECT * FROM [ftb_SQL1].[stage].[v_Validate_Transaction_TO Credit_Card_TO_Merchant]

-- Step 1 - Drop the tables if they exist
EXEC [ftb_SQL1].[dbo].[sp_Drop_Tables]

-- Step 2 - Create the tables with primary keys
EXEC [ftb_SQL1].[dbo].[sp_Create_Table_Cardholder]
EXEC [ftb_SQL1].[dbo].[sp_Create_Table_Credit_Card]
EXEC [ftb_SQL1].[dbo].[sp_Create_Table_Merchant]
EXEC [ftb_SQL1].[dbo].[sp_Create_Table_Merchant_Category]
EXEC [ftb_SQL1].[dbo].[sp_Create_Table_Transaction]

-- Step 3 - Load the data into the tables
-- 3a. Static Data First
EXEC [ftb_SQL1].[dbo].[sp_Insert_Static_Data_Merchant_Category]
	SELECT COUNT(*) FROM [ftb_SQL1].[dbo].[merchant_category]

-- 3b. Mater Data Second
EXEC [ftb_SQL1].[dbo].[sp_Insert_Master_Data_Cardholder]
	SELECT COUNT(*) FROM [ftb_SQL1].[dbo].[cardholder]
EXEC [ftb_SQL1].[dbo].[sp_Insert_Master_Data_Credit_Card]
	SELECT COUNT(*) FROM [ftb_SQL1].[dbo].[credit_card]
EXEC [ftb_SQL1].[dbo].[sp_Insert_Master_Data_Merchant]
	SELECT COUNT(*) FROM [ftb_SQL1].[dbo].[merchant]

-- 3c. Document Data third
-- No Document Data Provided

-- 3d. Transaction Data Last
EXEC [ftb_SQL1].[dbo].[sp_Insert_Transaction_Data_Transaction]
EXEC [ftb_SQL1].[dbo].[sp_Update_Transaction_Data_Credit_Card_ID]
	SELECT COUNT(*) FROM [ftb_SQL1].[dbo].[transaction]

-- Step 4 - Set the foreign key constraints
EXEC [ftb_SQL1].[dbo].[sp_Alter_Table_FK_Credit_Card]
EXEC [ftb_SQL1].[dbo].[sp_Alter_Table_FK_Merchant]
EXEC [ftb_SQL1].[dbo].[sp_Alter_Table_FK_Transaction]

-- Step 5 - Alter Columns
-- Transaction DateTime --> Timestamp: Are not compatible data types
EXEC [ftb_SQL1].[dbo].[sp_Alter_Table_DC_Transaction_Card]



END
GO
