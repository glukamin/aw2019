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

-- Check Constraint Disable's for Table: [Production].[Location]
Print 'Check Constraint Disable''s for Table: [Production].[Location]'
ALTER TABLE [Production].[Location] NOCHECK CONSTRAINT [CK_Location_CostRate]
ALTER TABLE [Production].[Location] NOCHECK CONSTRAINT [CK_Location_Availability]


-- Insert scripts for table: Location
PRINT 'Inserting rows into table: Location'
SET IDENTITY_INSERT [Production].[Location] ON

INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (1, N'Tool Crib', 0.0000, 0.00, '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (2, N'Sheet Metal Racks', 0.0000, 0.00, '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (3, N'Paint Shop', 0.0000, 0.00, '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (4, N'Paint Storage', 0.0000, 0.00, '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (5, N'Metal Storage', 0.0000, 0.00, '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (6, N'Miscellaneous Storage', 0.0000, 0.00, '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (7, N'Finished Goods Storage', 0.0000, 0.00, '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (10, N'Frame Forming', 22.5000, 96.00, '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (20, N'Frame Welding', 25.0000, 108.00, '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (30, N'Debur and Polish', 14.5000, 120.00, '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (40, N'Paint', 15.7500, 120.00, '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (45, N'Specialized Paint', 18.0000, 80.00, '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (50, N'Subassembly', 12.2500, 120.00, '20080430 00:00:00.000')
INSERT INTO [Production].[Location] ([LocationID], [Name], [CostRate], [Availability], [ModifiedDate]) VALUES (60, N'Final Assembly', 12.2500, 120.00, '20080430 00:00:00.000')
GO

SET IDENTITY_INSERT [Production].[Location] OFF


-- Check Constraint Enable's for Table: [Production].[Location]
Print 'Check Constraint Enable''s for Table: [Production].[Location]'
ALTER TABLE [Production].[Location] CHECK CONSTRAINT [CK_Location_CostRate]
ALTER TABLE [Production].[Location] CHECK CONSTRAINT [CK_Location_Availability]


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
