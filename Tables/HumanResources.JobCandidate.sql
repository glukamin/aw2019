/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  JobCandidate


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
-- Create Table [HumanResources].[JobCandidate]
Print 'Create Table [HumanResources].[JobCandidate]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [HumanResources].[JobCandidate] (
		[JobCandidateID]       [int] IDENTITY(1, 1) NOT NULL,
		[BusinessEntityID]     [int] NULL,
		[Resume]               [xml](CONTENT [HumanResources].[HRResumeSchemaCollection]) NULL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_JobCandidate_JobCandidateID]
		PRIMARY KEY
		CLUSTERED
		([JobCandidateID])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [HumanResources].[JobCandidate]
	ADD
	CONSTRAINT [DF_JobCandidate_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_JobCandidate_BusinessEntityID]
	ON [HumanResources].[JobCandidate] ([BusinessEntityID])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [HumanResources].[JobCandidate] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [HumanResources].[JobCandidate]
	WITH CHECK
	ADD CONSTRAINT [FK_JobCandidate_Employee_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID])
ALTER TABLE [HumanResources].[JobCandidate]
	CHECK CONSTRAINT [FK_JobCandidate_Employee_BusinessEntityID]

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
-- Create Fulltext Index  on JobCandidate
Print 'Create Fulltext Index  on JobCandidate'
GO
CREATE FULLTEXT INDEX ON [HumanResources].[JobCandidate]
	([Resume] LANGUAGE 1033)
	KEY INDEX [PK_JobCandidate_JobCandidateID]
	ON (FILEGROUP [PRIMARY], [AW2016FullTextCatalog])
	WITH CHANGE_TRACKING AUTO, STOPLIST SYSTEM
GO
