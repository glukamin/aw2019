/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  PurchaseOrderHeader


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
-- Create Table [Purchasing].[PurchaseOrderHeader]
Print 'Create Table [Purchasing].[PurchaseOrderHeader]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Purchasing].[PurchaseOrderHeader] (
		[PurchaseOrderID]     [int] IDENTITY(1, 1) NOT NULL,
		[RevisionNumber]      [tinyint] NOT NULL,
		[Status]              [tinyint] NOT NULL,
		[EmployeeID]          [int] NOT NULL,
		[VendorID]            [int] NOT NULL,
		[ShipMethodID]        [int] NOT NULL,
		[OrderDate]           [datetime] NOT NULL,
		[ShipDate]            [datetime] NULL,
		[SubTotal]            [money] NOT NULL,
		[TaxAmt]              [money] NOT NULL,
		[Freight]             [money] NOT NULL,
		[TotalDue]            AS (isnull(([SubTotal]+[TaxAmt])+[Freight],(0))) PERSISTED NOT NULL,
		[ModifiedDate]        [datetime] NOT NULL,
		CONSTRAINT [PK_PurchaseOrderHeader_PurchaseOrderID]
		PRIMARY KEY
		CLUSTERED
		([PurchaseOrderID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [CK_PurchaseOrderHeader_Status]
	CHECK
	([Status]>=(1) AND [Status]<=(4))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
CHECK CONSTRAINT [CK_PurchaseOrderHeader_Status]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [CK_PurchaseOrderHeader_ShipDate]
	CHECK
	([ShipDate]>=[OrderDate] OR [ShipDate] IS NULL)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
CHECK CONSTRAINT [CK_PurchaseOrderHeader_ShipDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [CK_PurchaseOrderHeader_SubTotal]
	CHECK
	([SubTotal]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
CHECK CONSTRAINT [CK_PurchaseOrderHeader_SubTotal]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [CK_PurchaseOrderHeader_TaxAmt]
	CHECK
	([TaxAmt]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
CHECK CONSTRAINT [CK_PurchaseOrderHeader_TaxAmt]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [CK_PurchaseOrderHeader_Freight]
	CHECK
	([Freight]>=(0.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
CHECK CONSTRAINT [CK_PurchaseOrderHeader_Freight]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_RevisionNumber]
	DEFAULT ((0)) FOR [RevisionNumber]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_Status]
	DEFAULT ((1)) FOR [Status]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_OrderDate]
	DEFAULT (getdate()) FOR [OrderDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_SubTotal]
	DEFAULT ((0.00)) FOR [SubTotal]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_TaxAmt]
	DEFAULT ((0.00)) FOR [TaxAmt]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_Freight]
	DEFAULT ((0.00)) FOR [Freight]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	ADD
	CONSTRAINT [DF_PurchaseOrderHeader_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_PurchaseOrderHeader_VendorID]
	ON [Purchasing].[PurchaseOrderHeader] ([VendorID])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_PurchaseOrderHeader_EmployeeID]
	ON [Purchasing].[PurchaseOrderHeader] ([EmployeeID])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	WITH CHECK
	ADD CONSTRAINT [FK_PurchaseOrderHeader_Employee_EmployeeID]
	FOREIGN KEY ([EmployeeID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID])
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	CHECK CONSTRAINT [FK_PurchaseOrderHeader_Employee_EmployeeID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	WITH CHECK
	ADD CONSTRAINT [FK_PurchaseOrderHeader_Vendor_VendorID]
	FOREIGN KEY ([VendorID]) REFERENCES [Purchasing].[Vendor] ([BusinessEntityID])
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	CHECK CONSTRAINT [FK_PurchaseOrderHeader_Vendor_VendorID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	WITH CHECK
	ADD CONSTRAINT [FK_PurchaseOrderHeader_ShipMethod_ShipMethodID]
	FOREIGN KEY ([ShipMethodID]) REFERENCES [Purchasing].[ShipMethod] ([ShipMethodID])
ALTER TABLE [Purchasing].[PurchaseOrderHeader]
	CHECK CONSTRAINT [FK_PurchaseOrderHeader_ShipMethod_ShipMethodID]

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
