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

-- Check Constraint Disable's for Table: [Sales].[SalesTaxRate]
Print 'Check Constraint Disable''s for Table: [Sales].[SalesTaxRate]'
ALTER TABLE [Sales].[SalesTaxRate] NOCHECK CONSTRAINT [CK_SalesTaxRate_TaxType]

-- Foreign Key Constraint Disable's for Table: [Sales].[SalesTaxRate]
Print 'Foreign Key Constraint Disable''s for Table: [Sales].[SalesTaxRate]'
ALTER TABLE [Sales].[SalesTaxRate] NOCHECK CONSTRAINT [FK_SalesTaxRate_StateProvince_StateProvinceID]


-- Insert scripts for table: SalesTaxRate
PRINT 'Inserting rows into table: SalesTaxRate'
SET IDENTITY_INSERT [Sales].[SalesTaxRate] ON

INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (1, 1, 1, 14.0000, N'Canadian GST + Alberta Provincial Tax', '683de5dd-521a-47d4-a573-06a3cdb1bc5d', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (2, 57, 1, 14.2500, N'Canadian GST + Ontario Provincial Tax', '05c4ffdb-4f84-4cdf-abe5-fdf3216ea74e', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (3, 63, 1, 14.2500, N'Canadian GST + Quebec Provincial Tax', 'd4edb557-56d7-403c-b538-4df5e7302588', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (4, 1, 2, 7.0000, N'Canadian GST', 'f0d76907-b433-453f-b95e-16fce73b807a', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (5, 57, 2, 7.0000, N'Canadian GST', '7e0e97a2-878b-476f-a648-05a3dd4450ed', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (6, 63, 2, 7.0000, N'Canadian GST', '1e285d2c-8af7-47aa-b06a-762cf4d93acd', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (7, 7, 3, 7.0000, N'Canadian GST', '590ccb14-cb20-49bf-8fee-e0c3abc4c2b1', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (8, 29, 3, 7.0000, N'Canadian GST', 'a8365f30-78b7-4dbe-8985-f8260560126b', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (9, 31, 3, 7.0000, N'Canadian GST', 'f4fde24b-7a53-4340-9d10-173e9424864a', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (10, 41, 3, 7.0000, N'Canadian GST', '383d465b-e1d1-492a-83f3-ab3e9cbf3282', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (11, 45, 3, 7.0000, N'Canadian GST', '8451909f-8a8d-4789-9f87-16a335d28053', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (12, 49, 3, 7.0000, N'Canadian GST', 'fb7607ee-8f12-41ea-b461-10885c6f1533', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (13, 51, 3, 7.0000, N'Canadian GST', '06df529d-eb11-446f-9570-9ee97b8ea1bf', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (16, 69, 3, 7.0000, N'Canadian GST', '89d447a8-239a-4f31-a529-478821e8f714', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (17, 83, 3, 7.0000, N'Canadian GST', '3847b431-f939-4e89-83fc-864912e3cfd2', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (18, 6, 1, 7.7500, N'Arizona State Sales Tax', '89dd0e3a-c018-449e-a86b-885adf684c5c', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (19, 9, 1, 8.7500, N'California State Sales Tax', '90e3090e-df71-407a-8059-04c3104523af', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (20, 15, 1, 8.0000, N'Florida State Sales Tax', '630ae36f-6e76-4a1f-ab25-6342159c80d2', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (21, 30, 1, 7.0000, N'Massachusetts State Sales Tax', '207c7024-85fe-42cb-bf74-9fe88e2f4e1b', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (22, 35, 1, 7.2500, N'Michigan State Sales Tax', 'f9d1a85d-6474-43b5-a7ea-bed59e00439a', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (23, 36, 1, 6.7500, N'Minnesota State Sales Tax', '1753d75f-8357-4497-bc92-543f17bbf514', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (24, 72, 1, 7.2500, N'Tennessese State Sales Tax', 'ecba1bab-a7a6-4cc2-8d0f-c094a38e5c0e', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (25, 73, 1, 7.5000, N'Texas State Sales Tax', 'd50102e1-0150-43f3-93ad-12ab6c1deb06', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (26, 74, 1, 5.0000, N'Utah State Sales Tax', '5e6d8621-36af-40ce-972b-61aaef0556d8', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (27, 79, 1, 8.8000, N'Washington State Sales Tax', '9c84c0af-41cd-4670-98bc-5026e188541f', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (28, 77, 3, 10.0000, N'Taxable Supply', 'f53b6a7e-7da4-49e8-ac09-d57fefac64d3', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (29, 20, 3, 16.0000, N'Germany Output Tax', '78c8a559-4d0f-45b6-b7a3-e11ff9a702f4', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (30, 84, 3, 19.6000, N'France Output Tax', '5446ea04-fa7c-4b02-a157-a05f44bf47b6', '20080430 00:00:00.000')
INSERT INTO [Sales].[SalesTaxRate] ([SalesTaxRateID], [StateProvinceID], [TaxType], [TaxRate], [Name], [rowguid], [ModifiedDate]) VALUES (31, 14, 3, 17.5000, N'United Kingdom Output Tax', 'abd185a9-5367-44e1-8a6e-71d083943f3c', '20080430 00:00:00.000')
GO

SET IDENTITY_INSERT [Sales].[SalesTaxRate] OFF


-- Foreign Key Constraint Enable's for Table: [Sales].[SalesTaxRate]
Print 'Foreign Key Constraint Enable''s for Table: [Sales].[SalesTaxRate]'
ALTER TABLE [Sales].[SalesTaxRate] CHECK CONSTRAINT [FK_SalesTaxRate_StateProvince_StateProvinceID]

-- Check Constraint Enable's for Table: [Sales].[SalesTaxRate]
Print 'Check Constraint Enable''s for Table: [Sales].[SalesTaxRate]'
ALTER TABLE [Sales].[SalesTaxRate] CHECK CONSTRAINT [CK_SalesTaxRate_TaxType]


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
