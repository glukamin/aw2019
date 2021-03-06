-- BEGINNING TRANSACTION DATA
PRINT 'Beginning transaction DATA'
BEGIN TRANSACTION _DATA_
GO
SET NOEXEC OFF
SET ANSI_WARNINGS ON
SET XACT_ABORT ON
SET IMPLICIT_TRANSACTIONS OFF
SET ARITHABORT ON
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
GO

-- Foreign Key Constraint Disable's for Table: [Production].[ProductModelIllustration]
Print 'Foreign Key Constraint Disable''s for Table: [Production].[ProductModelIllustration]'
ALTER TABLE [Production].[ProductModelIllustration] NOCHECK CONSTRAINT [FK_ProductModelIllustration_ProductModel_ProductModelID]
ALTER TABLE [Production].[ProductModelIllustration] NOCHECK CONSTRAINT [FK_ProductModelIllustration_Illustration_IllustrationID]


-- Insert scripts for table: ProductModelIllustration
PRINT 'Inserting rows into table: ProductModelIllustration'
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID], [IllustrationID], [ModifiedDate]) VALUES (7, 3, '20140109 14:41:02.167')
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID], [IllustrationID], [ModifiedDate]) VALUES (10, 3, '20140109 14:41:02.167')
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID], [IllustrationID], [ModifiedDate]) VALUES (47, 4, '20140109 14:41:02.183')
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID], [IllustrationID], [ModifiedDate]) VALUES (47, 5, '20140109 14:41:02.183')
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID], [IllustrationID], [ModifiedDate]) VALUES (48, 4, '20140109 14:41:02.183')
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID], [IllustrationID], [ModifiedDate]) VALUES (48, 5, '20140109 14:41:02.183')
INSERT INTO [Production].[ProductModelIllustration] ([ProductModelID], [IllustrationID], [ModifiedDate]) VALUES (67, 6, '20140109 14:41:02.200')
GO


-- Foreign Key Constraint Enable's for Table: [Production].[ProductModelIllustration]
Print 'Foreign Key Constraint Enable''s for Table: [Production].[ProductModelIllustration]'
ALTER TABLE [Production].[ProductModelIllustration] CHECK CONSTRAINT [FK_ProductModelIllustration_ProductModel_ProductModelID]
ALTER TABLE [Production].[ProductModelIllustration] CHECK CONSTRAINT [FK_ProductModelIllustration_Illustration_IllustrationID]


-- COMMITTING TRANSACTION DATA
PRINT 'Committing transaction DATA'
IF @@TRANCOUNT>0
	COMMIT TRANSACTION _DATA_
GO

SET NOEXEC OFF
GO

SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO
