USE [ftb_SQL1]
GO
/****** Object:  StoredProcedure [dbo].[sp_Alter_Table_FK_Transaction]    Script Date: 17-Oct-22 12:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<James Erskine>
-- Create date: <2022-10-05>
-- Description:	<SQL Database for Module 7 Challenge Problem>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Alter_Table_FK_Transaction] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


/****** Object:  Table [dbo].[transaction]    Script Date: 05-Oct-22 17:26:11 ******/

ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Card] FOREIGN KEY([credit_card_id])
REFERENCES [dbo].[credit_card] ([id])

ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FK_Transaction_Card]


ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Merchant] FOREIGN KEY([merchant_id])
REFERENCES [dbo].[merchant] ([id])

ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FK_Transaction_Merchant]

END
GO
