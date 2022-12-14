USE [ftb_SQL1]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Master_Data_Credit_Card]    Script Date: 17-Oct-22 12:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<James Erskine>
-- Create date: <2022-10-05>
-- Description:	<SQL Database for Module 7 Challenge Problem>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Master_Data_Credit_Card] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here



/****** Object:  Table [dbo].[credit_card]    Script Date: 05-Oct-22 17:25:44 ******/
INSERT INTO [dbo].[credit_card]
           ([card]
           ,[cardholder_id])

SELECT TOP (100) PERCENT  
		[card]
		,[cardholder_id]

FROM [ftb_SQL1].[stage].[credit_card]

ORDER BY [card]  


END
GO
