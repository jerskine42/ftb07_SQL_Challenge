USE [ftb_SQL1]
GO
/****** Object:  StoredProcedure [dbo].[sp_Create_Table_Credit_Card]    Script Date: 17-Oct-22 12:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<James Erskine>
-- Create date: <2022-10-05>
-- Description:	<SQL Database for Module 7 Challenge Problem>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Create_Table_Credit_Card] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here



/****** Object:  Table [dbo].[credit_card]    Script Date: 05-Oct-22 17:25:44 ******/
CREATE TABLE [dbo].[credit_card](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[card] [nvarchar](20) NOT NULL,
	[cardholder_id] [int] NULL,
 CONSTRAINT [PK_Credit_Card] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


END
GO
