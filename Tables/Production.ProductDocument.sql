/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  ProductDocument


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
-- Create Table [Production].[ProductDocument]
Print 'Create Table [Production].[ProductDocument]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Production].[ProductDocument] (
		[ProductID]        [int] NOT NULL,
		[DocumentNode]     [hierarchyid] NOT NULL,
		[ModifiedDate]     [datetime] NOT NULL,
		CONSTRAINT [PK_ProductDocument_ProductID_DocumentNode]
		PRIMARY KEY
		CLUSTERED
		([ProductID], [DocumentNode])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[ProductDocument]
	ADD
	CONSTRAINT [DF_ProductDocument_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[ProductDocument] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[ProductDocument]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductDocument_Product_ProductID]
	FOREIGN KEY ([ProductID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Production].[ProductDocument]
	CHECK CONSTRAINT [FK_ProductDocument_Product_ProductID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[ProductDocument]
	WITH CHECK
	ADD CONSTRAINT [FK_ProductDocument_Document_DocumentNode]
	FOREIGN KEY ([DocumentNode]) REFERENCES [Production].[Document] ([DocumentNode])
ALTER TABLE [Production].[ProductDocument]
	CHECK CONSTRAINT [FK_ProductDocument_Document_DocumentNode]

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
