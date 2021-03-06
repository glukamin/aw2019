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


-- Insert scripts for table: ProductCategory
PRINT 'Inserting rows into table: ProductCategory'
SET IDENTITY_INSERT [Production].[ProductCategory] ON

INSERT INTO [Production].[ProductCategory] ([ProductCategoryID], [Name], [rowguid], [ModifiedDate]) VALUES (1, N'Bikes', 'cfbda25c-df71-47a7-b81b-64ee161aa37c', '20080430 00:00:00.000')
INSERT INTO [Production].[ProductCategory] ([ProductCategoryID], [Name], [rowguid], [ModifiedDate]) VALUES (2, N'Components', 'c657828d-d808-4aba-91a3-af2ce02300e9', '20080430 00:00:00.000')
INSERT INTO [Production].[ProductCategory] ([ProductCategoryID], [Name], [rowguid], [ModifiedDate]) VALUES (3, N'Clothing', '10a7c342-ca82-48d4-8a38-46a2eb089b74', '20080430 00:00:00.000')
INSERT INTO [Production].[ProductCategory] ([ProductCategoryID], [Name], [rowguid], [ModifiedDate]) VALUES (4, N'Accessories', '2be3be36-d9a2-4eee-b593-ed895d97c2a6', '20080430 00:00:00.000')
GO

SET IDENTITY_INSERT [Production].[ProductCategory] OFF



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
