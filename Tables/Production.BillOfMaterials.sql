/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Tables:  BillOfMaterials


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
-- Create Table [Production].[BillOfMaterials]
Print 'Create Table [Production].[BillOfMaterials]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [Production].[BillOfMaterials] (
		[BillOfMaterialsID]     [int] IDENTITY(1, 1) NOT NULL,
		[ProductAssemblyID]     [int] NULL,
		[ComponentID]           [int] NOT NULL,
		[StartDate]             [datetime] NOT NULL,
		[EndDate]               [datetime] NULL,
		[UnitMeasureCode]       [nchar](3) NOT NULL,
		[BOMLevel]              [smallint] NOT NULL,
		[PerAssemblyQty]        [decimal](8, 2) NOT NULL,
		[ModifiedDate]          [datetime] NOT NULL,
		CONSTRAINT [PK_BillOfMaterials_BillOfMaterialsID]
		PRIMARY KEY
		NONCLUSTERED
		([BillOfMaterialsID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [CK_BillOfMaterials_EndDate]
	CHECK
	([EndDate]>[StartDate] OR [EndDate] IS NULL)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
CHECK CONSTRAINT [CK_BillOfMaterials_EndDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [CK_BillOfMaterials_ProductAssemblyID]
	CHECK
	([ProductAssemblyID]<>[ComponentID])
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
CHECK CONSTRAINT [CK_BillOfMaterials_ProductAssemblyID]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [CK_BillOfMaterials_BOMLevel]
	CHECK
	([ProductAssemblyID] IS NULL AND [BOMLevel]=(0) AND [PerAssemblyQty]=(1.00) OR [ProductAssemblyID] IS NOT NULL AND [BOMLevel]>=(1))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
CHECK CONSTRAINT [CK_BillOfMaterials_BOMLevel]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [CK_BillOfMaterials_PerAssemblyQty]
	CHECK
	([PerAssemblyQty]>=(1.00))
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
CHECK CONSTRAINT [CK_BillOfMaterials_PerAssemblyQty]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [DF_BillOfMaterials_StartDate]
	DEFAULT (getdate()) FOR [StartDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [DF_BillOfMaterials_PerAssemblyQty]
	DEFAULT ((1.00)) FOR [PerAssemblyQty]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
	ADD
	CONSTRAINT [DF_BillOfMaterials_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE CLUSTERED INDEX [AK_BillOfMaterials_ProductAssemblyID_ComponentID_StartDate]
	ON [Production].[BillOfMaterials] ([ProductAssemblyID], [ComponentID], [StartDate])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE NONCLUSTERED INDEX [IX_BillOfMaterials_UnitMeasureCode]
	ON [Production].[BillOfMaterials] ([UnitMeasureCode])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
	WITH CHECK
	ADD CONSTRAINT [FK_BillOfMaterials_Product_ProductAssemblyID]
	FOREIGN KEY ([ProductAssemblyID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Production].[BillOfMaterials]
	CHECK CONSTRAINT [FK_BillOfMaterials_Product_ProductAssemblyID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
	WITH CHECK
	ADD CONSTRAINT [FK_BillOfMaterials_Product_ComponentID]
	FOREIGN KEY ([ComponentID]) REFERENCES [Production].[Product] ([ProductID])
ALTER TABLE [Production].[BillOfMaterials]
	CHECK CONSTRAINT [FK_BillOfMaterials_Product_ComponentID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [Production].[BillOfMaterials]
	WITH CHECK
	ADD CONSTRAINT [FK_BillOfMaterials_UnitMeasure_UnitMeasureCode]
	FOREIGN KEY ([UnitMeasureCode]) REFERENCES [Production].[UnitMeasure] ([UnitMeasureCode])
ALTER TABLE [Production].[BillOfMaterials]
	CHECK CONSTRAINT [FK_BillOfMaterials_UnitMeasure_UnitMeasureCode]

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
