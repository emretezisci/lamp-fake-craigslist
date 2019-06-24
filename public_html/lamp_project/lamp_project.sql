-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 02, 2019 at 11:53 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lamp_final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `Category_ID` varchar(10) NOT NULL,
  `CategoryName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`Category_ID`, `CategoryName`) VALUES
('1', 'forsales'),
('2', 'services'),
('3', 'jobs');

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE `Country` (
  `Country_ID` varchar(10) NOT NULL,
  `CountryName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Country`
--

INSERT INTO `Country` (`Country_ID`, `CountryName`) VALUES
('1', 'usa'),
('2', 'india'),
('3', 'sweden');

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE `Location` (
  `Location_ID` varchar(10) NOT NULL,
  `Country_ID` varchar(10) NOT NULL,
  `LocationName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Location`
--

INSERT INTO `Location` (`Location_ID`, `Country_ID`, `LocationName`) VALUES
('11', '1', 'cupertino'),
('21', '2', 'mumbai'),
('31', '3', 'stockholm');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `id`) VALUES
('emre', 'emre', 1),
('lamp', '1', 12);

-- --------------------------------------------------------

--
-- Table structure for table `Posts`
--

CREATE TABLE `Posts` (
  `Post_ID` int(11) NOT NULL,
  `Title` varchar(500) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Description` varchar(5000) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Agreement` varchar(60) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Image_1` varchar(120) NOT NULL,
  `Image_2` varchar(120) NOT NULL,
  `Image_3` varchar(120) NOT NULL,
  `Image_4` varchar(120) NOT NULL,
  `SubCategory_ID` varchar(20) NOT NULL,
  `Location_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Posts`
--

