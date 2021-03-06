/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  TransactionHistoryArchive


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
-- Create Table [Production].[TransactionHistoryArchive]
Print 'Create Table [Production].[TransactionHistoryArchive]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Production].[TransactionHistoryArchive] (
		[TransactionID]            [int] NOT NULL,
		[ProductID]                [int] NOT NULL,
		[ReferenceOrderID]         [int] NOT NULL,
		[ReferenceOrderLineID]     [int] NOT NULL,
		[TransactionDate]          [datetime] NOT NULL,
		[TransactionType]          [nchar](1) NOT NULL,
		[Quantity]                 [int] NOT NULL,
		[ActualCost]               [money] NOT NULL,
		[ModifiedDate]             [datetime] NOT NULL,
		CONSTRAINT [PK_TransactionHistoryArchive_TransactionID]
		PRIMARY KEY
		CLUSTERED
		([TransactionID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[TransactionHistoryArchive]
	ADD
	CONSTRAINT [CK_TransactionHistoryArchive_TransactionType]
	CHECK
	(upper([TransactionType])='P' OR upper([TransactionType])='S' OR upper([TransactionType])='W')
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[TransactionHistoryArchive]
CHECK CONSTRAINT [CK_TransactionHistoryArchive_TransactionType]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[TransactionHistoryArchive]
	ADD
	CONSTRAINT [DF_TransactionHistoryArchive_ReferenceOrderLineID]
	DEFAULT ((0)) FOR [ReferenceOrderLineID]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[TransactionHistoryArchive]
	ADD
	CONSTRAINT [DF_TransactionHistoryArchive_TransactionDate]
	DEFAULT (getdate()) FOR [TransactionDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[TransactionHistoryArchive]
	ADD
	CONSTRAINT [DF_TransactionHistoryArchive_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_TransactionHistoryArchive_ProductID]
	ON [Production].[TransactionHistoryArchive] ([ProductID])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_TransactionHistoryArchive_ReferenceOrderID_ReferenceOrderLineID]
	ON [Production].[TransactionHistoryArchive] ([ReferenceOrderID], [ReferenceOrderLineID])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[TransactionHistoryArchive] SET (LOCK_ESCALATION = TABLE)
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
