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


-- Insert scripts for table: ContactType
PRINT 'Inserting rows into table: ContactType'
SET IDENTITY_INSERT [Person].[ContactType] ON

INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (1, N'Accounting Manager', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (2, N'Assistant Sales Agent', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (3, N'Assistant Sales Representative', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (4, N'Coordinator Foreign Markets', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (5, N'Export Administrator', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (6, N'International Marketing Manager', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (7, N'Marketing Assistant', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (8, N'Marketing Manager', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (9, N'Marketing Representative', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (10, N'Order Administrator', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (11, N'Owner', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (12, N'Owner/Marketing Assistant', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (13, N'Product Manager', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (14, N'Purchasing Agent', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (15, N'Purchasing Manager', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (16, N'Regional Account Representative', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (17, N'Sales Agent', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (18, N'Sales Associate', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (19, N'Sales Manager', '20080430 00:00:00.000')
INSERT INTO [Person].[ContactType] ([ContactTypeID], [Name], [ModifiedDate]) VALUES (20, N'Sales Representative', '20080430 00:00:00.000')
GO

SET IDENTITY_INSERT [Person].[ContactType] OFF



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