INSERT INTO `Posts` (`Post_ID`, `Title`, `Price`, `Description`, `Email`, `Agreement`, `TimeStamp`, `Image_1`, `Image_2`, `Image_3`, `Image_4`, `SubCategory_ID`, `Location_ID`) VALUES
(135, 'Rocking Chair Antique with Tooled leather Seat', '35$', 'Antique - Spindle Rocking Chair with Tooled leather Seat and Accented Back\r\n\r\nA Beautiful TURN of the CENTURY (Early 1900 s) spindled rocking chair with accented design to the shaped Top Back.\r\nIncludes what looks to be its ORIGINAL tooled leather circular seat.\r\n\r\n35.00 takes it\r\n\r\nPLEASE NOTE:\r\nThe LEATHER SEAT Has some splitting on the underside so could use some sort of\r\nreinforcement before a lot of use.', 'email1@email.com', 'checked', '2019-06-02 21:08:33', '00t0t_5b5F3VHQS0_600x450.jpg', '00i0i_HPVmMLPFmf_600x450.jpg', '', '', '11', '11'),
(136, 'Antique Wood Buddha', '120$', 'Antique Wood Buddha Early 19th Century . \r\nMeasures around in inches:7 1/2 high and the condition is Shows some wear and nicks\r\nIt can be picked up in Mumbai', 'email2@email.com', 'checked', '2019-06-02 21:08:48', '00h0h_6RoKjLU9NIs_600x450.jpg', '01414_c63MBaqytTp_600x450.jpg', '', '', '11', '21'),
(137, 'Vintage radios for sale', '1', 'Hi Iâ€™m selling a few antique radios for people who likes to collect old electronics. Some of them work some for display or for parts. Best Sirius offer will take them. Hereâ€™s what I have. Panasonic tape recorder. Works. Wards airline radio. Works. Magnavox radio clock. Works. rca victor radio I think it works but I lost the power cable. a dictograph amp. Donâ€™t know if it works has a broken tube. Firestone radio. Donâ€™t know if it works. I might have some more old things to sell but for now this is all I can get my hands on like I said best offer takes everything. Please call or text if ', 'email3@email.com', 'checked', '2019-06-02 20:26:54', '00C0C_4vKQrz99lQ4_600x450.jpg', '00h0h_jx2w3BsER5q_600x450 (1).jpg', '', '', '11', '31'),
(138, 'Grand Banks cabin cruiser 32ft', '47000$', 'Beautifully restored Grand Banks Trawler. Solid Mahogony wood hull. Completely gone through and running awesome . All electronics, vhf, lighting (led), Garmin touch screen, sound system, and remote search light. Led lighting around deck walkway. Back aft outdoor shower. All new glass with a slight bronze tint. Everything works. Perkins range4 m135 diesel engine runs awesome (1464 hours). Sips fuel at 1.5 gph running at 8mph. Velvit drive transmission. 1 vbirth bed, dinette converts to bed, and one bench seat that converts to two bunk beds. Kitchen is fully functioning. Bathroom fully functioning. Tons of fun fishing and crabbing. Solid boat, great for cruising San Juan Islands, or inside passage to Alaska. Kept in covered moorage. All brightwork completely done. To many extra\'s to list. Come take a look at this beautiful yacht cabin cruiser. \r\nDo not need help selling. Ad will be taken down when sold. ', 'email5@email.com', 'checked', '2019-06-02 21:08:24', '00x0x_5z0EmUPIcYf_600x450.jpg', '', '', '', '12', '11'),
(139, '2014 Nitro Z-7', '22000', 'This is a 2014 Nitro Z-7 with a Mercury Pro XS 150 HP.\r\n\r\nThis boat has been well cared for and is in great shape. It has little wear and tear on the seats and interior components. \r\n\r\nThis boat screams at 62 mph and is unbelievably stable in the water for an 18 foot bass boat. ', 'email5@email.com', 'checked', '2019-06-02 20:40:34', '00S0S_lvBM4QBFMnG_600x450.jpg', '00C0C_dEz5rshGM1T_600x450.jpg', '', '', '12', '31'),
(140, '2001 Seadoo Bombardier Rx Di', '3250$', 'I have a 2001 Seadoo rx di that runs great and fast. I have 2 stock keys and one programmed at 30mph, has neutral, reverse, VTS trim system, fuel Injection, all stock, had a new impeller and pump installed. \r\nComes with shorlander trailer with newer tires and new bunks installed. ', 'email6@email.com', 'checked', '2019-06-02 21:08:38', '00G0G_cmgYT1jCXjr_600x450.jpg', '00m0m_5RdxhSO9RER_600x450.jpg', '', '', '12', '21'),
(141, 'IBM 5150', '300$', 'Early PC for the collector. Computer and power cable only. No monitor, keyboard, mouse or other accessories are included. Unit powers up, other than that it has not been tested.', 'email7@email.com', 'checked', '2019-06-02 21:08:43', '00L0L_3EKPOHU2SoN_600x450.jpg', '00r0r_8tQpWdkgVP1_600x450.jpg', '', '', '13', '11'),
(142, 'Gold Macbook air retina', '500$', '', 'email6@email.com', 'checked', '2019-06-02 21:08:17', '01515_gtjIfRjisVt_600x450.jpg', '', '', '', '13', '21'),
(144, 'Lenovo X1 Carbon 8th Generation Business Ultrabook', '1100', 'Processor : IntelÂ® Coreâ„¢ i7-8650U with vPro (1.90GHz, up to 4.20GHz with Turbo Boost, 8MB Cache)\r\nâ€¢ Operating System : Windows 10 Pro 64\r\nâ€¢ Operating System Language : Windows 10 Pro 64 English\r\nâ€¢ Memory : 16 GB (Onboard)\r\nâ€¢ Hard Drive : 512 SSD PCIe\r\nâ€¢ Display : 14&quot; WQHD (2560 x 1440) IPS anti-glare non-touch, 300 nits\r\nâ€¢ Graphic Card : Integrated Intel UHD 620\r\nâ€¢ Body Color : Black\r\nâ€¢ Fingerprint Reader : Included\r\nâ€¢ Keyboard : Backlit - US English\r\nâ€¢ Camera : IR Camera &amp; 720p HD\r\nâ€¢ Pointing Device : UltraNav (TrackPoint and ClickPad)\r\nâ€¢ Security Chip : Hardware dTPM\r\nâ€¢ TPM Setting : Hardware dTPM2.0 Enabled\r\nâ€¢ Battery : 3 cell Li-Ion 57Wh\r\nâ€¢ Power Cord : 65W AC Adapter (2pin) - USB Type C\r\nâ€¢ Wireless : Intel Dual Band 8265 Wireless AC (2 x 2) &amp; Bluetooth 4.1 with vPro\r\nâ€¢ Integrated Wireless Antenna : WLAN antenna\r\nâ€¢ vPro Certified Model : vPro Certified\r\nâ€¢ Base : Intel UHD Graphics 620\r\nâ€¢ Language Pack : Publication - English\r\nâ€¢ 2 yrs + Warranty \r\nIncludes Note book and charger', 'email7@email.com', 'checked', '2019-06-02 20:49:32', '00l0l_4hGr8OuKMGA_600x450.jpg', '00X0X_d7NJOzXcwHf_600x450.jpg', '', '', '13', '31'),
(145, 'Land Clearing/Excavation/Demolition/Construction', '0', 'We are ready to start your project today. Give us a call today so we can start sending equipment out to your property right now!\r\n\r\n**We Operate/Travel to all Counties in California.**\r\n\r\n\r\n(EXCAVATION SERVICES/DEMOLITION)\r\nRoads, Culverts, Ponds, Irrigation, Flats, Hillside/Retaining walls, Earth Moving/Digging, Grading/Leveling, Hillsides, Water lines, Sewer lines, French Drains/Drain Lines, Land Restoration/ Land Clearing, Rock Delivery, Compactor/ Dirt-Rock/Flat compacting. \r\n\r\nConstruction\r\nResidential &amp; Commercial Building \r\nConcrete Work- Slabs Foundation/Retaining Walls\r\nNew Home Building \r\nGreen Houses \r\nMetal Buildings', 'email1@email.com', 'checked', '2019-06-02 20:58:01', '00o0o_ftJo5F9speZ_600x450.jpg', '', '', '', '23', '11'),
(146, 'landscape and garden services', '1', 'We have worked on efficient irrigation systems including drip gear driven rotors and spray systems. We have won awards through the California Landscape Contractors Association for xeriscape low water planting and irrigation. We have 35+ years of designing and building custom landscapes for our customers.With owning a nursery since 1989, we have gained vast experience in plant materials and all aspects of landscaping and horticulture. We have solutions to all problem situations such as deer resistant plant materials, problem soils, and low water demand. We have developed planting protocol that works with limited plant death. Also extensive knowledge in nutrients/ nutrient deficiencies, fertilizers/ and fertilizer injector systems to maximize plant growth. We take the time and effort to build the garden of your dreams.\r\n-Complete landscape design and instalation\r\n-Irrigation system installations and troubleshooting. \r\n-Rockwalls, retaining walls and hardscapes.\r\n-Tree services, and maintenance \r\n-Soil conditioning\r\n+references available upon request.\r\n+Call now to scedule a free estimate, we look forward to hearing from you.', 'email5@email.com', 'checked', '2019-06-02 20:58:48', '00K0K_9JnTKttzMtz_600x450.jpg', '', '', '', '23', '31'),
(147, 'ARNULFO CANO Gardening Services', '1', '* FREE ESTIMATES. 18 YRS OF EXPERIENCE\r\n*LOW MONTHLY MAINTENANCE \r\n*LANDSCAPING \r\n*TREE TRIMMING and REMOVAL\r\n*SOD INSTALLATION \r\n*CLEAN-UPS\r\n*FENCES\r\n*SPRINKLER INSTALLATION and REPAIRS\r\n*CEMENT', 'email3@email.com', 'checked', '2019-06-02 20:59:58', '1024px-No_image_available.jpg', '', '', '', '23', '11'),
(148, 'Experienced MIT PhD General Chemistry and Organic Chemistry Tutor', '200$/hr', 'She helps her students understand statistics and calculus and chemistry and biology and physics and history. She encourages them to work on their own outside of lesson time, and when they do, their efforts are greatly rewarded.', 'email7@email.com', 'checked', '2019-06-02 21:10:55', '1024px-No_image_available.jpg', '', '', '', '22', '31'),
(149, 'Algebra to Calculus, with Kindness and Patience', '350$ /hr', 'Since I received my Ph.D. in the area of organic chemistry, I am also very familiar with different types of organic reactions, mechanism and laboratory techniques. I simply love organic chemistry. I have worked with and continue to work with college students of various levels.', 'email1@email.com', 'checked', '2019-06-02 21:11:05', '00r0r_e7Z971JRHC5_600x450.jpg', '', '', '', '22', '11'),
(150, 'ESL Teacher for Hire', '60$/hr', 'I am an experienced ESL teacher who has taught in the US and abroad. I have a BA in English and am working toward a master\'s degree currently. I can tutor English in the following areas:\r\n\r\ngrammar\r\nreading comprehension \r\nspeaking/pronunciation \r\nwriting academically \r\nwriting professionally ', 'email7@email.com', 'checked', '2019-06-02 21:12:18', '1024px-No_image_available.jpg', '', '', '', '22', '21'),
(151, 'Mobile auto body dent Repair services free estimates low cheap prices', '1$', 'Good guys auto body Mobile auto body dent repair specialists you park I fix satisfaction guaranteed are you donâ€™t pay anything no job too big or too small just give us a call we do it all we specialize in everything from minor scratches to major wrecks we will cut your deductible in half and save your vehicle from getting a Carfax report and your premium from going skyhigh donâ€™t let your car get salvaged call us Old part repair new part replacements specializing in Frame damage repairs paint oxidization headlight restoration minor paint touch ups bumper repair PDR paintless dent removal call now for your free estimate and to set up an appointment please be sure to text a picture Uber and Lyft discounts thanks', '', 'checked', '2019-06-02 21:14:27', '00505_a77m2XRwpkc_600x450.jpg', '', '', '', '21', '11'),
(152, 'RV Renovation and Repair', '999$', 'RV Renovation and Repair. Services include the following:\r\nAwnings\r\nAppliances\r\nCabinetry\r\nDry Rot\r\nFlooring\r\nCarpeting\r\nRoof Repair\r\nWater Heater\r\nPlumbing\r\nElectrical\r\nSolar Panels\r\nSatellite\r\nVideo/Audio\r\nSlide-outs\r\nRemodel\r\nTrailer work', 'email3@email.com', 'checked', '2019-06-02 21:15:20', '1024px-No_image_available.jpg', '', '', '', '21', '21'),
(153, 'Trailer Service, Repair, and Customization Experts', '1$', 'SERVICES OFFERED:\r\n\r\n-40-Point Certified Trailer Inspection\r\n-Bearings\r\n-Wiring and Lighting Repair\r\n-Brake Adjustments\r\n-Axle Replacement\r\n-Fender Repair\r\n-Stabilizer Jacks\r\n-Roof Leaks\r\n-Spring Assist Adjustments &amp; Replacement\r\n-Welding', 'email4@email.com', 'checked', '2019-06-02 21:16:11', '01616_80UbkRuV6ah_600x450.jpg', '', '', '', '21', '31'),
(154, 'R&D Test Operator, Overnight', '40$/hr', 'About the Role: \r\nWe are hiring Vehicle Test Operators to help us test and improve the performance of our autonomous vehicles! You should have a knack for fixing things and work well under pressure. Navigating a computer should be second nature to you. Ideal candidates will have an impeccable driving record and excellent driving skills. We\'re looking for qualified candidates to join us in a contract position starting immediately. The contract is expected to last a year and possibly longer. ', 'email7@email.com', 'checked', '2019-06-02 21:42:40', '00U0U_gPmxSb15jUO_600x450.jpg', '', '', '', '33', '11'),
(155, 'Information Systems Analyst', '3500$', 'Summary of Position:\r\nThe Information Systems Analyst - Advancement Services evaluates, analyzes, designs, and maintains the Colleges Advancement Services Information System (currently Banner, an Ellucian ERP), as well as any other computer systems and products used to support Advancement Services functions. This position provides cross-functional user support and training. Additionally, the position serves as a technical liaison between OIA and the main campus Information Technology Services (ITS) for maintenance, troubleshooting, training, and system upgrades.', 'email5@email.com', 'checked', '2019-06-02 21:44:27', '1024px-No_image_available.jpg', '', '', '', '33', '21'),
(156, 'Front End Software Engineer', '60$/hr', 'Essential Job Functions\r\n\r\n-Create amazing data visualizations and customer experiences for all our internal and external facing tools.\r\n-Form and communicate opinions on what type of user interfaces we should be creating for our customers.\r\n-Own new front-end interfaces for our applications and support current products by following existing design patterns.\r\n-Apply deep knowledge of front-end frameworks and able to compare and contrast different tech stacks and libraries to decide which option(s) are best for a given problem.\r\n-Establish and define integration contracts with backend servers.\r\n-Take whiteboard discussions to rapid prototypes.\r\n-Work comfortably in both independent and collaborative efforts.\r\n-Create data-driven solutions to aid our understanding of user behavior.\r\n\r\nBonus Points\r\n-Experience with React, Angular, Ionic and/or Vue\r\n-Experience mapping out user flows\r\n-Experience making wireframes\r\n-An eye for basic design principles\r\n-Familiarity with Agile practices\r\n\r\nMinimum Job Qualifications\r\n-College Degree or equivalent experience required.\r\n-3+ years professional experience.\r\n-Strong interpersonal and communication skills.\r\n-Deep technical knowledge of common web systems, software languages, technology infrastructure and technical frameworks.\r\n-Strong analytical and quantitative skills, with ability to use data and analytics to understand and improve performance.\r\n-A flexible work schedule and be on-call during evenings and weekends, as needed.\r\n-Demonstrate initiative and self-motivation, conscientious and provide complete follow-through on areas of responsibility.', '', 'checked', '2019-06-02 21:45:12', '1024px-No_image_available.jpg', '', '', '', '33', '31'),
(157, 'E-Commerce Online Support Specialist', '25$/hr', '', '', 'checked', '2019-06-02 21:47:33', '1024px-No_image_available.jpg', '', '', '', '32', '11'),
(158, 'Marketing and Sales Support Intern', '600$', 'KEY RESPONSIBILITIES:\r\nâ€¢	Assist with marketing activities \r\nâ€¢	Coordinate companyâ€™s trade show logistics \r\nâ€¢	Provide â€œback upâ€ support for customer service \r\nâ€¢	Additional related responsibilities as required\r\n\r\nDESIRED QUALIFICATIONS:\r\nâ€¢	Highly self motivated\r\nâ€¢	Working towards Bachelorâ€™s Degree or equivalent degree strongly preferred\r\nâ€¢	Multitask oriented\r\nâ€¢	Superior communication skills both written and oral\r\nâ€¢	Detail Oriented â€“ able to work under deadline pressure and extra hours (if needed)\r\nâ€¢	Demonstrated time management, organizational &amp; problem-solving skills\r\nâ€¢	Team player with a strong work ethic\r\nâ€¢	Proficient in MS Word, PowerPoint and Excel along with the ability to adapt to new software\r\nâ€¢	Some knowledge in HTML/CSS\r\nâ€¢	Email Design and implementation (MailChimp or Constant Contact) preferable\r\nâ€¢	Photography and photo-editing (photoshop, Adobe Suite, Illustrator) helpful', 'email5@email.com', 'checked', '2019-06-02 21:48:27', '1024px-No_image_available.jpg', '', '', '', '32', '21'),
(159, 'Sales - BT Market', '4000$', 'We are seeking an energetic and enthusiastic Accounting Manager to join our team! The ideal candidate is someone who loves working with numbers and prides themselves on being detail oriented. You will mirror the culture to all those around you. The Accounting Manager connects with all aspects of the hotel from Guest Services to the Food and Beverage operation, so in this role you must be passionate about the relationships. If you like to be authentic and think of creative and colorful solutions to engage guests, this position may be for you! We offer a fun environment where we take service seriously.\r\n\r\nCOMPANY OVERVIEW\r\nWe believe that words have meaning. Thatâ€™s why we refer to our staff as â€œTeam Membersâ€, the Back of the House as the â€œHeart of the House,â€ housekeeping as â€œRoom Attendants,â€ and the front desk staff as â€œGuest Service Hosts.â€ Our broughtonHOTELS Service Standards Opens a New Window. set high expectations for our teams. Our goal is to create a work environment our Team Members love. If they believe in our mission, and are in love with their jobs, then theyâ€™re more likely to provide exceptional service and take great care hosting our guests.', 'email4@email.com', 'checked', '2019-06-02 21:49:12', '01414_8hPBHrrfIRb_600x450.jpg', '', '', '', '32', '31'),
(160, 'Director of Process Excellence', '', 'How Youâ€™ll Spend Your Time:\r\n\r\nOversee the management of program staff (technically, operationally, and administratively), including: planning and directing the activities of department(s); monitoring projects for timely completion and quality; and staffing, performance evaluation, and staff management.\r\nOversee the unitâ€™s planning, execution and integration of initiatives and activities on cost management and productivity.\r\nAssess processes to determine how to reduce rework, improve quality, improve efficiency, increase revenue and/or improve the ability to deliver desired services or outputs.\r\nWork closely with affected departments and academic units to assess fit/gap of currently implemented enterprise applications to support process innovation solutions, present data to management to influence implementation decisions, facilitate discussions and negotiations that drive consensus on implementing recommendations within a highly complex and cross-functional environments and build and secure support and resources for projects.\r\nOversee implementation to integrate process changes into ongoing operations.\r\nAdvise in analysis of operational intelligence metrics by defining and identifying key measures and performance metric targets and assisting in development of complex cost-benefit and return on investment analyses for proposed changes.\r\nAdvise, create and execute comprehensive change management strategy relative to projects and stakeholders; orchestrate and lead change management methodologies.\r\nOther duties may also be assigned.', 'email1@email.com', 'checked', '2019-06-02 21:50:15', '00Q0Q_6CPxICZihlt_600x450.jpg', '', '', '', '31', '11'),
(161, 'Program Manager, Business Development', '$50,000', 'The Cal Alumni Association (CAA) is seeking a customer service focused client services manager to partner with our advertisers and corporate sponsors. The Program Manager, Business Development will work with the Director, Business Development to lead sponsorship and advertising retention and activation fulfillment. A team oriented mentality and ability to work with many departments such as Marketing and Events will be the key to success. This role is all about relationship building internally and externally.\r\n\r\nSUPERVISION AND LOCATION', 'email3@email.com', 'checked', '2019-06-02 21:51:35', '1024px-No_image_available.jpg', '', '', '', '31', '21'),
(162, 'PROJECT MANAGER FOR ART FABRICATION COMPANY', '$ 63,000', 'Are you somebody that likes to turn chaos into order? Do you like to work in a creative environment and watch things get made? \r\n\r\nLocal Language is looking for an experienced Project Manager that is a self-starter, detail oriented, can multitask, and plan schedules in a fast-paced start up environment. You will be working directly with our clients (interior designers and purchasing agents) as well as in house art team, production, and independent artists to deliver projects on time and within budget. \r\n\r\nEvery project is different, and you will be responsible for defining the scope, keeping all parties informed, and communicating to all parties to keep the project moving and prevent bottlenecks. We are looking for a project manager that can see the big picture, has a great eye for design, thinks like an engineer, and is detailed enough to find the needle in the haystack. \r\n\r\nFraming and/or Art Consulting experience required.', 'email5@email.com', 'checked', '2019-06-02 21:52:19', '1024px-No_image_available.jpg', '', '', '', '31', '31');

