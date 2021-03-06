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


-- Insert scripts for view: vAdditionalContactInfo
PRINT 'Inserting rows into view: vAdditionalContactInfo'
INSERT INTO [Person].[vAdditionalContactInfo] ([BusinessEntityID], [FirstName], [MiddleName], [LastName], [TelephoneNumber], [TelephoneSpecialInstructions], [Street], [City], [StateProvince], [PostalCode], [CountryRegion], [HomeAddressSpecialInstructions], [EMailAddress], [EMailSpecialInstructions], [EMailTelephoneNumber], [rowguid], [ModifiedDate]) VALUES (291, N'Gustavo', NULL, N'Achong', N'425-555-1112', N'Call only after 5:00 p.m.', N'123 Oak', N'Seattle', N'WA', N'98001', N'USA', N'If correspondence to the primary address fails, try this one.', N'customer1@sample.com', N'For urgent issues, do not send e-mail. Instead use this emergency contact phone', N'425-555-1111', 'd4c132d3-fcb5-4231-9dd5-888a54bec693', '20150415 16:33:33.060')
INSERT INTO [Person].[vAdditionalContactInfo] ([BusinessEntityID], [FirstName], [MiddleName], [LastName], [TelephoneNumber], [TelephoneSpecialInstructions], [Street], [City], [StateProvince], [PostalCode], [CountryRegion], [HomeAddressSpecialInstructions], [EMailAddress], [EMailSpecialInstructions], [EMailTelephoneNumber], [rowguid], [ModifiedDate]) VALUES (293, N'Catherine', N'R.', N'Abel', N'206-555-2222', N'On weekends, contact the manager at this number.', N'P.O Box 5', N'Edmonds', N'WA', N'98431', N'USA', N'This is an alternative address for billing only.', N'Joe@sample.com', N'Do not send e-mail for urgent issues. Use telephone instead.', NULL, 'd54e0552-c226-4c22-af3b-762ca854cdd3', '20150415 16:33:33.077')
INSERT INTO [Person].[vAdditionalContactInfo] ([BusinessEntityID], [FirstName], [MiddleName], [LastName], [TelephoneNumber], [TelephoneSpecialInstructions], [Street], [City], [StateProvince], [PostalCode], [CountryRegion], [HomeAddressSpecialInstructions], [EMailAddress], [EMailSpecialInstructions], [EMailTelephoneNumber], [rowguid], [ModifiedDate]) VALUES (295, N'Kim', NULL, N'Abercrombie', N'605-555-9877', NULL, N'990 5th Avenue', N'Redmond', N'WA', N'98052', N'USA', N'Use this address for billing only.', N'Customer3@sample.com', N'Do not send e-mails for urgent issues. Use telephone instead.', NULL, 'f7cbdb48-0b44-470e-9f37-7060446fbfb9', '20150415 16:33:33.077')
INSERT INTO [Person].[vAdditionalContactInfo] ([BusinessEntityID], [FirstName], [MiddleName], [LastName], [TelephoneNumber], [TelephoneSpecialInstructions], [Street], [City], [StateProvince], [PostalCode], [CountryRegion], [HomeAddressSpecialInstructions], [EMailAddress], [EMailSpecialInstructions], [EMailTelephoneNumber], [rowguid], [ModifiedDate]) VALUES (297, N'Humberto', NULL, N'Acevedo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Customer4@sample.com', N'This is secondary email address.', NULL, '5a41d336-84cf-44d7-b12b-83b64b511f7e', '20150415 16:33:33.090')
INSERT INTO [Person].[vAdditionalContactInfo] ([BusinessEntityID], [FirstName], [MiddleName], [LastName], [TelephoneNumber], [TelephoneSpecialInstructions], [Street], [City], [StateProvince], [PostalCode], [CountryRegion], [HomeAddressSpecialInstructions], [EMailAddress], [EMailSpecialInstructions], [EMailTelephoneNumber], [rowguid], [ModifiedDate]) VALUES (299, N'Pilar', NULL, N'Ackerman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'df1fb8ab-2323-4330-9ab8-54e13ce6d8f9', '20150415 16:33:33.090')
INSERT INTO [Person].[vAdditionalContactInfo] ([BusinessEntityID], [FirstName], [MiddleName], [LastName], [TelephoneNumber], [TelephoneSpecialInstructions], [Street], [City], [StateProvince], [PostalCode], [CountryRegion], [HomeAddressSpecialInstructions], [EMailAddress], [EMailSpecialInstructions], [EMailTelephoneNumber], [rowguid], [ModifiedDate]) VALUES (301, N'Frances', N'B.', N'Adams', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Customer6@sample.com', NULL, NULL, '66980082-c186-40ae-972a-74560e78c1af', '20150415 16:33:33.090')
INSERT INTO [Person].[vAdditionalContactInfo] ([BusinessEntityID], [FirstName], [MiddleName], [LastName], [TelephoneNumber], [TelephoneSpecialInstructions], [Street], [City], [StateProvince], [PostalCode], [CountryRegion], [HomeAddressSpecialInstructions], [EMailAddress], [EMailSpecialInstructions], [EMailTelephoneNumber], [rowguid], [ModifiedDate]) VALUES (303, N'Margaret', N'J.', N'Smith', N'206-555-2222', N'Best time to call is Monday-Wednesday mornings.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '691818e1-fc19-445f-b161-e401867368e3', '20150415 16:33:33.107')
INSERT INTO [Person].[vAdditionalContactInfo] ([BusinessEntityID], [FirstName], [MiddleName], [LastName], [TelephoneNumber], [TelephoneSpecialInstructions], [Street], [City], [StateProvince], [PostalCode], [CountryRegion], [HomeAddressSpecialInstructions], [EMailAddress], [EMailSpecialInstructions], [EMailTelephoneNumber], [rowguid], [ModifiedDate]) VALUES (305, N'Carla', N'J.', N'Adams', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5f183b92-1648-4948-8937-47c9c10f0583', '20150415 16:33:33.107')
INSERT INTO [Person].[vAdditionalContactInfo] ([BusinessEntityID], [FirstName], [MiddleName], [LastName], [TelephoneNumber], [TelephoneSpecialInstructions], [Street], [City], [StateProvince], [PostalCode], [CountryRegion], [HomeAddressSpecialInstructions], [EMailAddress], [EMailSpecialInstructions], [EMailTelephoneNumber], [rowguid], [ModifiedDate]) VALUES (307, N'Jay', NULL, N'Adams', N'253-555-4689', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '38256645-4b88-4169-b68a-5b0118f18445', '20150415 16:33:33.123')
INSERT INTO [Person].[vAdditionalContactInfo] ([BusinessEntityID], [FirstName], [MiddleName], [LastName], [TelephoneNumber], [TelephoneSpecialInstructions], [Street], [City], [StateProvince], [PostalCode], [CountryRegion], [HomeAddressSpecialInstructions], [EMailAddress], [EMailSpecialInstructions], [EMailTelephoneNumber], [rowguid], [ModifiedDate]) VALUES (309, N'Ronald', N'L.', N'Adina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbb05a55-2256-42b1-901e-824d28158911', '20150415 16:33:33.123')
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
