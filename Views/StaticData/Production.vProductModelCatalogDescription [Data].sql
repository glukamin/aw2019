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


-- Insert scripts for view: vProductModelCatalogDescription
PRINT 'Inserting rows into view: vProductModelCatalogDescription'
INSERT INTO [Production].[vProductModelCatalogDescription] ([ProductModelID], [Name], [Summary], [Manufacturer], [Copyright], [ProductURL], [WarrantyPeriod], [WarrantyDescription], [NoOfYears], [MaintenanceDescription], [Wheel], [Saddle], [Pedal], [BikeFrame], [Crankset], [PictureAngle], [PictureSize], [ProductPhotoID], [Material], [Color], [ProductLine], [Style], [RiderExperience], [rowguid], [ModifiedDate]) VALUES (19, N'Mountain-100', N'Our top-of-the-line competition mountain bike. 
 				Performance-enhancing options include the innovative HL Frame, 
				super-smooth front suspension, and traction for all terrain.
                        ', N'AdventureWorks', N'2002', N'HTTP://www.Adventure-works.com', N'3 years', N'parts and labor', N'10 years', N'maintenance contract available through your dealer or any AdventureWorks retail store.', N'High performance wheels.', N'Anatomic design and made from durable leather for a full-day of riding in comfort.', N'Top-of-the-line clipless pedals with adjustable tension.', N'Each frame is hand-crafted in our Bothell facility to the optimum diameter 
				and wall-thickness required of a premium mountain frame. 
				The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.', N' Triple crankset; alumunim crank arm; flawless shifting. ', N'front', N'small', N'118', N'Almuminum Alloy', N'Available in most colors', N'Mountain bike', N'Unisex', N'Advanced to Professional riders', 'fca0665b-b956-489a-a5ec-6f0b4aa14d02', '20110501 00:00:00.000')
INSERT INTO [Production].[vProductModelCatalogDescription] ([ProductModelID], [Name], [Summary], [Manufacturer], [Copyright], [ProductURL], [WarrantyPeriod], [WarrantyDescription], [NoOfYears], [MaintenanceDescription], [Wheel], [Saddle], [Pedal], [BikeFrame], [Crankset], [PictureAngle], [PictureSize], [ProductPhotoID], [Material], [Color], [ProductLine], [Style], [RiderExperience], [rowguid], [ModifiedDate]) VALUES (23, N'Mountain-500', N'Suitable for any type of riding, on or off-road. 
			Fits any budget. Smooth-shifting with a comfortable ride.
                        ', N'AdventureWorks', N'2002', N'HTTP://www.Adventure-works.com', N'1 year', N'parts and labor', N'3 years', N'maintenance contact available through dealer', N'Stable, durable wheels suitable for novice riders.', N'Made from synthetic leather and features gel padding for increased comfort.', N'Expanded platform so you can ride in any shoes; great for all-around riding.', N'Our best value frame utilizing the same, ground-breaking technology as the ML aluminum frame.', N' Super rigid spindle. ', N'front', N'small', N'1', N'Aluminum Alloy', N'Available in all colors.', N'Mountain bike', N'Unisex', N'Novice to Intermediate riders', '866dbad3-5999-4329-beac-d826d959d9a1', '20121019 09:56:38.273')
INSERT INTO [Production].[vProductModelCatalogDescription] ([ProductModelID], [Name], [Summary], [Manufacturer], [Copyright], [ProductURL], [WarrantyPeriod], [WarrantyDescription], [NoOfYears], [MaintenanceDescription], [Wheel], [Saddle], [Pedal], [BikeFrame], [Crankset], [PictureAngle], [PictureSize], [ProductPhotoID], [Material], [Color], [ProductLine], [Style], [RiderExperience], [rowguid], [ModifiedDate]) VALUES (25, N'Road-150', N'This bike is ridden by race winners. Developed with the 
			Adventure Works Cycles professional race team, it has a extremely light 
			heat-treated aluminum frame, and steering that allows precision control.
                        ', N'AdventureWorks', N'2002', N'HTTP://www.Adventure-works.com', N'4 years', N'parts and labor', N'7 years', N'maintenance contact available through dealer or any Adventure Works Cycles retail store.', N'Strong wheels with double-walled rims.', N'Lightweight  kevlar racing saddle.', N'Top-of-the-line clipless pedals with adjustable tension.', N'Our lightest and best quality  aluminum frame made from the newest alloy;
			it is welded and heat-treated for strength. 
			Our innovative design results in maximum comfort and performance.', NULL, N'front', N'small', N'126', N'Aluminum', N'Available in all colors.', N'Road bike', N'Unisex', N'Intermediate to Professional riders', '94ffb702-0cbc-4e3f-b840-c51f0d11c8f6', '20110501 00:00:00.000')
INSERT INTO [Production].[vProductModelCatalogDescription] ([ProductModelID], [Name], [Summary], [Manufacturer], [Copyright], [ProductURL], [WarrantyPeriod], [WarrantyDescription], [NoOfYears], [MaintenanceDescription], [Wheel], [Saddle], [Pedal], [BikeFrame], [Crankset], [PictureAngle], [PictureSize], [ProductPhotoID], [Material], [Color], [ProductLine], [Style], [RiderExperience], [rowguid], [ModifiedDate]) VALUES (28, N'Road-450', N'A true multi-sport bike that offers streamlined riding and a revolutionary design. 
			       Aerodynamic design lets you ride with the pros, and the gearing will conquer hilly roads.
                        ', N'AdventureWorks', N'2002', N'HTTP://www.Adventure-works.com', N'1 year', N'parts and labor', N'5 years', N'maintenance contact available through dealer', N'Aluminum alloy rim with stainless steel spokes; built for speed on our high quality rubber tires.', N'Comfortable saddle with bump absorping rubber bumpers.', N'Top-of-the-line clipless pedals with adjustable tension.', N'aluminum alloy  frame
                     and features a lightweight down-tube milled to the perfect diameter for optimal strength.', NULL, N'front', N'small', N'111', N'Aluminum Alloy', N'Available in all colors.', N'Road bike', N'Unisex', N'Novice to Advanced riders', '8456bb94-b4dd-4a47-a76b-d0e54ab4285d', '20110501 00:00:00.000')
INSERT INTO [Production].[vProductModelCatalogDescription] ([ProductModelID], [Name], [Summary], [Manufacturer], [Copyright], [ProductURL], [WarrantyPeriod], [WarrantyDescription], [NoOfYears], [MaintenanceDescription], [Wheel], [Saddle], [Pedal], [BikeFrame], [Crankset], [PictureAngle], [PictureSize], [ProductPhotoID], [Material], [Color], [ProductLine], [Style], [RiderExperience], [rowguid], [ModifiedDate]) VALUES (34, N'Touring-1000', N'Travel in style and comfort. Designed for maximum comfort and safety. 
			Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.
                        ', N'AdventureWorks', N'2002', N'HTTP://www.Adventure-works.com', N'1 year', N'parts and labor', N'5 years', N'maintenance contact available through dealer', N'Excellent aerodynamic rims guarantee a smooth ride.', N'Cut-out shell  for a more comfortable ride.', N'A stable pedal for all-day riding.', N'aluminum alloy  frame
                     and features a lightweight down-tube milled to the perfect diameter for optimal strength.', NULL, N'front', N'small', N'87', N'Aluminum alloy ', N'Available in most colors.', N'Touring bike', N'Unisex', N'Novice to Advanced riders', '52e7f2c1-dbff-4518-927d-c7d46f9ed32e', '20121019 09:56:38.273')
INSERT INTO [Production].[vProductModelCatalogDescription] ([ProductModelID], [Name], [Summary], [Manufacturer], [Copyright], [ProductURL], [WarrantyPeriod], [WarrantyDescription], [NoOfYears], [MaintenanceDescription], [Wheel], [Saddle], [Pedal], [BikeFrame], [Crankset], [PictureAngle], [PictureSize], [ProductPhotoID], [Material], [Color], [ProductLine], [Style], [RiderExperience], [rowguid], [ModifiedDate]) VALUES (35, N'Touring-2000', N'The plush custom saddle keeps you riding all day, and there''s plenty of space
			 to add panniers and bike bags to the newly-redesigned carrier. 
				This bike has great stability when fully-loaded.
                        ', N'AdventureWorks', N'2002', N'HTTP://www.Adventure-works.com', N'1 year', N'parts and labor', N'5 years', N'maintenance contact available through dealer', NULL, N'New design  relieves pressure for long rides.', N'Top-of-the-line clipless pedals with adjustable tension.', N'The aluminum frame is custom-shaped for both good looks and strength; 
				it will withstand the most rigorous challenges of daily riding.', N' High-strength crank arm. ', N'front', N'small', N'87', N'Aluminum', N'Available in all colors except metallic.', N'Touring bike', N'Men''s', N'Intermediate to Advanced riders', 'aa10d9e6-e33f-4da8-ace1-992fcd6bb171', '20121019 09:56:38.273')
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
