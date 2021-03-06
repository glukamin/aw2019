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

-- Foreign Key Constraint Disable's for Table: [Sales].[CountryRegionCurrency]
Print 'Foreign Key Constraint Disable''s for Table: [Sales].[CountryRegionCurrency]'
ALTER TABLE [Sales].[CountryRegionCurrency] NOCHECK CONSTRAINT [FK_CountryRegionCurrency_CountryRegion_CountryRegionCode]
ALTER TABLE [Sales].[CountryRegionCurrency] NOCHECK CONSTRAINT [FK_CountryRegionCurrency_Currency_CurrencyCode]


-- Insert scripts for table: CountryRegionCurrency
PRINT 'Inserting rows into table: CountryRegionCurrency'
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'AE', N'AED', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'AR', N'ARS', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'AT', N'ATS', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'AT', N'EUR', '20080430 00:00:00.000')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'AU', N'AUD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'BB', N'BBD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'BD', N'BDT', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'BE', N'BEF', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'BE', N'EUR', '20080430 00:00:00.000')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'BG', N'BGN', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'BH', N'BHD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'BN', N'BND', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'BO', N'BOB', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'BR', N'BRL', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'BS', N'BSD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'BT', N'BTN', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'CA', N'CAD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'CH', N'CHF', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'CL', N'CLP', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'CN', N'CNY', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'CO', N'COP', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'CR', N'CRC', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'CY', N'CYP', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'CZ', N'CZK', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'DE', N'DEM', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'DE', N'EUR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'DK', N'DKK', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'DO', N'DOP', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'DZ', N'DZD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'EC', N'USD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'EE', N'EEK', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'EG', N'EGP', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'ES', N'ESP', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'ES', N'EUR', '20080430 00:00:00.000')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'FI', N'EUR', '20080430 00:00:00.000')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'FI', N'FIM', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'FJ', N'FJD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'FR', N'EUR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'FR', N'FRF', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'GB', N'GBP', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'GH', N'GHC', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'GR', N'EUR', '20080430 00:00:00.000')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'GR', N'GRD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'GT', N'GTQ', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'HK', N'HKD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'HR', N'HRK', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'HU', N'HUF', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'ID', N'IDR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'IE', N'EUR', '20080430 00:00:00.000')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'IE', N'IEP', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'IL', N'ILS', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'IN', N'INR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'IS', N'ISK', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'IT', N'EUR', '20080430 00:00:00.000')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'IT', N'ITL', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'JM', N'JMD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'JO', N'JOD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'JP', N'JPY', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'KE', N'KES', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'KR', N'KRW', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'KW', N'KWD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'LB', N'LBP', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'LK', N'LKR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'LT', N'LTL', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'LU', N'EUR', '20080430 00:00:00.000')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'LV', N'LVL', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'MA', N'MAD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'MT', N'MTL', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'MU', N'MUR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'MV', N'MVR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'MX', N'MXN', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'MY', N'MYR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'NA', N'NAD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'NG', N'NGN', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'NL', N'EUR', '20080430 00:00:00.000')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'NL', N'NLG', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'NO', N'NOK', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'NP', N'NPR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'NZ', N'NZD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'OM', N'OMR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'PA', N'PAB', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'PE', N'PEN', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'PH', N'PHP', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'PK', N'PKR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'PL', N'PLN', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'PL', N'PLZ', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'PT', N'EUR', '20080430 00:00:00.000')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'PT', N'PTE', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'PY', N'PYG', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'RO', N'ROL', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'RU', N'RUB', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'RU', N'RUR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'SA', N'SAR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'SE', N'SEK', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'SG', N'SGD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'SI', N'SIT', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'SK', N'SKK', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'SV', N'SVC', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'TH', N'THB', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'TN', N'TND', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'TR', N'TRL', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'TT', N'TTD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'TW', N'TWD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'US', N'USD', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'UY', N'UYU', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'VE', N'VEB', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'VN', N'VND', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'ZA', N'ZAR', '20140208 10:17:21.510')
INSERT INTO [Sales].[CountryRegionCurrency] ([CountryRegionCode], [CurrencyCode], [ModifiedDate]) VALUES (N'ZW', N'ZWD', '20140208 10:17:21.510')
GO


-- Foreign Key Constraint Enable's for Table: [Sales].[CountryRegionCurrency]
Print 'Foreign Key Constraint Enable''s for Table: [Sales].[CountryRegionCurrency]'
ALTER TABLE [Sales].[CountryRegionCurrency] CHECK CONSTRAINT [FK_CountryRegionCurrency_CountryRegion_CountryRegionCode]
ALTER TABLE [Sales].[CountryRegionCurrency] CHECK CONSTRAINT [FK_CountryRegionCurrency_Currency_CurrencyCode]


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
