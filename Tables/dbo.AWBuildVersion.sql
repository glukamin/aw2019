/*=============================================================


Version:   0.00.0011
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  AWBuildVersion


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
-- Create Table [dbo].[AWBuildVersion]
Print 'Create Table [dbo].[AWBuildVersion]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[AWBuildVersion] (
		[SystemInformationID]     [tinyint] IDENTITY(1, 1) NOT NULL,
		[Database Version]        [nvarchar](25) NOT NULL,
		[VersionDate]             [datetime] NOT NULL,
		[ModifiedDate]            [datetime] NOT NULL,
		CONSTRAINT [PK_AWBuildVersion_SystemInformationID]
		PRIMARY KEY
		CLUSTERED
		([SystemInformationID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[AWBuildVersion]
	ADD
	CONSTRAINT [DF_AWBuildVersion_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[AWBuildVersion] SET (LOCK_ESCALATION = TABLE)
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
