USE [ftb_SQL1]
GO
/****** Object:  StoredProcedure [dbo].[sp_Alter_Table_FK_Merchant]    Script Date: 17-Oct-22 12:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<James Erskine>
-- Create date: <2022-10-05>
-- Description:	<SQL Database for Module 7 Challenge Problem>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Alter_Table_FK_Merchant] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


/****** Object:  Table [dbo].[merchant]    Script Date: 05-Oct-22 17:25:52 ******/

ALTER TABLE [dbo].[merchant]  WITH CHECK ADD  CONSTRAINT [FK_Merchant_Merchant_Category] FOREIGN KEY([merchant_category_id])
REFERENCES [dbo].[merchant_category] ([id])


ALTER TABLE [dbo].[merchant] CHECK CONSTRAINT [FK_Merchant_Merchant_Category]


END
GO
