/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  BusinessEntityAddress


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
-- Create Table [Person].[BusinessEntityAddress]
Print 'Create Table [Person].[BusinessEntityAddress]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Person].[BusinessEntityAddress] (
		[BusinessEntityID]     [int] NOT NULL,
		[AddressID]            [int] NOT NULL,
		[AddressTypeID]        [int] NOT NULL,
		[rowguid]              [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_BusinessEntityAddress_BusinessEntityID_AddressID_AddressTypeID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID], [AddressID], [AddressTypeID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Person].[BusinessEntityAddress]
	ADD
	CONSTRAINT [DF_BusinessEntityAddress_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Person].[BusinessEntityAddress]
	ADD
	CONSTRAINT [DF_BusinessEntityAddress_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_BusinessEntityAddress_rowguid]
	ON [Person].[BusinessEntityAddress] ([rowguid])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_BusinessEntityAddress_AddressID]
	ON [Person].[BusinessEntityAddress] ([AddressID])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_BusinessEntityAddress_AddressTypeID]
	ON [Person].[BusinessEntityAddress] ([AddressTypeID])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Person].[BusinessEntityAddress] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Person].[BusinessEntityAddress]
	WITH CHECK
	ADD CONSTRAINT [FK_BusinessEntityAddress_Address_AddressID]
	FOREIGN KEY ([AddressID]) REFERENCES [Person].[Address] ([AddressID])
ALTER TABLE [Person].[BusinessEntityAddress]
	CHECK CONSTRAINT [FK_BusinessEntityAddress_Address_AddressID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Person].[BusinessEntityAddress]
	WITH CHECK
	ADD CONSTRAINT [FK_BusinessEntityAddress_AddressType_AddressTypeID]
	FOREIGN KEY ([AddressTypeID]) REFERENCES [Person].[AddressType] ([AddressTypeID])
ALTER TABLE [Person].[BusinessEntityAddress]
	CHECK CONSTRAINT [FK_BusinessEntityAddress_AddressType_AddressTypeID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Person].[BusinessEntityAddress]
	WITH CHECK
	ADD CONSTRAINT [FK_BusinessEntityAddress_BusinessEntity_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[BusinessEntity] ([BusinessEntityID])
ALTER TABLE [Person].[BusinessEntityAddress]
	CHECK CONSTRAINT [FK_BusinessEntityAddress_BusinessEntity_BusinessEntityID]

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
