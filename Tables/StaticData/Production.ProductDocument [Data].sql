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

-- Foreign Key Constraint Disable's for Table: [Production].[ProductDocument]
Print 'Foreign Key Constraint Disable''s for Table: [Production].[ProductDocument]'
ALTER TABLE [Production].[ProductDocument] NOCHECK CONSTRAINT [FK_ProductDocument_Product_ProductID]
ALTER TABLE [Production].[ProductDocument] NOCHECK CONSTRAINT [FK_ProductDocument_Document_DocumentNode]


-- Insert scripts for table: ProductDocument
PRINT 'Inserting rows into table: ProductDocument'
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (317, '/2/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (318, '/2/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (319, '/2/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (506, '/3/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (506, '/3/2/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (514, '/3/4/', '20131229 13:51:58.120')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (515, '/3/4/', '20131229 13:51:58.120')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (516, '/3/4/', '20131229 13:51:58.120')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (517, '/3/4/', '20131229 13:51:58.120')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (518, '/3/4/', '20131229 13:51:58.120')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (519, '/3/4/', '20131229 13:51:58.120')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (520, '/3/4/', '20131229 13:51:58.120')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (521, '/3/4/', '20131229 13:51:58.120')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (522, '/3/4/', '20131229 13:51:58.120')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (928, '/2/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (929, '/2/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (930, '/2/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (931, '/2/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (932, '/2/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (933, '/2/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (934, '/2/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (935, '/3/3/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (936, '/3/3/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (937, '/3/3/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (938, '/3/3/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (939, '/3/3/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (940, '/3/3/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (941, '/3/3/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (977, '/1/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (997, '/1/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (998, '/1/1/', '20131229 13:51:58.103')
INSERT INTO [Production].[ProductDocument] ([ProductID], [DocumentNode], [ModifiedDate]) VALUES (999, '/1/1/', '20131229 13:51:58.120')
GO


-- Foreign Key Constraint Enable's for Table: [Production].[ProductDocument]
Print 'Foreign Key Constraint Enable''s for Table: [Production].[ProductDocument]'
ALTER TABLE [Production].[ProductDocument] CHECK CONSTRAINT [FK_ProductDocument_Product_ProductID]
ALTER TABLE [Production].[ProductDocument] CHECK CONSTRAINT [FK_ProductDocument_Document_DocumentNode]


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
