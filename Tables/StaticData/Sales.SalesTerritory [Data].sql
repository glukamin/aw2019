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

-- Check Constraint Disable's for Table: [Sales].[SalesTerritory]
Print 'Check Constraint Disable''s for Table: [Sales].[SalesTerritory]'
ALTER TABLE [Sales].[SalesTerritory] NOCHECK CONSTRAINT [CK_SalesTerritory_SalesYTD]
ALTER TABLE [Sales].[SalesTerritory] NOCHECK CONSTRAINT [CK_SalesTerritory_SalesLastYear]
ALTER TABLE [Sales].[SalesTerritory] NOCHECK CONSTRAINT [CK_SalesTerritory_CostYTD]
ALTER TABLE [Sales].[SalesTerritory] NOCHECK CONSTRAINT [CK_SalesTerritory_CostLastYear]

-- Foreign Key Constraint Disable's for Table: [Sales].[SalesTerritory]
Print 'Foreign Key Constraint Disable''s for Table: [Sales].[SalesTerritory]'
ALTER TABLE [Sales].[SalesTerritory] NOCHECK CONSTRAINT [FK_SalesTerritory_CountryRegion_CountryRegionCode]


-- Insert scripts for table: SalesTerritory
PRINT 'Inserting rows into table: SalesTerritory'
SET IDENTITY_INSERT [Sales].[SalesTerritory] ON

INSERT INTO [Sales].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES (1, N'Northwest', N'US', N'North America', 7887186.7882, 3298694.4938, 0.0000, 0.0000, '43689a10-e30b-497f-b0de-11de20267ff7', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES (2, N'Northeast', N'US', N'North America', 2402176.8476, 3607148.9371, 0.0000, 0.0000, '00fb7309-96cc-49e2-8363-0a1ba72486f2', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES (3, N'Central', N'US', N'North America', 3072175.1180, 3205014.0767, 0.0000, 0.0000, 'df6e7fd8-1a8d-468c-b103-ed8addb452c1', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES (4, N'Southwest', N'US', N'North America', 10510853.8739, 5366575.7098, 0.0000, 0.0000, 'dc3e9ea0-7950-4431-9428-99dbcbc33865', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES (5, N'Southeast', N'US', N'North America', 2538667.2515, 3925071.4318, 0.0000, 0.0000, '6dc4165a-5e4c-42d2-809d-4344e0ac75e7', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES (6, N'Canada', N'CA', N'North America', 6771829.1376, 5693988.8600, 0.0000, 0.0000, '06b4af8a-1639-476e-9266-110461d66b00', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES (7, N'France', N'FR', N'Europe', 4772398.3078, 2396539.7601, 0.0000, 0.0000, 'bf806804-9b4c-4b07-9d19-706f2e689552', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES (8, N'Germany', N'DE', N'Europe', 3805202.3478, 1307949.7917, 0.0000, 0.0000, '6d2450db-8159-414f-a917-e73ee91c38a9', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES (9, N'Australia', N'AU', N'Pacific', 5977814.9154, 2278548.9776, 0.0000, 0.0000, '602e612e-dfe9-41d9-b894-27e489747885', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTerritory] ([TerritoryID], [Name], [CountryRegionCode], [Group], [SalesYTD], [SalesLastYear], [CostYTD], [CostLastYear], [rowguid], [ModifiedDate]) VALUES (10, N'United Kingdom', N'GB', N'Europe', 5012905.3656, 1635823.3967, 0.0000, 0.0000, '05fc7e1f-2dea-414e-9ecd-09d150516fb5', '20080430 00:00:00.000')
GO

SET IDENTITY_INSERT [Sales].[SalesTerritory] OFF


-- Foreign Key Constraint Enable's for Table: [Sales].[SalesTerritory]
Print 'Foreign Key Constraint Enable''s for Table: [Sales].[SalesTerritory]'
ALTER TABLE [Sales].[SalesTerritory] CHECK CONSTRAINT [FK_SalesTerritory_CountryRegion_CountryRegionCode]

-- Check Constraint Enable's for Table: [Sales].[SalesTerritory]
Print 'Check Constraint Enable''s for Table: [Sales].[SalesTerritory]'
ALTER TABLE [Sales].[SalesTerritory] CHECK CONSTRAINT [CK_SalesTerritory_SalesYTD]
ALTER TABLE [Sales].[SalesTerritory] CHECK CONSTRAINT [CK_SalesTerritory_SalesLastYear]
ALTER TABLE [Sales].[SalesTerritory] CHECK CONSTRAINT [CK_SalesTerritory_CostYTD]
ALTER TABLE [Sales].[SalesTerritory] CHECK CONSTRAINT [CK_SalesTerritory_CostLastYear]


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
