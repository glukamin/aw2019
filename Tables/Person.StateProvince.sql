/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  StateProvince


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
-- Create Table [Person].[StateProvince]
Print 'Create Table [Person].[StateProvince]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Person].[StateProvince] (
		[StateProvinceID]             [int] IDENTITY(1, 1) NOT NULL,
		[StateProvinceCode]           [nchar](3) NOT NULL,
		[CountryRegionCode]           [nvarchar](3) NOT NULL,
		[IsOnlyStateProvinceFlag]     [dbo].[Flag] NOT NULL,
		[Name]                        [dbo].[Name] NOT NULL,
		[TerritoryID]                 [int] NOT NULL,
		[rowguid]                     [uniqueidentifier] NOT NULL ROWGUIDCOL,
		[ModifiedDate]                [datetime] NOT NULL,
		CONSTRAINT [PK_StateProvince_StateProvinceID]
		PRIMARY KEY
		CLUSTERED
		([StateProvinceID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Person].[StateProvince]
	ADD
	CONSTRAINT [DF_StateProvince_IsOnlyStateProvinceFlag]
	DEFAULT ((1)) FOR [IsOnlyStateProvinceFlag]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Person].[StateProvince]
	ADD
	CONSTRAINT [DF_StateProvince_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Person].[StateProvince]
	ADD
	CONSTRAINT [DF_StateProvince_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_StateProvince_Name]
	ON [Person].[StateProvince] ([Name])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_StateProvince_StateProvinceCode_CountryRegionCode]
	ON [Person].[StateProvince] ([StateProvinceCode], [CountryRegionCode])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_StateProvince_rowguid]
	ON [Person].[StateProvince] ([rowguid])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Person].[StateProvince] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Person].[StateProvince]
	WITH CHECK
	ADD CONSTRAINT [FK_StateProvince_CountryRegion_CountryRegionCode]
	FOREIGN KEY ([CountryRegionCode]) REFERENCES [Person].[CountryRegion] ([CountryRegionCode])
ALTER TABLE [Person].[StateProvince]
	CHECK CONSTRAINT [FK_StateProvince_CountryRegion_CountryRegionCode]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Person].[StateProvince]
	WITH CHECK
	ADD CONSTRAINT [FK_StateProvince_SalesTerritory_TerritoryID]
	FOREIGN KEY ([TerritoryID]) REFERENCES [Sales].[SalesTerritory] ([TerritoryID])
ALTER TABLE [Person].[StateProvince]
	CHECK CONSTRAINT [FK_StateProvince_SalesTerritory_TerritoryID]

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
