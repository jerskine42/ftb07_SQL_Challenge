USE [ftb_SQL1]
GO
/****** Object:  StoredProcedure [dbo].[sp_Alter_Table_FK_Credit_Card]    Script Date: 17-Oct-22 12:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<James Erskine>
-- Create date: <2022-10-05>
-- Description:	<SQL Database for Module 7 Challenge Problem>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Alter_Table_FK_Credit_Card] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


/****** Object:  Table [dbo].[credit_card]    Script Date: 05-Oct-22 17:25:44 ******/

ALTER TABLE [dbo].[credit_card]  WITH CHECK ADD  CONSTRAINT [FK_Creditcard_Cardholder] FOREIGN KEY([cardholder_id])
REFERENCES [dbo].[cardholder] ([id])


ALTER TABLE [dbo].[credit_card] CHECK CONSTRAINT [FK_Creditcard_Cardholder]



END
GO
