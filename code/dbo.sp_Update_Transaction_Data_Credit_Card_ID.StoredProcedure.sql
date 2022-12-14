USE [ftb_SQL1]
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_Transaction_Data_Credit_Card_ID]    Script Date: 17-Oct-22 12:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<James Erskine>
-- Create date: <2022-10-05>
-- Description:	<SQL Database for Module 7 Challenge Problem>
-- =============================================
create PROCEDURE [dbo].[sp_Update_Transaction_Data_Credit_Card_ID] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


/****** Object:  Table [dbo].[transaction]    Script Date: 05-Oct-22 17:26:11 ******/

UPDATE	[dbo].[transaction]

SET		[credit_card_id] = cc.[id] 
							
FROM	[dbo].[transaction]					AS t
		INNER JOIN [dbo].[credit_card]		AS cc
			ON t.[card] = cc.[card]
      




END
GO
