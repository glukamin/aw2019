/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  WorkOrder


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
-- Create Table [Production].[WorkOrder]
Print 'Create Table [Production].[WorkOrder]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Production].[WorkOrder] (
		[WorkOrderID]       [int] IDENTITY(1, 1) NOT NULL,
		[ProductID]         [int] NOT NULL,
		[OrderQty]          [int] NOT NULL,
		[StockedQty]        AS (isnull([OrderQty]-[ScrappedQty],(0))),
		[ScrappedQty]       [smallint] NOT NULL,
		[StartDate]         [datetime] NOT NULL,
		[EndDate]           [datetime] NULL,
		[DueDate]           [datetime] NOT NULL,
		[ScrapReasonID]     [smallint] NULL,
		[ModifiedDate]      [datetime] NOT NULL,
		CONSTRAINT [PK_WorkOrder_WorkOrderID]
		PRIMARY KEY
		CLUSTERED
		([WorkOrderID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[WorkOrder]
	ADD
	CONSTRAINT [CK_WorkOrder_OrderQty]
	CHECK
	([OrderQty]>(0))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[WorkOrder]
CHECK CONSTRAINT [CK_WorkOrder_OrderQty]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[WorkOrder]
	ADD
	CONSTRAINT [CK_WorkOrder_ScrappedQty]
	CHECK
	([ScrappedQty]>=(0))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[WorkOrder]
CHECK CONSTRAINT [CK_WorkOrder_ScrappedQty]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[WorkOrder]
	ADD
	CONSTRAINT [CK_WorkOrder_EndDate]
	CHECK
	([EndDate]>=[StartDate] OR [EndDate] IS NULL)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[WorkOrder]
CHECK CONSTRAINT [CK_WorkOrder_EndDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[WorkOrder]
	ADD
	CONSTRAINT [DF_WorkOrder_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_WorkOrder_ScrapReasonID]
	ON [Production].[WorkOrder] ([ScrapReasonID])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_WorkOrder_ProductID]
	ON [Production].[WorkOrder] ([ProductID])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[WorkOrder] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[WorkOrder]
	WITH CHECK
	ADD CONSTRAINT [FK_WorkOrder_Product_ProductID]
	FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Production].[WorkOrder]
	CHECK CONSTRAINT [FK_WorkOrder_Product_ProductID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[WorkOrder]
	WITH CHECK
	ADD CONSTRAINT [FK_WorkOrder_ScrapReason_ScrapReasonID]
	FOREIGN KEY ([ScrapReasonID]) REFERENCES [Production].[ScrapReason] ([ScrapReasonID])
ALTER TABLE [Production].[WorkOrder]
	CHECK CONSTRAINT [FK_WorkOrder_ScrapReason_ScrapReasonID]

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
