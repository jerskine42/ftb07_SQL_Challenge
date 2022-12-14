USE [ftb_SQL1]
GO
/****** Object:  StoredProcedure [dbo].[sp_Drop_Tables]    Script Date: 17-Oct-22 12:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<James Erskine>
-- Create date: <2022-10-05>
-- Description:	<SQL Database for Module 7 Challenge Problem>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Drop_Tables] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

/****** Object:  Table [dbo].[transaction]    Script Date: 05-Oct-22 17:26:11 ******/
IF OBJECT_ID('dbo.transaction', 'U') IS NOT NULL
  DROP TABLE [dbo].[transaction]

/****** Object:  Table [dbo].[credit_card]    Script Date: 05-Oct-22 17:25:44 ******/
IF OBJECT_ID('dbo.credit_card', 'U') IS NOT NULL
  DROP TABLE [dbo].[credit_card]

/****** Object:  Table [dbo].[cardholder]    Script Date: 05-Oct-22 17:25:31 ******/
IF OBJECT_ID('dbo.cardholder', 'U') IS NOT NULL
  DROP TABLE [dbo].[cardholder]

/****** Object:  Table [dbo].[merchant]    Script Date: 05-Oct-22 17:25:52 ******/
IF OBJECT_ID('dbo.merchant', 'U') IS NOT NULL
  DROP TABLE [dbo].[merchant]

/****** Object:  Table [dbo].[merchant_category]    Script Date: 05-Oct-22 17:26:02 ******/
IF OBJECT_ID('dbo.merchant_category', 'U') IS NOT NULL
  DROP TABLE [dbo].[merchant_category]






END
GO
