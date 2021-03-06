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


-- Insert scripts for table: UnitMeasure
PRINT 'Inserting rows into table: UnitMeasure'
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'BOX', N'Boxes', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'BTL', N'Bottle', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'C  ', N'Celsius', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'CAN', N'Canister', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'CAR', N'Carton', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'CBM', N'Cubic meters', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'CCM', N'Cubic centimeter', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'CDM', N'Cubic decimeter', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'CM ', N'Centimeter', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'CM2', N'Square centimeter', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'CR ', N'Crate', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'CS ', N'Case', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'CTN', N'Container', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'DM ', N'Decimeter', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'DZ ', N'Dozen', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'EA ', N'Each', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'FT3', N'Cubic foot', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'G  ', N'Gram', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'GAL', N'Gallon', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'IN ', N'Inch', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'KG ', N'Kilogram', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'KGV', N'Kilogram/cubic meter', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'KM ', N'Kilometer', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'KT ', N'Kiloton', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'L  ', N'Liter', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'LB ', N'US pound', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'M  ', N'Meter', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'M2 ', N'Square meter', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'M3 ', N'Cubic meter', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'MG ', N'Milligram', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'ML ', N'Milliliter', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'MM ', N'Millimeter', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'OZ ', N'Ounces', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'PAK', N'Pack', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'PAL', N'Pallet', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'PC ', N'Piece', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'PCT', N'Percentage', '20080430 00:00:00.000')
INSERT INTO [Production].[UnitMeasure] ([UnitMeasureCode], [Name], [ModifiedDate]) VALUES (N'PT ', N'Pint, US liquid', '20080430 00:00:00.000')
GO



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
