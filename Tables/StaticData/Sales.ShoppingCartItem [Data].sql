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

-- Check Constraint Disable's for Table: [Sales].[ShoppingCartItem]
Print 'Check Constraint Disable''s for Table: [Sales].[ShoppingCartItem]'
ALTER TABLE [Sales].[ShoppingCartItem] NOCHECK CONSTRAINT [CK_ShoppingCartItem_Quantity]

-- Foreign Key Constraint Disable's for Table: [Sales].[ShoppingCartItem]
Print 'Foreign Key Constraint Disable''s for Table: [Sales].[ShoppingCartItem]'
ALTER TABLE [Sales].[ShoppingCartItem] NOCHECK CONSTRAINT [FK_ShoppingCartItem_Product_ProductID]


-- Insert scripts for table: ShoppingCartItem
PRINT 'Inserting rows into table: ShoppingCartItem'
SET IDENTITY_INSERT [Sales].[ShoppingCartItem] ON

INSERT INTO [Sales].[ShoppingCartItem] ([ShoppingCartItemID], [ShoppingCartID], [Quantity], [ProductID], [DateCreated], [ModifiedDate]) VALUES (2, N'14951', 3, 862, '20131109 17:54:07.603', '20131109 17:54:07.603')
INSERT INTO [Sales].[ShoppingCartItem] ([ShoppingCartItemID], [ShoppingCartID], [Quantity], [ProductID], [DateCreated], [ModifiedDate]) VALUES (4, N'20621', 4, 881, '20131109 17:54:07.603', '20131109 17:54:07.603')
INSERT INTO [Sales].[ShoppingCartItem] ([ShoppingCartItemID], [ShoppingCartID], [Quantity], [ProductID], [DateCreated], [ModifiedDate]) VALUES (5, N'20621', 7, 874, '20131109 17:54:07.603', '20131109 17:54:07.603')
GO

SET IDENTITY_INSERT [Sales].[ShoppingCartItem] OFF


-- Foreign Key Constraint Enable's for Table: [Sales].[ShoppingCartItem]
Print 'Foreign Key Constraint Enable''s for Table: [Sales].[ShoppingCartItem]'
ALTER TABLE [Sales].[ShoppingCartItem] CHECK CONSTRAINT [FK_ShoppingCartItem_Product_ProductID]

-- Check Constraint Enable's for Table: [Sales].[ShoppingCartItem]
Print 'Check Constraint Enable''s for Table: [Sales].[ShoppingCartItem]'
ALTER TABLE [Sales].[ShoppingCartItem] CHECK CONSTRAINT [CK_ShoppingCartItem_Quantity]


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
