/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  PersonCreditCard


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
-- Create Table [Sales].[PersonCreditCard]
Print 'Create Table [Sales].[PersonCreditCard]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Sales].[PersonCreditCard] (
		[BusinessEntityID]     [int] NOT NULL,
		[CreditCardID]         [int] NOT NULL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_PersonCreditCard_BusinessEntityID_CreditCardID]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID], [CreditCardID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[PersonCreditCard]
	ADD
	CONSTRAINT [DF_PersonCreditCard_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[PersonCreditCard] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[PersonCreditCard]
	WITH CHECK
	ADD CONSTRAINT [FK_PersonCreditCard_Person_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[Person] ([BusinessEntityID])
ALTER TABLE [Sales].[PersonCreditCard]
	CHECK CONSTRAINT [FK_PersonCreditCard_Person_BusinessEntityID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Sales].[PersonCreditCard]
	WITH CHECK
	ADD CONSTRAINT [FK_PersonCreditCard_CreditCard_CreditCardID]
	FOREIGN KEY ([CreditCardID]) REFERENCES [Sales].[CreditCard] ([CreditCardID])
ALTER TABLE [Sales].[PersonCreditCard]
	CHECK CONSTRAINT [FK_PersonCreditCard_CreditCard_CreditCardID]

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
