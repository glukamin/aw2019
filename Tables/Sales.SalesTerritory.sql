/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  SalesTerritory


=============================================================*/
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO

-- BEGINNING TRANSACTION STRUCTURE
PRINT 'Beginning transaction STRUCTURE'
BEGIN TRANSACTION _STRUCTURE_
GO
-- Create Table [Sales].[SalesTerritory]
Print 'Create Table [Sales].[SalesTerritory]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Sales].[SalesTerritory] (
		[TerritoryID]           [int] IDENTITY(1, 1) NOT NULL,
		[Name]                  [dbo].[Name] NOT NULL,
		[CountryRegionCode]     [nvarchar](3) NOT NULL,
		[Group]                 [nvarchar](50) NOT NULL,
		[SalesYTD]              [money] NOT NULL,
		[SalesLastYear]         [money] NOT NULL,
		[CostYTD]               [money] NOT NULL,
		[CostLastYear]          [money] NOT NULL,
		[rowguid]               [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]          [datetime] NOT NULL,
		CONSTRAINT [PK_SalesTerritory_TerritoryID]
		PRIMARY KEY
		CLUSTERED
		([TerritoryID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [CK_SalesTerritory_SalesYTD]
	CHECK
	([SalesYTD]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
CHECK CONSTRAINT [CK_SalesTerritory_SalesYTD]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [CK_SalesTerritory_SalesLastYear]
	CHECK
	([SalesLastYear]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
CHECK CONSTRAINT [CK_SalesTerritory_SalesLastYear]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [CK_SalesTerritory_CostYTD]
	CHECK
	([CostYTD]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
CHECK CONSTRAINT [CK_SalesTerritory_CostYTD]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [CK_SalesTerritory_CostLastYear]
	CHECK
	([CostLastYear]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
CHECK CONSTRAINT [CK_SalesTerritory_CostLastYear]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [DF_SalesTerritory_SalesYTD]
	DEFAULT ((0.00)) FOR [SalesYTD]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [DF_SalesTerritory_SalesLastYear]
	DEFAULT ((0.00)) FOR [SalesLastYear]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [DF_SalesTerritory_CostYTD]
	DEFAULT ((0.00)) FOR [CostYTD]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [DF_SalesTerritory_CostLastYear]
	DEFAULT ((0.00)) FOR [CostLastYear]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [DF_SalesTerritory_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
	ADD
	CONSTRAINT [DF_SalesTerritory_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_SalesTerritory_Name]
	ON [Sales].[SalesTerritory] ([Name])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_SalesTerritory_rowguid]
	ON [Sales].[SalesTerritory] ([rowguid])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesTerritory]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesTerritory_CountryRegion_CountryRegionCode]
	FOREIGN KEY ([CountryRegionCode]) REFERENCES [Person].[CountryRegion] ([CountryRegionCode])
ALTER TABLE [Sales].[SalesTerritory]
	CHECK CONSTRAINT [FK_SalesTerritory_CountryRegion_CountryRegionCode]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- COMMITTING TRANSACTION STRUCTURE
PRINT 'Committing transaction STRUCTURE'
IF @@TRANCOUNT>0
	COMMIT TRANSACTION _STRUCTURE_
GO

SET NOEXEC OFF
GO
