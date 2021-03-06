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

-- Check Constraint Disable's for Table: [Sales].[SalesTerritoryHistory]
Print 'Check Constraint Disable''s for Table: [Sales].[SalesTerritoryHistory]'
ALTER TABLE [Sales].[SalesTerritoryHistory] NOCHECK CONSTRAINT [CK_SalesTerritoryHistory_EndDate]

-- Foreign Key Constraint Disable's for Table: [Sales].[SalesTerritoryHistory]
Print 'Foreign Key Constraint Disable''s for Table: [Sales].[SalesTerritoryHistory]'
ALTER TABLE [Sales].[SalesTerritoryHistory] NOCHECK CONSTRAINT [FK_SalesTerritoryHistory_SalesPerson_BusinessEntityID]
ALTER TABLE [Sales].[SalesTerritoryHistory] NOCHECK CONSTRAINT [FK_SalesTerritoryHistory_SalesTerritory_TerritoryID]


-- Insert scripts for table: SalesTerritoryHistory
PRINT 'Inserting rows into table: SalesTerritoryHistory'
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (275, 2, '20110531 00:00:00.000', '20121129 00:00:00.000', '8563ce6a-00ff-47d7-ba4d-3c3e1cdef531', '20121122 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (275, 3, '20121130 00:00:00.000', NULL, '2f44304c-ee87-4c72-813e-ca75c5f61f4c', '20121123 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (276, 4, '20110531 00:00:00.000', NULL, '64bcb1b3-a793-40ba-9859-d90f78c3f167', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (277, 3, '20110531 00:00:00.000', '20121129 00:00:00.000', '3e9f893d-5142-46c9-a76a-867d1e3d6f90', '20121122 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (277, 2, '20121130 00:00:00.000', NULL, '132e4721-32dd-4a73-b556-1837f3a2b9ae', '20121123 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (278, 6, '20110531 00:00:00.000', NULL, 'b7c8f9f5-5fb8-47b3-be73-1b9a14bdf8b9', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (279, 5, '20110531 00:00:00.000', NULL, '57d1cdcf-62ce-499f-8be8-1bb71c4bb7ef', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (280, 1, '20110531 00:00:00.000', '20120929 00:00:00.000', 'fd3f5566-10e2-4960-be12-0365e5665881', '20120922 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (281, 4, '20110531 00:00:00.000', NULL, '9d8754b2-c320-40db-a77f-ff5a1bc0f46b', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (282, 6, '20110531 00:00:00.000', '20120529 00:00:00.000', '2c9f5240-d8bf-4f85-897d-6083146dbc4b', '20120522 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (282, 10, '20120530 00:00:00.000', NULL, '92375465-38c6-4c86-aba1-9838a2969475', '20120523 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (283, 1, '20110531 00:00:00.000', NULL, '009f7660-44a6-4adf-bd4b-a5d1b79993f5', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (284, 1, '20120930 00:00:00.000', NULL, 'ed12f921-8023-48ef-84bd-94d942f4c009', '20120923 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (286, 9, '20130530 00:00:00.000', NULL, 'd664d989-2beb-4f2c-a4aa-691018965283', '20130523 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (288, 8, '20130530 00:00:00.000', NULL, '3e1360cb-32e0-4286-8d98-8539f1ab2550', '20130523 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (289, 6, '20120530 00:00:00.000', NULL, '987613ed-33d6-42a6-b992-0b33e9234934', '20120523 00:00:00.000')
INSERT INTO [Sales].[SalesTerritoryHistory] ([BusinessEntityID], [TerritoryID], [StartDate], [EndDate], [rowguid], [ModifiedDate]) VALUES (290, 7, '20120530 00:00:00.000', NULL, '8895e74d-6d38-4140-bbea-a8136a2f480e', '20120523 00:00:00.000')
GO


-- Foreign Key Constraint Enable's for Table: [Sales].[SalesTerritoryHistory]
Print 'Foreign Key Constraint Enable''s for Table: [Sales].[SalesTerritoryHistory]'
ALTER TABLE [Sales].[SalesTerritoryHistory] CHECK CONSTRAINT [FK_SalesTerritoryHistory_SalesPerson_BusinessEntityID]
ALTER TABLE [Sales].[SalesTerritoryHistory] CHECK CONSTRAINT [FK_SalesTerritoryHistory_SalesTerritory_TerritoryID]

-- Check Constraint Enable's for Table: [Sales].[SalesTerritoryHistory]
Print 'Check Constraint Enable''s for Table: [Sales].[SalesTerritoryHistory]'
ALTER TABLE [Sales].[SalesTerritoryHistory] CHECK CONSTRAINT [CK_SalesTerritoryHistory_EndDate]


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
