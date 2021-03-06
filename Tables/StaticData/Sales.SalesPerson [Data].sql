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

-- Check Constraint Disable's for Table: [Sales].[SalesPerson]
Print 'Check Constraint Disable''s for Table: [Sales].[SalesPerson]'
ALTER TABLE [Sales].[SalesPerson] NOCHECK CONSTRAINT [CK_SalesPerson_SalesQuota]
ALTER TABLE [Sales].[SalesPerson] NOCHECK CONSTRAINT [CK_SalesPerson_Bonus]
ALTER TABLE [Sales].[SalesPerson] NOCHECK CONSTRAINT [CK_SalesPerson_CommissionPct]
ALTER TABLE [Sales].[SalesPerson] NOCHECK CONSTRAINT [CK_SalesPerson_SalesYTD]
ALTER TABLE [Sales].[SalesPerson] NOCHECK CONSTRAINT [CK_SalesPerson_SalesLastYear]

-- Foreign Key Constraint Disable's for Table: [Sales].[SalesPerson]
Print 'Foreign Key Constraint Disable''s for Table: [Sales].[SalesPerson]'
ALTER TABLE [Sales].[SalesPerson] NOCHECK CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID]
ALTER TABLE [Sales].[SalesPerson] NOCHECK CONSTRAINT [FK_SalesPerson_SalesTerritory_TerritoryID]


-- Insert scripts for table: SalesPerson
PRINT 'Inserting rows into table: SalesPerson'
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (274, NULL, NULL, 0.0000, 0.0000, 559697.5639, 0.0000, '48754992-9ee0-4c0e-8c94-9451604e3e02', '20101228 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (275, 2, 300000.0000, 4100.0000, 0.0120, 3763178.1787, 1750406.4785, '1e0a7274-3064-4f58-88ee-4c6586c87169', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (276, 4, 250000.0000, 2000.0000, 0.0150, 4251368.5497, 1439156.0291, '4dd9eee4-8e81-4f8c-af97-683394c1f7c0', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (277, 3, 250000.0000, 2500.0000, 0.0150, 3189418.3662, 1997186.2037, '39012928-bfec-4242-874d-423162c3f567', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (278, 6, 250000.0000, 500.0000, 0.0100, 1453719.4653, 1620276.8966, '7a0ae1ab-b283-40f9-91d1-167abf06d720', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (279, 5, 300000.0000, 6700.0000, 0.0100, 2315185.6110, 1849640.9418, '52a5179d-3239-4157-ae29-17e868296dc0', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (280, 1, 250000.0000, 5000.0000, 0.0100, 1352577.1325, 1927059.1780, 'be941a4a-fb50-4947-bda4-bb8972365b08', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (281, 4, 250000.0000, 3550.0000, 0.0100, 2458535.6169, 2073505.9999, '35326ddb-7278-4fef-b3ba-ea137b69094e', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (282, 6, 250000.0000, 5000.0000, 0.0150, 2604540.7172, 2038234.6549, '31fd7fc1-dc84-4f05-b9a0-762519eacacc', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (283, 1, 250000.0000, 3500.0000, 0.0120, 1573012.9383, 1371635.3158, '6bac15b2-8ffb-45a9-b6d5-040e16c2073f', '20110524 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (284, 1, 300000.0000, 3900.0000, 0.0190, 1576562.1966, 0.0000, 'ac94ec04-a2dc-43e3-8654-dd0c546abc17', '20120923 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (285, NULL, NULL, 0.0000, 0.0000, 172524.4512, 0.0000, 'cfdbef27-b1f7-4a56-a878-0221c73bae67', '20130307 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (286, 9, 250000.0000, 5650.0000, 0.0180, 1421810.9242, 2278548.9776, '9b968777-75dc-45bd-a8df-9cdaa72839e1', '20130523 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (287, NULL, NULL, 0.0000, 0.0000, 519905.9320, 0.0000, '1dd1f689-df74-4149-8600-59555eef154b', '20120409 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (288, 8, 250000.0000, 75.0000, 0.0180, 1827066.7118, 1307949.7917, '224bb25a-62e3-493e-acaf-4f8f5c72396a', '20130523 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (289, 10, 250000.0000, 5150.0000, 0.0200, 4116871.2277, 1635823.3967, '25f6838d-9db4-4833-9ddc-7a24283af1ba', '20120523 00:00:00.000')
INSERT INTO [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (290, 7, 250000.0000, 985.0000, 0.0160, 3121616.3202, 2396539.7601, 'f509e3d4-76c8-42aa-b353-90b7b8db08de', '20120523 00:00:00.000')
GO


-- Foreign Key Constraint Enable's for Table: [Sales].[SalesPerson]
Print 'Foreign Key Constraint Enable''s for Table: [Sales].[SalesPerson]'
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID]
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [FK_SalesPerson_SalesTerritory_TerritoryID]

-- Check Constraint Enable's for Table: [Sales].[SalesPerson]
Print 'Check Constraint Enable''s for Table: [Sales].[SalesPerson]'
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [CK_SalesPerson_SalesQuota]
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [CK_SalesPerson_Bonus]
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [CK_SalesPerson_CommissionPct]
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [CK_SalesPerson_SalesYTD]
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [CK_SalesPerson_SalesLastYear]


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
