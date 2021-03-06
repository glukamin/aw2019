/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  Document


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
-- Create Table [Production].[Document]
Print 'Create Table [Production].[Document]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Production].[Document] (
		[DocumentNode]        [hierarchyid] NOT NULL,
		[DocumentLevel]       AS ([DocumentNode].[GetLevel]()),
		[Title]               [nvarchar](50) NOT NULL,
		[Owner]               [int] NOT NULL,
		[FolderFlag]          [bit] NOT NULL,
		[FileName]            [nvarchar](400) NOT NULL,
		[FileExtension]       [nvarchar](8) NOT NULL,
		[Revision]            [nchar](5) NOT NULL,
		[ChangeNumber]        [int] NOT NULL,
		[Status]              [tinyint] NOT NULL,
		[DocumentSummary]     [nvarchar](max) NULL,
		[Document]            [varbinary](max) NULL,
		[rowguid]             [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]        [datetime] NOT NULL,
		CONSTRAINT [UQ__Document__F73921F7C5112C2E]
		UNIQUE
		NONCLUSTERED
		([rowguid])
		ON [PRIMARY],
		CONSTRAINT [PK_Document_DocumentNode]
		PRIMARY KEY
		CLUSTERED
		([DocumentNode])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Document]
	ADD
	CONSTRAINT [CK_Document_Status]
	CHECK
	([Status]>=(1) AND [Status]<=(3))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Document]
CHECK CONSTRAINT [CK_Document_Status]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Document]
	ADD
	CONSTRAINT [DF_Document_FolderFlag]
	DEFAULT ((0)) FOR [FolderFlag]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Document]
	ADD
	CONSTRAINT [DF_Document_ChangeNumber]
	DEFAULT ((0)) FOR [ChangeNumber]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Document]
	ADD
	CONSTRAINT [DF_Document_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Document]
	ADD
	CONSTRAINT [DF_Document_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Document_DocumentLevel_DocumentNode]
	ON [Production].[Document] ([DocumentLevel], [DocumentNode])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Document_rowguid]
	ON [Production].[Document] ([rowguid])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_Document_FileName_Revision]
	ON [Production].[Document] ([FileName], [Revision])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Document] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[Document]
	WITH CHECK
	ADD CONSTRAINT [FK_Document_Employee_Owner]
	FOREIGN KEY ([Owner]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID])
ALTER TABLE [Production].[Document]
	CHECK CONSTRAINT [FK_Document_Employee_Owner]

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
-- Create Fulltext Index  on Document
Print 'Create Fulltext Index  on Document'
GO
CREATE FULLTEXT INDEX ON [Production].[Document]
	([DocumentSummary] LANGUAGE 1033, [Document] TYPE COLUMN [FileExtension] LANGUAGE 1033)
	KEY INDEX [PK_Document_DocumentNode]
	ON (FILEGROUP [PRIMARY], [AW2016FullTextCatalog])
	WITH CHANGE_TRACKING AUTO, STOPLIST SYSTEM
GO
