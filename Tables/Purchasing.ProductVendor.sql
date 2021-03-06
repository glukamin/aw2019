/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  ProductVendor


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
-- Create Table [Purchasing].[ProductVendor]
Print 'Create Table [Purchasing].[ProductVendor]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Purchasing].[ProductVendor] (
		[ProductID]            [int] NOT NULL,
		[BusinessEntityID]     [int] NOT NULL,
		[AverageLeadTime]      [int] NOT NULL,
		[StandardPrice]        [money] NOT NULL,
		[LastReceiptCost]      [money] NULL,
		[LastReceiptDate]      [datetime] NULL,
		[MinOrderQty]          [int] NOT NULL,
		[MaxOrderQty]          [int] NOT NULL,
		[OnOrderQty]           [int] NULL,
		[UnitMeasureCode]      [nchar](3) NOT NULL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_ProductVendor_ProductID_BusinessEntityID]
		PRIMARY KEY
		CLUSTERED
		([ProductID], [BusinessEntityID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
	ADD
	CONSTRAINT [CK_ProductVendor_AverageLeadTime]
	CHECK
	([AverageLeadTime]>=(1))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
CHECK CONSTRAINT [CK_ProductVendor_AverageLeadTime]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
	ADD
	CONSTRAINT [CK_ProductVendor_StandardPrice]
	CHECK
	([StandardPrice]>(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
CHECK CONSTRAINT [CK_ProductVendor_StandardPrice]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
	ADD
	CONSTRAINT [CK_ProductVendor_LastReceiptCost]
	CHECK
	([LastReceiptCost]>(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
CHECK CONSTRAINT [CK_ProductVendor_LastReceiptCost]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
	ADD
	CONSTRAINT [CK_ProductVendor_MinOrderQty]
	CHECK
	([MinOrderQty]>=(1))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
CHECK CONSTRAINT [CK_ProductVendor_MinOrderQty]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
	ADD
	CONSTRAINT [CK_ProductVendor_MaxOrderQty]
	CHECK
	([MaxOrderQty]>=(1))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
CHECK CONSTRAINT [CK_ProductVendor_MaxOrderQty]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
	ADD
	CONSTRAINT [CK_ProductVendor_OnOrderQty]
	CHECK
	([OnOrderQty]>=(0))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
CHECK CONSTRAINT [CK_ProductVendor_OnOrderQty]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
	ADD
	CONSTRAINT [DF_ProductVendor_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_ProductVendor_UnitMeasureCode]
	ON [Purchasing].[ProductVendor] ([UnitMeasureCode])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_ProductVendor_BusinessEntityID]
	ON [Purchasing].[ProductVendor] ([BusinessEntityID])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductVendor_Product_ProductID]
	FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Purchasing].[ProductVendor]
	CHECK CONSTRAINT [FK_ProductVendor_Product_ProductID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductVendor_UnitMeasure_UnitMeasureCode]
	FOREIGN KEY ([UnitMeasureCode]) REFERENCES [Production].[UnitMeasure] ([UnitMeasureCode])
ALTER TABLE [Purchasing].[ProductVendor]
	CHECK CONSTRAINT [FK_ProductVendor_UnitMeasure_UnitMeasureCode]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[ProductVendor]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductVendor_Vendor_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Purchasing].[Vendor] ([BusinessEntityID])
ALTER TABLE [Purchasing].[ProductVendor]
	CHECK CONSTRAINT [FK_ProductVendor_Vendor_BusinessEntityID]

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
