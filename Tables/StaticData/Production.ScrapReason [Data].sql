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


-- Insert scripts for table: ScrapReason
PRINT 'Inserting rows into table: ScrapReason'
SET IDENTITY_INSERT [Production].[ScrapReason] ON

INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (1, N'Brake assembly not as ordered', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (2, N'Color incorrect', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (3, N'Gouge in metal', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (4, N'Drill pattern incorrect', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (5, N'Drill size too large', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (6, N'Drill size too small', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (7, N'Handling damage', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (8, N'Paint process failed', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (9, N'Primer process failed', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (10, N'Seat assembly not as ordered', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (11, N'Stress test failed', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (12, N'Thermoform temperature too high', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (13, N'Thermoform temperature too low', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (14, N'Trim length too long', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (15, N'Trim length too short', '20080430 00:00:00.000')
INSERT INTO [Production].[ScrapReason] ([ScrapReasonID], [Name], [ModifiedDate]) VALUES (16, N'Wheel misaligned', '20080430 00:00:00.000')
GO

SET IDENTITY_INSERT [Production].[ScrapReason] OFF



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
