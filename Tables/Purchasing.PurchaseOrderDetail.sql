/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  PurchaseOrderDetail


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
-- Create Table [Purchasing].[PurchaseOrderDetail]
Print 'Create Table [Purchasing].[PurchaseOrderDetail]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Purchasing].[PurchaseOrderDetail] (
		[PurchaseOrderID]           [int] NOT NULL,
		[PurchaseOrderDetailID]     [int] IDENTITY(1, 1) NOT NULL,
		[DueDate]                   [datetime] NOT NULL,
		[OrderQty]                  [smallint] NOT NULL,
		[ProductID]                 [int] NOT NULL,
		[UnitPrice]                 [money] NOT NULL,
		[LineTotal]                 AS (isnull([OrderQty]*[UnitPrice],(0.00))),
		[ReceivedQty]               [decimal](8, 2) NOT NULL,
		[RejectedQty]               [decimal](8, 2) NOT NULL,
		[StockedQty]                AS (isnull([ReceivedQty]-[RejectedQty],(0.00))),
		[ModifiedDate]              [datetime] NOT NULL,
		CONSTRAINT [PK_PurchaseOrderDetail_PurchaseOrderID_PurchaseOrderDetailID]
		PRIMARY KEY
		CLUSTERED
		([PurchaseOrderID], [PurchaseOrderDetailID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	ADD
	CONSTRAINT [CK_PurchaseOrderDetail_OrderQty]
	CHECK
	([OrderQty]>(0))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
CHECK CONSTRAINT [CK_PurchaseOrderDetail_OrderQty]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	ADD
	CONSTRAINT [CK_PurchaseOrderDetail_UnitPrice]
	CHECK
	([UnitPrice]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
CHECK CONSTRAINT [CK_PurchaseOrderDetail_UnitPrice]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	ADD
	CONSTRAINT [CK_PurchaseOrderDetail_ReceivedQty]
	CHECK
	([ReceivedQty]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
CHECK CONSTRAINT [CK_PurchaseOrderDetail_ReceivedQty]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	ADD
	CONSTRAINT [CK_PurchaseOrderDetail_RejectedQty]
	CHECK
	([RejectedQty]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
CHECK CONSTRAINT [CK_PurchaseOrderDetail_RejectedQty]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	ADD
	CONSTRAINT [DF_PurchaseOrderDetail_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_PurchaseOrderDetail_ProductID]
	ON [Purchasing].[PurchaseOrderDetail] ([ProductID])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	WITH CHECK
	ADD CONSTRAINT [FK_PurchaseOrderDetail_Product_ProductID]
	FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	CHECK CONSTRAINT [FK_PurchaseOrderDetail_Product_ProductID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	WITH CHECK
	ADD CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrderHeader_PurchaseOrderID]
	FOREIGN KEY ([PurchaseOrderID]) REFERENCES [Purchasing].[PurchaseOrderHeader] ([PurchaseOrderID])
ALTER TABLE [Purchasing].[PurchaseOrderDetail]
	CHECK CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrderHeader_PurchaseOrderID]

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
