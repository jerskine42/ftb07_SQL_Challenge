USE [ftb_SQL1]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Master_Data_Merchant]    Script Date: 17-Oct-22 12:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<James Erskine>
-- Create date: <2022-10-05>
-- Description:	<SQL Database for Module 7 Challenge Problem>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Master_Data_Merchant] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


/****** Object:  Table [dbo].[merchant]    Script Date: 05-Oct-22 17:25:52 ******/

INSERT INTO [dbo].[merchant]
           ([id]
           ,[name]
           ,[merchant_category_id])

SELECT TOP (100) PERCENT  
		[id]
		,[name]
		,[id_merchant_category]

FROM [ftb_SQL1].[stage].[merchant]

ORDER BY id 

END
GO
