/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  SalesPerson


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
-- Create Table [Sales].[SalesPerson]
Print 'Create Table [Sales].[SalesPerson]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Sales].[SalesPerson] (
		[BusinessEntityID]     [int] NOT NULL,
		[TerritoryID]          [int] NULL,
		[SalesQuota]           [money] NULL,
		[Bonus]                [money] NOT NULL,
		[CommissionPct]        [smallmoney] NOT NULL,
		[SalesYTD]             [money] NOT NULL,
		[SalesLastYear]        [money] NOT NULL,
		[rowguid]              [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_SalesPerson_BusinessEntityID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [CK_SalesPerson_SalesQuota]
	CHECK
	([SalesQuota]>(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
CHECK CONSTRAINT [CK_SalesPerson_SalesQuota]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [CK_SalesPerson_Bonus]
	CHECK
	([Bonus]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
CHECK CONSTRAINT [CK_SalesPerson_Bonus]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [CK_SalesPerson_CommissionPct]
	CHECK
	([CommissionPct]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
CHECK CONSTRAINT [CK_SalesPerson_CommissionPct]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [CK_SalesPerson_SalesYTD]
	CHECK
	([SalesYTD]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
CHECK CONSTRAINT [CK_SalesPerson_SalesYTD]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [CK_SalesPerson_SalesLastYear]
	CHECK
	([SalesLastYear]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
CHECK CONSTRAINT [CK_SalesPerson_SalesLastYear]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [DF_SalesPerson_Bonus]
	DEFAULT ((0.00)) FOR [Bonus]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [DF_SalesPerson_CommissionPct]
	DEFAULT ((0.00)) FOR [CommissionPct]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [DF_SalesPerson_SalesYTD]
	DEFAULT ((0.00)) FOR [SalesYTD]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [DF_SalesPerson_SalesLastYear]
	DEFAULT ((0.00)) FOR [SalesLastYear]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [DF_SalesPerson_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
	ADD
	CONSTRAINT [DF_SalesPerson_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_SalesPerson_rowguid]
	ON [Sales].[SalesPerson] ([rowguid])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID])
ALTER TABLE [Sales].[SalesPerson]
	CHECK CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[SalesPerson]
	WITH CHECK
	ADD CONSTRAINT [FK_SalesPerson_SalesTerritory_TerritoryID]
	FOREIGN KEY ([TerritoryID]) REFERENCES [Sales].[SalesTerritory] ([TerritoryID])
ALTER TABLE [Sales].[SalesPerson]
	CHECK CONSTRAINT [FK_SalesPerson_SalesTerritory_TerritoryID]

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
