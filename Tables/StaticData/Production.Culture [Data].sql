-- BEGINNING TRANSACTION DATA
PRINT 'Beginning transaction DATA'
BEGIN TRANSACTION _DATA_
GO
SET NOEXEC OFF
SET ANSI_WARNINGS ON
SET XACT_ABORT ON
SET IMPLICIT_TRANSACTIONS OFF
SET ARITHABORT ON
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
GO


-- Insert scripts for table: Culture
PRINT 'Inserting rows into table: Culture'
INSERT INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate]) VALUES (N'      ', N'Invariant Language (Invariant Country)', '20080430 00:00:00.000')
INSERT INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate]) VALUES (N'ar    ', N'Arabic', '20080430 00:00:00.000')
INSERT INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate]) VALUES (N'en    ', N'English', '20080430 00:00:00.000')
INSERT INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate]) VALUES (N'es    ', N'Spanish', '20080430 00:00:00.000')
INSERT INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate]) VALUES (N'fr    ', N'French', '20080430 00:00:00.000')
INSERT INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate]) VALUES (N'he    ', N'Hebrew', '20080430 00:00:00.000')
INSERT INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate]) VALUES (N'th    ', N'Thai', '20080430 00:00:00.000')
INSERT INTO [Production].[Culture] ([CultureID], [Name], [ModifiedDate]) VALUES (N'zh-cht', N'Chinese', '20080430 00:00:00.000')
GO



-- COMMITTING TRANSACTION DATA
PRINT 'Committing transaction DATA'
IF @@TRANCOUNT>0
	COMMIT TRANSACTION _DATA_
GO

SET NOEXEC OFF
GO

SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO
