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


-- Insert scripts for table: Department
PRINT 'Inserting rows into table: Department'
SET IDENTITY_INSERT [HumanResources].[Department] ON

INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (1, N'Engineering', N'Research and Development', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (2, N'Tool Design', N'Research and Development', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (3, N'Sales', N'Sales and Marketing', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (4, N'Marketing', N'Sales and Marketing', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (5, N'Purchasing', N'Inventory Management', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (6, N'Research and Development', N'Research and Development', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (7, N'Production', N'Manufacturing', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (8, N'Production Control', N'Manufacturing', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (9, N'Human Resources', N'Executive General and Administration', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (10, N'Finance', N'Executive General and Administration', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (11, N'Information Services', N'Executive General and Administration', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (12, N'Document Control', N'Quality Assurance', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (13, N'Quality Assurance', N'Quality Assurance', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (14, N'Facilities and Maintenance', N'Executive General and Administration', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (15, N'Shipping and Receiving', N'Inventory Management', '20080430 00:00:00.000')
INSERT INTO [HumanResources].[Department] ([DepartmentID], [Name], [GroupName], [ModifiedDate]) VALUES (16, N'Executive', N'Executive General and Administration', '20080430 00:00:00.000')
GO

SET IDENTITY_INSERT [HumanResources].[Department] OFF



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
