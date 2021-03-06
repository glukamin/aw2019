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


-- Insert scripts for table: Currency
PRINT 'Inserting rows into table: Currency'
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'AED', N'Emirati Dirham', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'AFA', N'Afghani', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'ALL', N'Lek', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'AMD', N'Armenian Dram', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'ANG', N'Netherlands Antillian Guilder', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'AOA', N'Kwanza', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'ARS', N'Argentine Peso', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'ATS', N'Shilling', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'AUD', N'Australian Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'AWG', N'Aruban Guilder', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'AZM', N'Azerbaijanian Manat', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'BBD', N'Barbados Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'BDT', N'Taka', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'BEF', N'Belgian Franc', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'BGN', N'Bulgarian Lev', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'BHD', N'Bahraini Dinar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'BND', N'Brunei Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'BOB', N'Boliviano', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'BRL', N'Brazilian Real', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'BSD', N'Bahamian Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'BTN', N'Ngultrum', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'CAD', N'Canadian Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'CHF', N'Swiss Franc', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'CLP', N'Chilean Peso', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'CNY', N'Yuan Renminbi', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'COP', N'Colombian Peso', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'CRC', N'Costa Rican Colon', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'CYP', N'Cyprus Pound', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'CZK', N'Czech Koruna', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'DEM', N'Deutsche Mark', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'DKK', N'Danish Krone', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'DOP', N'Dominican Peso', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'DZD', N'Algerian Dinar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'EEK', N'Kroon', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'EGP', N'Egyptian Pound', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'ESP', N'Spanish Peseta', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'EUR', N'EURO', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'FIM', N'Markka', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'FJD', N'Fiji Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'FRF', N'French Franc', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'GBP', N'United Kingdom Pound', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'GHC', N'Cedi', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'GRD', N'Drachma', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'GTQ', N'Quetzal', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'HKD', N'Hong Kong Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'HRK', N'Croatian Kuna', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'HUF', N'Forint', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'IDR', N'Rupiah', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'IEP', N'Irish Pound', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'ILS', N'New Israeli Shekel', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'INR', N'Indian Rupee', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'ISK', N'Iceland Krona', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'ITL', N'Italian Lira', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'JMD', N'Jamaican Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'JOD', N'Jordanian Dinar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'JPY', N'Yen', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'KES', N'Kenyan Shilling', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'KRW', N'Won', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'KWD', N'Kuwaiti Dinar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'LBP', N'Lebanese Pound', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'LKR', N'Sri Lankan Rupee', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'LTL', N'Lithuanian Litas', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'LVL', N'Latvian Lats', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'MAD', N'Moroccan Dirham', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'MTL', N'Maltese Lira', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'MUR', N'Mauritius Rupee', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'MVR', N'Rufiyaa', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'MXN', N'Mexican Peso', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'MYR', N'Malaysian Ringgit', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'NAD', N'Namibia Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'NGN', N'Naira', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'NLG', N'Netherlands Guilder', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'NOK', N'Norwegian Krone', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'NPR', N'Nepalese Rupee', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'NZD', N'New Zealand Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'OMR', N'Omani Rial', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'PAB', N'Balboa', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'PEN', N'Nuevo Sol', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'PHP', N'Philippine Peso', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'PKR', N'Pakistan Rupee', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'PLN', N'Zloty', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'PLZ', N'Polish Zloty(old)', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'PTE', N'Portuguese Escudo', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'PYG', N'Guarani', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'ROL', N'Leu', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'RUB', N'Russian Ruble', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'RUR', N'Russian Ruble(old)', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'SAR', N'Saudi Riyal', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'SEK', N'Swedish Krona', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'SGD', N'Singapore Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'SIT', N'Tolar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'SKK', N'Slovak Koruna', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'SVC', N'El Salvador Colon', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'THB', N'Baht', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'TND', N'Tunisian Dinar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'TRL', N'Turkish Lira', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'TTD', N'Trinidad and Tobago Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'TWD', N'New Taiwan Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'USD', N'US Dollar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'UYU', N'Uruguayan Peso', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'VEB', N'Bolivar', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'VND', N'Dong', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'XOF', N'CFA Franc BCEAO', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'ZAR', N'Rand', '20080430 00:00:00.000')
INSERT INTO [Sales].[Currency] ([CurrencyCode], [Name], [ModifiedDate]) VALUES (N'ZWD', N'Zimbabwe Dollar', '20080430 00:00:00.000')
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
