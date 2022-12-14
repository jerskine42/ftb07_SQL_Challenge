USE [ftb_SQL1]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Static_Data_Merchant_Category]    Script Date: 17-Oct-22 12:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<James Erskine>
-- Create date: <2022-10-05>
-- Description:	<SQL Database for Module 7 Challenge Problem>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Static_Data_Merchant_Category] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here



/****** Object:  Table [dbo].[merchant_category]    Script Date: 05-Oct-22 17:26:02 ******/
INSERT INTO [dbo].[merchant_category]
           ([id]
           ,[name])

SELECT TOP (100) PERCENT 
		[id]
		,[name]

FROM [ftb_SQL1].[stage].[merchant_category]

ORDER BY id



END
GO
