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

-- Check Constraint Disable's for Table: [Purchasing].[ShipMethod]
Print 'Check Constraint Disable''s for Table: [Purchasing].[ShipMethod]'
ALTER TABLE [Purchasing].[ShipMethod] NOCHECK CONSTRAINT [CK_ShipMethod_ShipBase]
ALTER TABLE [Purchasing].[ShipMethod] NOCHECK CONSTRAINT [CK_ShipMethod_ShipRate]


-- Insert scripts for table: ShipMethod
PRINT 'Inserting rows into table: ShipMethod'
SET IDENTITY_INSERT [Purchasing].[ShipMethod] ON

INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID], [Name], [ShipBase], [ShipRate], [rowguid], [ModifiedDate]) VALUES (1, N'XRQ - TRUCK GROUND', 3.9500, 0.9900, '6be756d9-d7be-4463-8f2c-ae60c710d606', '20080430 00:00:00.000')
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID], [Name], [ShipBase], [ShipRate], [rowguid], [ModifiedDate]) VALUES (2, N'ZY - EXPRESS', 9.9500, 1.9900, '3455079b-f773-4dc6-8f1e-2a58649c4ab8', '20080430 00:00:00.000')
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID], [Name], [ShipBase], [ShipRate], [rowguid], [ModifiedDate]) VALUES (3, N'OVERSEAS - DELUXE', 29.9500, 2.9900, '22f4e461-28cf-4ace-a980-f686cf112ec8', '20080430 00:00:00.000')
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID], [Name], [ShipBase], [ShipRate], [rowguid], [ModifiedDate]) VALUES (4, N'OVERNIGHT J-FAST', 21.9500, 1.2900, '107e8356-e7a8-463d-b60c-079fff467f3f', '20080430 00:00:00.000')
INSERT INTO [Purchasing].[ShipMethod] ([ShipMethodID], [Name], [ShipBase], [ShipRate], [rowguid], [ModifiedDate]) VALUES (5, N'CARGO TRANSPORT 5', 8.9900, 1.4900, 'b166019a-b134-4e76-b957-2b0490c610ed', '20080430 00:00:00.000')
GO

SET IDENTITY_INSERT [Purchasing].[ShipMethod] OFF


-- Check Constraint Enable's for Table: [Purchasing].[ShipMethod]
Print 'Check Constraint Enable''s for Table: [Purchasing].[ShipMethod]'
ALTER TABLE [Purchasing].[ShipMethod] CHECK CONSTRAINT [CK_ShipMethod_ShipBase]
ALTER TABLE [Purchasing].[ShipMethod] CHECK CONSTRAINT [CK_ShipMethod_ShipRate]


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
