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

-- Check Constraint Disable's for Table: [Sales].[SpecialOffer]
Print 'Check Constraint Disable''s for Table: [Sales].[SpecialOffer]'
ALTER TABLE [Sales].[SpecialOffer] NOCHECK CONSTRAINT [CK_SpecialOffer_EndDate]
ALTER TABLE [Sales].[SpecialOffer] NOCHECK CONSTRAINT [CK_SpecialOffer_DiscountPct]
ALTER TABLE [Sales].[SpecialOffer] NOCHECK CONSTRAINT [CK_SpecialOffer_MinQty]
ALTER TABLE [Sales].[SpecialOffer] NOCHECK CONSTRAINT [CK_SpecialOffer_MaxQty]


-- Insert scripts for table: SpecialOffer
PRINT 'Inserting rows into table: SpecialOffer'
SET IDENTITY_INSERT [Sales].[SpecialOffer] ON

INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (1, N'No Discount', 0.0000, N'No Discount', N'No Discount', '20110501 00:00:00.000', '20141130 00:00:00.000', 0, NULL, '0290c4f5-191f-4337-ab6b-0a2dde03cbf9', '20110401 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (2, N'Volume Discount 11 to 14', 0.0200, N'Volume Discount', N'Reseller', '20110531 00:00:00.000', '20140530 00:00:00.000', 11, 14, 'd7542ee7-15db-4541-985c-5cc27aef26d6', '20110501 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (3, N'Volume Discount 15 to 24', 0.0500, N'Volume Discount', N'Reseller', '20110531 00:00:00.000', '20140530 00:00:00.000', 15, 24, '4bdbcc01-8cf7-40a9-b643-40ec5b717491', '20110501 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (4, N'Volume Discount 25 to 40', 0.1000, N'Volume Discount', N'Reseller', '20110531 00:00:00.000', '20140530 00:00:00.000', 25, 40, '504b5e85-8f3f-4ebc-9e1d-c1bc5dea9aa8', '20110501 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (5, N'Volume Discount 41 to 60', 0.1500, N'Volume Discount', N'Reseller', '20110531 00:00:00.000', '20140530 00:00:00.000', 41, 60, '677e1d9d-944f-4e81-90e8-47eb0a82d48c', '20110501 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (6, N'Volume Discount over 60', 0.2000, N'Volume Discount', N'Reseller', '20110531 00:00:00.000', '20140530 00:00:00.000', 61, NULL, '8157f569-4e8d-46b6-9347-5d0f726a9439', '20110501 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (7, N'Mountain-100 Clearance Sale', 0.3500, N'Discontinued Product', N'Reseller', '20120413 00:00:00.000', '20120529 00:00:00.000', 0, NULL, '7df15bf5-6c05-47e7-80a4-22bd1ce59a72', '20120314 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (8, N'Sport Helmet Discount-2002', 0.1000, N'Seasonal Discount', N'Reseller', '20120530 00:00:00.000', '20120629 00:00:00.000', 0, NULL, '20c5d2cc-a38f-48f8-ac9a-8f15943e52ae', '20120430 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (9, N'Road-650 Overstock', 0.3000, N'Excess Inventory', N'Reseller', '20120530 00:00:00.000', '20120730 00:00:00.000', 0, NULL, '0cf8472b-f9e6-4945-9e09-549d7dde2198', '20120430 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (10, N'Mountain Tire Sale', 0.5000, N'Excess Inventory', N'Customer', '20130514 00:00:00.000', '20130729 00:00:00.000', 0, NULL, '220444ad-2ef3-4e4c-87e9-3aa6ee39a877', '20130414 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (11, N'Sport Helmet Discount-2003', 0.1500, N'Seasonal Discount', N'Reseller', '20130530 00:00:00.000', '20130629 00:00:00.000', 0, NULL, 'e72dab1d-f44d-448b-9fe2-f259a2f0210d', '20130430 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (12, N'LL Road Frame Sale', 0.3500, N'Excess Inventory', N'Reseller', '20130530 00:00:00.000', '20130714 00:00:00.000', 0, NULL, 'c0af1c89-9722-4235-9248-3fba4d9e5841', '20130430 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (13, N'Touring-3000 Promotion', 0.1500, N'New Product', N'Reseller', '20130530 00:00:00.000', '20130829 00:00:00.000', 0, NULL, '5061cce4-e021-45a8-9a75-dfb36cbbce85', '20130430 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (14, N'Touring-1000 Promotion', 0.2000, N'New Product', N'Reseller', '20130530 00:00:00.000', '20130829 00:00:00.000', 0, NULL, '1af84a9e-a98c-4bd9-b48f-dc2b8b6b010b', '20130430 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (15, N'Half-Price Pedal Sale', 0.5000, N'Seasonal Discount', N'Customer', '20130714 00:00:00.000', '20130814 00:00:00.000', 0, NULL, '03e3594d-6ebb-46a6-b8ee-a9289c0c2e47', '20130614 00:00:00.000')
INSERT INTO [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (16, N'Mountain-500 Silver Clearance Sale', 0.4000, N'Discontinued Product', N'Reseller', '20140331 00:00:00.000', '20140530 00:00:00.000', 0, NULL, 'eb7cb484-bccf-4d2d-bf73-521b20014174', '20140301 00:00:00.000')
GO

SET IDENTITY_INSERT [Sales].[SpecialOffer] OFF


-- Check Constraint Enable's for Table: [Sales].[SpecialOffer]
Print 'Check Constraint Enable''s for Table: [Sales].[SpecialOffer]'
ALTER TABLE [Sales].[SpecialOffer] CHECK CONSTRAINT [CK_SpecialOffer_EndDate]
ALTER TABLE [Sales].[SpecialOffer] CHECK CONSTRAINT [CK_SpecialOffer_DiscountPct]
ALTER TABLE [Sales].[SpecialOffer] CHECK CONSTRAINT [CK_SpecialOffer_MinQty]
ALTER TABLE [Sales].[SpecialOffer] CHECK CONSTRAINT [CK_SpecialOffer_MaxQty]


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