-- --------------------------------------------------------

--
-- Table structure for table `SubCategory`
--

CREATE TABLE `SubCategory` (
  `SubCategory_ID` varchar(10) NOT NULL,
  `Category_ID` varchar(10) NOT NULL,
  `SubCategoryName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SubCategory`
--

INSERT INTO `SubCategory` (`SubCategory_ID`, `Category_ID`, `SubCategoryName`) VALUES
('11', '1', 'antiques'),
('12', '1', 'boats'),
('13', '1', 'computer'),
('21', '2', 'automotive'),
('22', '2', 'lesson'),
('23', '2', 'garden'),
('31', '3', 'business'),
('32', '3', 'marketing'),
('33', '3', 'engineering');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD UNIQUE KEY `Category_ID` (`Category_ID`);

--
-- Indexes for table `Country`
--
ALTER TABLE `Country`
  ADD UNIQUE KEY `Country_ID` (`Country_ID`);

--
-- Indexes for table `Location`
--
ALTER TABLE `Location`
  ADD UNIQUE KEY `Location_ID` (`Location_ID`),
  ADD KEY `Region_ibfk_1` (`Country_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`Post_ID`),
  ADD KEY `Location_ibfk_1` (`Location_ID`),
  ADD KEY `SubCategory_ibfk_1` (`SubCategory_ID`);

--
-- Indexes for table `SubCategory`
--
ALTER TABLE `SubCategory`
  ADD UNIQUE KEY `SubCategory_ID` (`SubCategory_ID`),
  ADD KEY `Category_ibfk_1` (`Category_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `Posts`
--
ALTER TABLE `Posts`
  MODIFY `Post_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Location`
--
ALTER TABLE `Location`
  ADD CONSTRAINT `
  _ibfk_1` FOREIGN KEY (`Country_ID`) REFERENCES `Country` (`Country_ID`);

--
-- Constraints for table `Posts`
--
ALTER TABLE `Posts`
  ADD CONSTRAINT `Location_ibfk_1` FOREIGN KEY (`Location_ID`) REFERENCES `Location` (`Location_ID`),
  ADD CONSTRAINT `SubCategory_ibfk_1` FOREIGN KEY (`SubCategory_ID`) REFERENCES `SubCategory` (`SubCategory_ID`);

--
-- Constraints for table `SubCategory`
--
ALTER TABLE `SubCategory`
  ADD CONSTRAINT `Category_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `Category` (`Category_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
