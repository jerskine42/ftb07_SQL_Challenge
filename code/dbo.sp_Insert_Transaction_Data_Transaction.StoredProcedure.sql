USE [ftb_SQL1]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Transaction_Data_Transaction]    Script Date: 17-Oct-22 12:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<James Erskine>
-- Create date: <2022-10-05>
-- Description:	<SQL Database for Module 7 Challenge Problem>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Transaction_Data_Transaction] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


/****** Object:  Table [dbo].[transaction]    Script Date: 05-Oct-22 17:26:11 ******/
INSERT INTO [dbo].[transaction]
           ([id]
		   ,[date]
           ,[amount]
           ,[card]
           ,[merchant_id])

SELECT TOP (100) PERCENT 
		[id]
		,[date]
		,[amount]
		,[card]
		,[id_merchant]

FROM [ftb_SQL1].[stage].[transaction]

ORDER BY id 



END
GO
