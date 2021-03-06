/*=============================================================


Version:   0.00.0000
Server:    (local)

DATABASE:	AdventureWorks2019
  Fulltext catalogs:  AW2016FullTextCatalog


=============================================================*/
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO

-- Create Fulltext Catalog [AW2016FullTextCatalog]
Print 'Create Fulltext Catalog [AW2016FullTextCatalog]'
GO
CREATE FULLTEXT CATALOG [AW2016FullTextCatalog]
	WITH ACCENT_SENSITIVITY = ON
	AS DEFAULT
	AUTHORIZATION [dbo]
GO

SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO
