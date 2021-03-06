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


-- Insert scripts for table: AddressType
PRINT 'Inserting rows into table: AddressType'
SET IDENTITY_INSERT [Person].[AddressType] ON

INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate]) VALUES (1, N'Billing', 'b84f78b1-4efe-4a0e-8cb7-70e9f112f886', '20080430 00:00:00.000')
INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate]) VALUES (2, N'Home', '41bc2ff6-f0fc-475f-8eb9-cec0805aa0f2', '20080430 00:00:00.000')
INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate]) VALUES (3, N'Main Office', '8eeec28c-07a2-4fb9-ad0a-42d4a0bbc575', '20080430 00:00:00.000')
INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate]) VALUES (4, N'Primary', '24cb3088-4345-47c4-86c5-17b535133d1e', '20080430 00:00:00.000')
INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate]) VALUES (5, N'Shipping', 'b29da3f8-19a3-47da-9daa-15c84f4a83a5', '20080430 00:00:00.000')
INSERT INTO [Person].[AddressType] ([AddressTypeID], [Name], [rowguid], [ModifiedDate]) VALUES (6, N'Archive', 'a67f238a-5ba2-444b-966c-0467ed9c427f', '20080430 00:00:00.000')
GO

SET IDENTITY_INSERT [Person].[AddressType] OFF



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
