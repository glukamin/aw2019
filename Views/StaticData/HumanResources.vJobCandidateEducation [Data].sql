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


-- Insert scripts for view: vJobCandidateEducation
PRINT 'Inserting rows into view: vJobCandidateEducation'
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (1, N'Bachelor', '19900915 00:00:00.000', '19940510 00:00:00.000', N'Bachelor of Science', N'Mechanical Engineering', N'', N'3.2', N'4', N'Midwest State University', N'US ', N'IA ', N'Ames')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (2, N'Bachelor', '19930904 00:00:00.000', '19970603 00:00:00.000', N'Bachelor of Science', N'Industrial Engineering', N'', N'3.4', N'4', N'Everglades State College', N'US ', N'FL ', N'Tampa Bay')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (2, N'High School', '19890827 00:00:00.000', '19930612 00:00:00.000', N'Diploma', N'', N'', N'3.8', N'4', N'Evergreen High School', N'US ', N'FL ', N'Orlando')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (3, N'Bachelor', '19890915 00:00:00.000', '19930610 00:00:00.000', N'Bachelor of Science', N'Business', N'', N'3.6', N'4', N'Western University', N'US ', N'WA ', N'Seattle')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (4, N'Bachelor', '19860915 00:00:00.000', '19900520 00:00:00.000', N'Bachelor of Arts and Science', N'Business', N'', N'3.3', N'4', N'Louisiana Business College of New Orleans', N'US ', N'LA', N'New Orleans')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (5, N'Maîtrise', '19860915 00:00:00.000', '19900510 00:00:00.000', N'Baccalauréat professionnel vente représentation', N'Force de vente', N'', N'Menti', N'4', N'Université d''Aix-Marseille', N'France', N'Bouches-du-Rhône', N'Marseille')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (6, N'Maîtrise', '19930409 00:00:00.000', '19970306 00:00:00.000', N'Maîtrise de sciences et techniques', N'Ingénierie industrielle', N'', N'Menti', N'4', N'Université de Perpignan', N'France', N'Pyrénées-Orientales', N'Perpignan')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (6, N'Maîtrise', '19890827 00:00:00.000', '19931206 00:00:00.000', N'Baccalauréat sciences et technologies industrielle', N'Génie mécanique', N'', N'Menti', N'4', N'Lycée technique Émile Zola', N'France', N'Pyrénées-Orientales', N'Perpignan')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (7, N'DUT', '19920909 00:00:00.000', '19940506 00:00:00.000', N'DUT Génie mécanique et Productique', N'Ingénierie mécanique', N'', N'Menti', N'4', N'Université de Lyon', N'France', N'Rhône', N'Lyon')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (8, N'学士', '19860915 00:00:00.000', '19900515 00:00:00.000', N'Bachelor of Science', N'贸易', N'', N'3.3', N'4', N'Western University', N'US ', N'WA ', N'Seattle')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (9, N'学士', '19920904 00:00:00.000', '19960603 00:00:00.000', N'理学士', N'工业工程', N'', N'3.4', N'4', N'Soutern State College', N'US ', N'FL ', N'Tampa Bay')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (9, N'High School', '19880827 00:00:00.000', '19920612 00:00:00.000', N'高中', N'', N'', N'3.8', N'4', N'Evergreen High School', N'US ', N'FL ', N'Orlando')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (10, N'学士', '19900905 00:00:00.000', '19940522 00:00:00.000', N'理学士', N'机械工程', N'', N'3.2', N'4', N'Midwest State University', N'US ', N'IA ', N'Des Moines')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (11, N'ปริญญาตร', '19860903 00:00:00.000', '19900510 00:00:00.000', N'บธบ', N'บริหารธุรกิจ ', N'', N'3.6', N'4', N'มหาวิทยาลัยรามคำแหง', N'ประเทศไทย ', N'กรุงเทพมหานคร', N'รามคำแหง')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (12, N'ปริญญาตรี ', '19890901 00:00:00.000', '19940601 00:00:00.000', N'วิทยาศาสตรบัณฑิต ', N'วิศวกรรมอุตสาหการ', N'', N'3.4', N'4', N'มหาวิทยาลัยมหิดล ', N'ประเทศไทย', N'นครปฐม  ', N'สามพราน ')
INSERT INTO [HumanResources].[vJobCandidateEducation] ([JobCandidateID], [Edu.Level], [Edu.StartDate], [Edu.EndDate], [Edu.Degree], [Edu.Major], [Edu.Minor], [Edu.GPA], [Edu.GPAScale], [Edu.School], [Edu.Loc.CountryRegion], [Edu.Loc.State], [Edu.Loc.City]) VALUES (13, N'ปริญญาตรี ', '19920909 00:00:00.000', '19940506 00:00:00.000', N'วิทยาศาสตรบัณฑิต', N'Iวิศวกรรมเครื่องกล', N'', N'3.2', N'4', N'มหาวิทยาลัยสากล ', N'ประเทศไท', N'ปทุมธานี  ', N'รังสิต')
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
