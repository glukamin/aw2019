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


-- Insert scripts for view: vSalesPersonSalesByFiscalYears
PRINT 'Inserting rows into view: vSalesPersonSalesByFiscalYears'
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (275, N'Michael G Blythe', N'Sales Representative', N'Northeast', NULL, NULL, NULL)
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (276, N'Linda C Mitchell', N'Sales Representative', N'Southwest', NULL, NULL, NULL)
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (277, N'Jillian  Carson', N'Sales Representative', N'Central', NULL, NULL, NULL)
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (278, N'Garrett R Vargas', N'Sales Representative', N'Canada', NULL, NULL, NULL)
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (279, N'Tsvi Michael Reiter', N'Sales Representative', N'Southeast', NULL, NULL, NULL)
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (280, N'Pamela O Ansman-Wolfe', N'Sales Representative', N'Northwest', NULL, NULL, NULL)
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (281, N'Shu K Ito', N'Sales Representative', N'Southwest', NULL, NULL, NULL)
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (282, N'José Edvaldo Saraiva', N'Sales Representative', N'Canada', NULL, NULL, NULL)
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (283, N'David R Campbell', N'Sales Representative', N'Northwest', NULL, NULL, NULL)
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (284, N'Tete A Mensa-Annan', N'Sales Representative', N'Northwest', NULL, NULL, NULL)
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (286, N'Lynn N Tsoflias', N'Sales Representative', N'Australia', NULL, NULL, NULL)
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (288, N'Rachel B Valdez', N'Sales Representative', N'Germany', NULL, NULL, NULL)
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (289, N'Jae B Pak', N'Sales Representative', N'United Kingdom', NULL, NULL, NULL)
INSERT INTO [Sales].[vSalesPersonSalesByFiscalYears] ([SalesPersonID], [FullName], [JobTitle], [SalesTerritory], [2002], [2003], [2004]) VALUES (290, N'Ranjit R Varkey Chudukatil', N'Sales Representative', N'France', NULL, NULL, NULL)
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
