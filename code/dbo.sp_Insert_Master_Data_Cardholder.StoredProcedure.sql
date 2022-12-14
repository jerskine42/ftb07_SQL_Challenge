USE [ftb_SQL1]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Master_Data_Cardholder]    Script Date: 17-Oct-22 12:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<James Erskine>
-- Create date: <2022-10-05>
-- Description:	<SQL Database for Module 7 Challenge Problem>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Master_Data_Cardholder] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


/****** Object:  Table [dbo].[cardholder]    Script Date: 05-Oct-22 17:25:31 ******/
INSERT INTO [dbo].[cardholder]
           ([id]
           ,[name])

SELECT TOP (100) PERCENT 
		[id]
		,[name]

FROM [ftb_SQL1].[stage].[card_holder]

ORDER BY id



END
GO
