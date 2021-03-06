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


-- Insert scripts for view: vJobCandidateEmployment
PRINT 'Inserting rows into view: vJobCandidateEmployment'
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (1, '20000601 00:00:00.000', '20020930 00:00:00.000', N'Wingtip Toys', N'Lead Machinist', N' Supervised work of staff of four machinists. Coordinated all complex assembly and tooling activities, including production of tricycles and wagons.
Developed parts fabrication from sample parts, drawings and verbal orders.Worked with ISO9000 implementation.
        ', N'Production', N'Manufacturing', N'US ', N'MI ', N'Saginaw')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (1, '19961115 00:00:00.000', '20000501 00:00:00.000', N'Blue Yonder Airlines', N'Machinist', N'Repaired and maintained a variety of production and fabrication machine tools.
Set up and operated machines to close tolerances. Used and wrote CNC machine programs. Trained extensively in computer-aided manufacturing.
        ', N'Production', N'Manufacturing', N'US ', N'IL ', N'Chicago')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (1, '19940610 00:00:00.000', '19960722 00:00:00.000', N'City Power and Light', N'Assistant Machinist', N'Performed centerless grinding. Received training in manual mill and lathe machines, as well as micrometers and calipers.
Owned complete toolset.Worked extensive overtime on request. ', N'Production', N'Manufacturing', N'US ', N'IA ', N'Des Moines')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (2, '19940615 00:00:00.000', NULL, N'Wingtip Toys', N'Production Manager', N'Production manager Quality assurance lead Safety representative ISO 9000 certification lead
Production line worker
        ', N'Production', N'Manufacturing', N'US ', N'FL ', N'Orlando')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (3, '19980831 00:00:00.000', '20021228 00:00:00.000', N'Trey Research', N'Senior Developer', N' Used C# and ASP.NET to create several intranet applications. These included an application to analyze research data using SQL Server Analysis Services, and another to publish sales and financial reports for use by field offices.
Wrote C# and Visual Basic 6.0 DLLs to encapsulate the business logic for all new internal applications. Updated existing client-server system, moved all business logic to the middle tier to improve performance and scalability. Used Visual Basic 6.0. 
Assist in the database design and stored procedure creation for all new applications. Use both SQL Server 7.0 and SQL Server 2000.
        ', N'Technology', N'Market Research', N'US ', N'WA ', N'Renton')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (3, '19950615 00:00:00.000', '19980801 00:00:00.000', N'Contoso Pharmaceuticals', N'Windows Programmer', N'Wrote Visual Basic 5.0 ActiveX DLLs to encapsulate the business logic for all internal applications. Designed and implemented a Windows application to consolidate and display business information from several different sources, including Access, Excel And SQL Server. Used Visual Basic 5.0 and Crystal Reports. Assisted in the database design for a new product quality assurance application. Wrote all stored procedures required for data retrieval by the front-end application. Used SQL Server 7.0.
        ', N'Technology', N'Pharmaceuticals', N'US ', N'WA ', N'Bellevue')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (3, '19930510 00:00:00.000', '19950601 00:00:00.000', N'Southridge Video', N'Purchasing Manager', N'Tracked inventory in regional stores. Placed all necessary orders, managed vendor relationships. Built an Access 2.0 database, migrated inventory tracking from Excel to Access. Built a user interface for the Access inventory database using Visual Basic 4.0.
        ', N'Purchasing', N'Entertainment', N'US ', N'WA ', N'Kent')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (4, '19980301 00:00:00.000', '20001230 00:00:00.000', N'Wide World Imports', N'Sales Manager', N' Managed a sales force of 20 sales representatives and 5 support staff distributed across 5 states. Also managed relationships with vendors for lead generation.
Lead the effort to leverage IT capabilities to improve communication with the field. Improved lead-to-contact turnaround by 15 percent. Did all sales planning and forecasting. Re-mapped territory assignments for maximum sales force productivity. Worked with marketing to map product placement to sales strategy and goals. 
Under my management, sales increased 10% per year at a minimum.
        ', N'Sales', N'Import/Export', N'US ', N'WA ', N'Renton')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (4, '19920614 00:00:00.000', '19980601 00:00:00.000', N'Fourth Coffee', N'Sales Associater', N'Selling product to supermarkets and cafes. Worked heavily with value-add techniques to increase sales volume, provide exposure to secondary products.
Skilled at order development. Observed and built relationships with buyers that allowed me to identify opportunities for increased traffic.
        ', N'Sales', N'Food and Beverage', N'US ', N'WA ', N'Spokane')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (5, '19980331 00:00:00.000', NULL, N'Importations Internationales', N'Directeur commercial', N'Gestion d''une équipe de vente composée de 20 représentants et de 5 assistants répartis dans cinq départements. Gestion des relations avec les vendeurs dans l''optique de la génération de prospects.
Optimisation du système informatique dans le but d''améliorer les communications avec les représentants sur le terrain. Amélioration de 15 % du cycle prospect-contact.
Réalisation de toutes les opérations de planification et de prévision. Redéfinition des affectations géographiques afin d''optimiser la productivité de l''équipe de vente. Collaboration avec le service Marketing pour faire correspondre le positionnement des produits avec la stratégie et les objectifs de ventes. 
Sous ma direction, les ventes ont augmenté de 10 % par an au minimum.
        ', N'Ventes', N'Import/Export', N'France', N'Bouches-du-Rhône', N'Martigues')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (5, '19920315 00:00:00.000', '19980331 00:00:00.000', N'Producteurs Associés', N'Ingénieur commercial senior', N'Vente de produits aux détaillants et aux restaurants. Collaboration étroite avec les acheteurs pour développer les relations. Principal responsable commercial au sein de l''entreprise entre 1996 et 1998.
Introduction de la commercialisation croisée de produits associés. Notre campagne de collaboration menée avec une société locale de chocolats fut l''une des plus réussies de l''histoire de l''entreprise. L''augmentation du chiffre d''affaires attribué à la campagne fut de 18 %.
        ', N'Ventes', N'Agro-alimentaire', N'France', N'Bouches-du-Rhône', N'Aubagne')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (5, '19900610 00:00:00.000', '19920331 00:00:00.000', N'Café Plus', N'Ingénieur commercial', N'Vente de produits aux supermarchés et aux cafés. Utilisation intensive de techniques à valeur ajoutée destinées à augmenter le volume des ventes et à proposer des produits secondaires.
Expérience de l''augmentation des commandes. Observation et établissement de relations avec les acheteurs dans le but d''identifier les opportunités d''augmentation des ventes.
        ', N'Ventes', N'Agro-alimentaire', N'France', N'Bouches-du-Rhône', N'Aix-en-Provence')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (6, '19940615 00:00:00.000', '20020811 00:00:00.000', N'Jouets en folie', N'Directeur de la production', N'Directeur de la production. Responsable de l''assurance qualite. Responsable des procédures de sécurité. Responsable de la certification ISO 9000.
Conducteur de ligne de production.
        ', N'Production', N'Fabrication', N'France', N'Pyrénées-Orientales', N'Perpignan')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (7, '20000615 00:00:00.000', '20020911 00:00:00.000', N'Jouets en folie', N'Chef mécanicien', N'Supervision du travail d''une équipe de quatre mécaniciens. Coordination de toutes les activités complexes de montage et d''outillage, notamment la production de tricycles et de wagons. Développement de la fabrication de pièces à partir d''échantillons, de plans et de commandes orales. Participation à la mise en œuvre ISO9000.
        ', N'Production', N'Fabrication', N'France', N'Var', N'Bandol')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (7, '19961115 00:00:00.000', '20000511 00:00:00.000', N'Aéroports sans frontières', N'Mécanicien', N'Réparation et maintenance de diverses machines-outils de production et de fabrication. Optimisation du réglage et de l''utilisation des machines.Utilisation et écriture de programmes d''automatisation des machines. Formation intensive dans le domaine de la fabrication assistée par ordinateur.
        ', N'Production', N'Fabrication', N'France', N'Rhône', N'Lyon')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (7, '19940615 00:00:00.000', '19960611 00:00:00.000', N'Lumières citadines', N'Aide-mécanicien', N'Réalisation de rectifications en plongée sans centres. Formation sur fraiseuse manuelle et tour, mais aussi sur des appareils de mesure à vis micrométrique.
Propriétaire d''une caisse à outils complète. Effectue des heures supplémentaires si nécessaire.
        ', N'Production', N'Fabrication', N'France', N'Loire', N'Saint-Étienne')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (8, '19980331 00:00:00.000', NULL, N'Wide World Imports', N'销售经理', N'负责管理由 20 名销售代表和 5 名支持人员组成的跨 5 个州的销售网络。另外，还负责协调与供应商的关系以获得客户线索. 带领团队利用 IT 技术改善与销售人员的往来通信情况。将从客户线索变为联系客户的时间周期缩短 15%. 计划和预测所有销售活动。调整销售区域分配，最大限度提高所有销售人员的效率。与营销部门密切合作将产品试用转化为具体的销售战略和目标. 在我的管理之下，销售额每年至少增长 10%.
        ', N'销售', N'进出口', N'US ', N'WA ', N'Renton')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (8, '19920315 00:00:00.000', '19980331 00:00:00.000', N'Coho Winery', N'高级销售助理', N'向零售商和饭店推销产品。与客户密切联系以拓展业务。1996 至 1998 年间任公司销售主管. 首创产品搭卖方案。与当地巧克力公司联手举办的活动是公司历史上最成功的促销活动。该活动使公司收入增加 18%.
        ', N'销售', N'食品和饮料', N'US ', N'WA ', N'Bellevue')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (8, '19900610 00:00:00.000', '19920331 00:00:00.000', N'Fourth Coffee', N'销售助理', N'向超市和咖啡馆推销产品。主要使用增值法来提高销量，为副产品创造市场. 擅长拉订单。与客户保持良好关系，善于判断并把握机会来提高销量
        ', N'销售', N'食品和饮料', N'US ', N'WA ', N'Kent')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (9, '19940915 00:00:00.000', '20020108 00:00:00.000', N'Wingtip Toys', N'生产经理', N'生产经理. 质保主管. 安全代表. ISO 9000 认证主管.生产线工人
        ', N'生产', N'制造', N'US ', N'FL ', N'Orlando')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (10, '20000615 00:00:00.000', '20020918 00:00:00.000', N'Wingtip Toys', N'机械师主管', N'管理四名机械师的工作. 协调所有复杂的组装和工具使用，包括三轮车和四轮车的生产. 根据样件、图纸和口头描述进行零部件组装. 参与公司通过 ISO9000 质量认证的工作.
        ', N'生产', N'制造', N'US ', N'CO ', N'Denver')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (10, '19961115 00:00:00.000', '20000511 00:00:00.000', N'Blue Yonder Airlines', N'机械师', N'修理和维护各种生产和组装用机械工具. 调整并操作机器以实现高精度. 使用并编写 CNC 机器程序. 在计算机辅助制造方面受过广泛的培训.
        ', N'生产', N'制造', N'US ', N'IL ', N'Chicago')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (10, '19940615 00:00:00.000', '19960713 00:00:00.000', N'City Power and Light', N'助理机械师', N'进行无心磨削. 在人工磨削和车床设备以及千分尺和卡钳方面接受过培训. 管理全套工具. 按要求经常加班.。
        ', N'生产', N'制造', N'US ', N'IA ', N'Des Moines')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (11, '19980331 00:00:00.000', '20040515 00:00:00.000', N'เวิลด์วายด์อิมปอร์ต จำกัด ', N'ผู้จัดการฝ่ายขาย ', N'จัดการทีมขายที่ประกอบด้วยตัวแทนขาย 20 คน และเจ้าหน้าที่สนับสนุน 5 คน  กระจายใน 5 จังหวัด  ดูแลการประสานงานกับผู้ค้า สำหรับการสร้างโอกาสทางการขาย 
เป็นผู้นำในการใช้เทคโนโลยีสารสนเทศเพื่อพัฒนาระบบสื่อสารในพื้นที่ขาย  เพิ่มความสำเร็จในการติดตามโอกาสทางการขาย 15 เปอร์เซ็นต
วางแผนและประมาณการขายทั้งหมด  จัดการมอบหมายเขตการขายใหม่ เพื่อให้ได้ประสิทธิผลสูงสุด  ประสานงานกับฝ่ายการตลาดเพื่อวางแผนตำแหน่งของผลิตภัณฑ์ให้เข้ากับกลยุทธ์และเป้าหมายในการขาย  มีผลงานการบริหาร ทำให้ยอดขายเพิ่มขึ้นอย่างน้อย 10% ต่อปี 
        ', N'ฝ่ายขาย', N'นำเข้า/ส่งออก ', N'ประเทศไทย', N'กรุงเทพมหานคร', N'สาทร  ')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (11, '19920401 00:00:00.000', '19970301 00:00:00.000', N'สุขุมวิทไวเนอร', N'พนักงานขายอาวุโส ', N'ขายผลิตภัณฑ์ให้กับผู้ค้าปลีกและภัตตาคาร  ทำงานร่วมกับฝ่ายจัดซื้ออย่างใกล้ชิด เพื่อพัฒนาการประสานงาน หัวหน้าตัวแทนขายสำหรับองค์กร ระหว่างปี 2539 - 2541 
ริเริ่มใช้กลยุทธ์ผูกสินค้าที่เกี่ยวข้องกัน ริเริ่มใช้ตราสินค้าร่วมกับบริษัทช็อคในประเทศ  เป็นแคมเปญที่ได้รับความสำเร็จสูงสุดในประวัติการดำเนินธุรกิจขององค์กร  แคมเปญดังกล่าวทำให้มียอดขายเพิ่มขึ้นถึง 18% 
        ', N'ฝ่ายขาย ', N'อาหารและเครื่องดื่ม ', N'ประเทศไทย ', N'กรุงเทพมหานคร', N'พระโขนง')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (11, '19900804 00:00:00.000', '19920201 00:00:00.000', N'กาแฟอาโรมา', N'พนักงานขาย ', N' ขายผลิตภัณฑ์ให้กับซูเปอร์มาเก็ตและร้านกาแฟ  ทำงานอย่างทุ่มเทและจริงจัง พร้อมทั้งใช้เทคนิคการขายเพิ่มเติม เพื่อเพิ่มยอดขาย ให้การแนะนำผลิตภัณฑ์รอง 
มีความชำนาญในการขยายยอดสั่งซื้อ ติดตามและสร้างสัมพันธภาพที่ดีกับลูกค้า เพื่อเพิ่มโอกาสในการขาย 	 
        ', N'ฝ่ายขาย ', N'อาหารและเครื่องดื่ม ', N'ประเทศไทย ', N'กรุงเทพมหานคร ', N'คลองเตย ')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (12, '19940701 00:00:00.000', '20030926 00:00:00.000', N'บริษัท เมจิค ทอยส์ ', N'ผู้จัดการฝ่ายผลิต ', N'ผู้จัดการฝ่ายผลิต หัวหน้างานประกันคุณภาพ  ตัวแทนด้านความปลอดภัย  ผู้นำการรับรองตามมาตรฐาน ISO 9000พนักงานสายการผลิต 
    ', N'ฝ่ายผลิต ', N'อุตสาหกรรมการผลิต ', N'ประเทศไทย ', N'กรุงเทพมหานคร ', N'ดุสิต ')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (13, '20000615 00:00:00.000', '20020911 00:00:00.000', N'บริษัท เมจิค ทอยส์ ', N'หัวหน้าช่างยนต์', N'ดูแลงานของกลุ่มช่างสี่คน 
ประสานงานประกอบที่มีความซับซ้อน และการใช้เครื่องมือหนัก รวมถึงการผลิตจักรยานสามล้อและรถเข็น 
พัฒนาการผลิตอะไหล่จากชิ้นส่วนตัวอย่าง ภาพร่าง และคำสั่งทางวาจา 
มีประสบการณ์ทำงานด้านISO9000
        ', N'ฝ่ายผลิต', N'อุตสาหกรรมการผลิต ', N'ประเทศไทย', N'กรุงเทพมหานคร', N'ตลิ่งชัน')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (13, '19961115 00:00:00.000', '20000511 00:00:00.000', N'สายการบินฟ้าคราม ', N'ช่างยนต์ ', N'ซ่อมบำรุงเครื่องมือหนักในการผลิตหลายประเภท  จัดตั้งและใช้งานเครื่องจักรที่ต้องการความแม่นยำสูง  ใช้และเขียนโปรแกรม CNC สำหรับเครื่องจักร 
ได้รับการฝึกอบรมด้านการผลิตโดยใช้คอมพิวเตอร์อย่างละเอียด 
        ', N'ฝ่ายผลิต  ', N'อุตสาหกรรมการผลิต ', N'ประเทศไทย ', N'กรุงเทพมหานคร ', N'สีลม ')
INSERT INTO [HumanResources].[vJobCandidateEmployment] ([JobCandidateID], [Emp.StartDate], [Emp.EndDate], [Emp.OrgName], [Emp.JobTitle], [Emp.Responsibility], [Emp.FunctionCategory], [Emp.IndustryCategory], [Emp.Loc.CountryRegion], [Emp.Loc.State], [Emp.Loc.City]) VALUES (13, '19940615 00:00:00.000', '19960611 00:00:00.000', N'บริษัทแสงไฟอุตสาหกรรม จำกัด  ', N'ผู้ช่วยช่างยนต์ ', N'รับผิดชอบงานบดโดยไม่อาศัยศูนย์กลาง ได้รับการฝึกอบรมเกี่ยวกับเครื่องกลึงและเครื่องโม่ที่ควบคุมด้วยมือ พร้อมด้วยการใช้ไมโครมิเตอร์และคาลิเปอร์  มีเครื่องมือครบชุด ทำงานล่วงเวลาได้  
        ', N'ฝ่ายผลิต ', N'อุตสาหกรรมการผลิต ', N'ประเทศไทย', N'กรุงเทพมหานคร ', N'ตลิ่งชัน')
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
