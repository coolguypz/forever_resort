--SET IDENTITY_INSERT Client OFF

INSERT INTO Client (ClientID,Client_street,Client_state,Client_zip,Client_phone,Client_email, Client_type, Client_city )
VALUES (14,'8351 Ryan Drive','TX','77276','7136499509','simonin0@artisteer.com','Owners','Houston'),
(15,'44228 Shasta Pass','IL','61825','7136499510','bstannard1@diigo.com','Owners','Champaign'),
(16,'8 Clemons Terrace', 'FL',	'33972', '7136499511', 'dwinny2@msn.com','Owners','Lehigh Acres'),
(17,'529 Havey Park', 'WA','98109', '7136499512','cclouter4@house.gov','Owners','Seattle'),
(18,'9400 Del Mar Junction','IL','60686','7136499513','abattersby5@google.com.hk','Owners','Chicago'),
(19,'38738 Morningstar Avenue','NM','87592','7136499514','lfairbourne6@digg.com','Owners','Santa Fe'),
(20,'4588 International Park','LA','70505','7136499515','abrun7@plala.or.jp','Owners','Lafayette'),
(21,'22412 Commercial Lane','NY','10110','7136499516','ccumes8@unesco.org','Owners','New York City'),
(23,'0 Algoma Place','GA','30066','7136499517','gditchett9@google.ca','Owners','Marietta'),
(24,'8785 Stuart Point','CA','95113','7136499518','kedelmannb@nymag.com','Owners','San Jose'),
(25,'7775 Larry Trail','MI','48211','7136499519','lofihilyc@geocities.jp','Owners','Detroit'),
(26,'853 Hermina Drive','MD','21747','7136499520','nshowlere@economist.com','Owners','Hagerstown'),
(27,'01 La Follette Alley','AZ','85040','7136499521','dlouthe3@privacy.gov.au','Owners','Phoenix'),
(28,'7 Fairfield Trail','MA','2298','7136499522','kfairhama@huffingtonpost.com','Owners','Boston'),
(29,'9 Dayton Pass','FL','33023','7136499523','eruspined@csmonitor.com','Owners','Hollywood'),
(31,'51 Ryan St','TX','77276','7136499512','monin0@artisteer.com','Tourist','Houston'),
(32,'228 Real Pass','IL','61825','7136499511','annard1@diigo.com','Tourist','Champaign'),
(33,'800 Terrace Circle', 'FL',	'33972', '7136499549', 'inny2@msn.com','Tourist','Lehigh Acres'),
(34,'529 Berry Park', 'WA','98109', '7136499548','louter4@house.gov','Tourist','Seattle'),
(35,'940 Del Mar Vista','IL','60686','7136499557','attersby55@google.com.hk','Tourist','Chicago'),
(36,'8738 New Avenue','NM','87592','7136499555','fairbourne6@digg.com','Tourist','Santa Fe'),
(37,'45885 Central Park','LA','70505','7136499554','abru76@plala.or.jp','Tourist','Lafayette'),
(38,'23412 Biscuit Lane','NY','10110','7136499553','ccumes80@unesco.org','Tourist','New York City'),
(39,'100 King Place','GA','30066','7136499552','chett9@google.ca','Tourist','Marietta'),
(40,'8685 Little Point','CA','95113','7136499588','mannb445@nymag.com','Tourist','San Jose'),
(41,'7875 Larry King','MI','48211','7136499589','lilyc@geocities.jp','Tourist','Detroit'),
(42,'8534 Sweet Drive','MD','21747','7136499557','showlere@economist.com','Tourist','Hagerstown'),
(43,'1001 La Follette Ave','AZ','85040','7136499556','theman33@privacy.gov.au','Tourist','Phoenix'),
(44,'4457 Mist Trail','MA','2298','7136499546','khama21@huffingtonpost.com','Tourist','Boston'),
(45,'7894 Dayton St','FL','33023','7136499547','pineking78@csmonitor.com','Tourist','Hollywood')


INSERT INTO Owners (ClientID, Owner_type)
VALUES (14,'Individual'),
(16,'Individual'),
(18,'Individual'),
(19,'Individual'),
(21,'Individual'),
(23,'Individual'),
(24,'Individual'),
(15,'Corporate'),
(17,'Corporate'),
(20,'Corporate'),
(25,'Corporate'),
(26,'Corporate')

INSERT INTO Individual
VALUES (14,'Rik','Haldene'),
(16,'Karna','Stienton'),
(18,'Almeta','Campaigne'),
(19,'Bertie','Whoston'),
(21,'Issie','Shernock'),
(23,'Irene','Wise'),
(24,'Karisa','Wisden')

INSERT INTO Corporate
VALUES (15,'Rossie Gerrelt','Devpulse'),
(17,'Amerigo Cappleman','Kanoodle'),
(20,'Gussi Mozzi','Edgeify'),
(25,'Burt Onraet','InnoZ'),
(26,'Mitzi Haddick','Vidoo')

--SET IDENTITY_INSERT Boat OFF

INSERT INTO Boat (BoatID, Boat_name, Boat_type, Boat_length_ft)
VALUES (872757548,'Alphazap	','small',7),
(523533459,'Stronghold','small',16),
(271027682,'Latlux','large',86),
(233788461,'Stronghold','small',18),
(809260540,'Greenlam','large',75),
(239781655,'Holdlamis','large',44),
(244650468,'Daltfresh','large',100),
(116515740,'Stringtough','large',77),
(508577718,'Holdlamis','large',64),
(981538469,'Lotlux','small',19),
(720392567,'Zamit','small',16),
(795741926,	'Fintone','large',35)

--SET IDENTITY_INSERT Boat_Owners OFF

INSERT INTO Boat_Owners (Boat_OwnerID, ClientID, BoatID)
VALUES (942384640,15,872757548),
(972094733,17,523533459),
(805519728,20,271027682),
(636740603,25,233788461),
(490653490,26,809260540),
(74721106,14,239781655),
(47152722,16,244650468),
(434938254,18,116515740),
(834500896,19,508577718),
(527965085,21,981538469),
(754597528,23,720392567),
(991182515,24,795741926)

--SET IDENTITY_INSERT Boat_Maintenance OFF

INSERT INTO Boat_Maintenance (Boat_MaintenanceID, MaintenanceID, BoatID, Actual_cost, Actual_hours, Discount, Next_Maintenance_date, Maintenance_date)
VALUES (123456,24636502,872757548,11912.20,500,0.03,'2021-04-14 00:00:00','2020-01-02 00:00:00'),
(123457, 551935171, 523533459, NULL, NULL, 0, NULL, '2020-02-11 00:00:00'),
(123458, 247314918, 271027682, NULL, NULL,	0, NULL,'2021-01-25 00:00:00'),
(123459, 470130071, 233788461, 73272.27, 400, 2, '2020-10-16 00:00:00','2020-06-01 00:00:00'),
(123460, 814017468, 809260540, NULL, NULL, 0, NULL,'2020-05-22 00:00:00'),
(123461, 64766870, 239781655, 68423.74, 70, 0, '2021-01-11 00:00:00','2020-07-28 00:00:00'),
(123462, 392523180, 244650468, 57192.47, 490, 0, '2020-06-05 00:00:00','2019-12-15 00:00:00'),
(123463, 210305300, 116515740, 97169.41, 350, 0, '2020-09-11 00:00:00','2020-05-13 00:00:00'),
(123464, 309972570, 508577718,	68912.84, 280, 0, '2020-11-20 00:00:00','2020-01-15 00:00:00'),
(123465, 975836889, 981538469,	88287.15, 340, 0, '2021-04-22 00:00:00','2020-11-27 00:00:00'),
(123466, 984765655, 720392567,	24066.11, 120, 0, '2020-10-16 00:00:00','2019-09-10 00:00:00'),
(123467, 341302379, 795741926,	57329.89, 240, 0, '2020-09-13 00:00:00','2020-01-13 00:00:00')

--SET IDENTITY_INSERT Maintenance OFF

INSERT INTO Maintenance (MaintenanceID, Maintenance_type, Maintenance_description, Maintenance_status, Maintenance_hours, Maintenance_cost)
VALUES (24636502,'Maintenance','Boat in for yearly inspection and maintenance.','Completed',	289.94,	11390.88),
(551935171,'Restoration','Owner stating that deck is leaking.','Pending', 103.38, 99643.93),
(247314918,'Maintenance','Air conditioner, electric, and deck maintenance','Pending',192.16, 30430.56),
(470130071,'Repairs','Sonar not working on boat.','Completed', 164.65, 75851.04),
(814017468,'Repairs','Barnacle damage and residue.','Pending', 73.55, 54945.19),
(64766870,'Repairs','Radar not working and propeller issues.','Completed', 21.33, 67856.71), 
(392523180,'Repairs','Lower deck leaking, possible barnacle damage.','Completed', 31.67, 54412.31), 
(210305300,'Restoration','Steering and throttle issues. Engine damage','Completed', 24.95, 97967.84),
(309972570,'Repairs','Maintance decription 9','Completed', 286.55,	68912.84),
(975836889,'Restoration','Engine restoration and replacement','Completed', 95.53, 88287.15), 
(984765655,'Maintenance','Barnacle maintenance and engine check.','Completed', 169.31, 14066.00), 
(341302379,'Repairs','Engine repair. Owner hearing noise.','Completed', 178.47, 58325.00) 

--SET IDENTITY_INSERT Employee OFF

INSERT INTO Employee (EmployeeID, Employee_name, Employee_street, Employee_city, Employee_state,Employee_zip, Employee_phone, Employee_email, Job_type, Department)
VALUES (927616712,'Hesther Rostron','69011 Sundown Way','Carol Stream','IL','60158','3094117465','hrostron0@slate.com','Engineer I','Product Management'),
(783147585,'Riva Ianni','68 Chive Drive','Cleveland','OH','44197','2162677983','rianni1@phpbb.com','Graphic Designer','Sales'),
(137601390,'Emma Botting','40126 Oneill Lane','Pittsburgh','PA','15261','4123607081','ebotting2@1und1.de','Graphic Designer','Accounting'),
(227501135,'Julia Elliman','08 Waywood Road','Erie','PA','16550','8145871051','jelliman3@booking.com','Accounting Analyst I','Accounting'),
(470265342,'Marthe Hassewell','12157 Village Green Crossing','	Phoenix','AZ','85020','6024098275','mhassewell4@unblog.fr','Administrative','Legal'),
(986270898,'Remy Ickovicz','55 Sunnyside Lane','Jackson','MS','39296','6014960397','rickovicz5@wp.com','Food Chemist','Engineering'),
(100223383,'Koren ODeoran','36 Holy Cross Court	','Chicago','IL','60686','3124351076','kodeoran6@dailymail.co.uk','Project Manager','Human Resources'),
(795477267,'Bethany McPharlain','90698 Larry Point','Austin','TX','78726','5129749856','bmcpharlain7@google.com','Systems Engineer','Business Development'),
(806251697,'Danielle Isson','651 Mesta Terrace','Phoenix','AZ','85053','6023405119','disson8@cdc.gov','Sales Representative','Engineering'),
(153156381,'Stefanie Newland','989 1st Center','Atlanta','GA','30368','4049910446','newland9@diigo.com','Human Resources','Engineering'),
(353277361,'Tabatha Roe','2277 Grover Trail','El Paso','TX','79911','9155744996','troea@smugmug.com','VP Marketing','Legal'),
(571740441,'Lia Pyer','111 2nd Court','El Paso','TX','79955','9158852074','lpyerb@toplist.cz','Product Engineer','	Support'),
(958266321,'Klarrisa Davern','03034 Carberry Junction','Washington','DC','20535','2025398510','	kdavernc@digg.com','Web Developer I','Business Development'),
(46245400,'Vere Castellino','29 Algoma Point','Moreno Valley','CA','92555','9516831403','vcastellinod@delicious.com','Chemical Engineer','Research'),
(931143145,'Lianna Nunnery','8276 Becker Terrace','Shreveport','LA','71137','3184749240','lnunnerye@msn.com','Technical Writer','Sales')

--SET IDENTITY_INSERT Employee_Maintenance OFF
INSERT INTO Employee_Maintenance (Employee_MaintenanceID, MaintenanceID, EmployeeID)
VALUES (5123456,24636502,927616712),
(5123457,551935171,783147585),
(5123458,247314918,137601390),
(5123459,470130071,227501135),
(5123460,814017468,470265342),
(5123461,64766870,986270898),
(5123462,392523180,100223383),
(5123463,210305300,795477267),
(5123464,309972570,806251697),
(5123465,975836889,153156381),
(5123466,984765655,353277361),
(5123467,341302379,571740441),
(5123468,24636502,958266321),
(5123469,551935171,46245400),
(5123470,247314918,931143145)

--SET IDENTITY_INSERT Coupon OFF
INSERT INTO Coupon (CouponID, Coupon_description, Coupon_type, Coupon_promotion_date)
VALUES (565519516,'Buy 4 nights, get one free','indoor','2020-08-19 00:00:00'),
(565519517,'Save on an excursion for 4','outdoor','2021-03-29 00:00:00'),
(565519518,'Free dinning at lodging restrurant','indoor','2021-02-01 00:00:00'),
(565519519,'Free boat rental','outdoor','2020-08-01 00:00:00'),
(565519520,'Save 30% on dinner for two','indoor','2020-09-03 00:00:00'),
(565519521,'Save 50% on boat excursions','outdoor','2020-10-03 00:00:00'),
(565519522,'Free happy hour drinks at lodge','indoor','2020-05-22 00:00:00'),
(565519523,'Save 25% on yacht excursions','outdoor','2020-11-11 00:00:00'),
(565519524,'Free breakfast with lodging rental','indoor','2021-04-03 00:00:00'),
(565519525,'Save 50% on snorkeling excursion','outdoor','2020-05-11 00:00:00'),
(565519526,'Save 25% on snack bar','indoor','2021-03-16 00:00:00'),
(565519527,'Free bike rental','outdoor','2021-01-30 00:00:00'),
(565519528,'Save 10% on 4 nights for the month of May','indoor','2020-11-21 00:00:00'),
(565519529,'Save 50% on bike rentals for 4','outdoor','2020-09-30 00:00:00'),
(565519530,'Free parking with a 4-night stay','indoor','2021-03-18 00:00:00')


--SET IDENTITY_INSERT Client_Coupon OFF
INSERT INTO Client_Coupon (Client_CouponID, ClientID, Enrollment, CouponID)
VALUES (524858745, 14, '2020-06-11 00:00:00',565519516),
(598635017,	15, '2020-11-29 00:00:00', 565519517),
(921055599,	16,	'2021-04-22 00:00:00', 565519518),
(248409631,	17,	'2020-12-07 00:00:00', 565519519),
(693331029,	18,	'2021-01-31 00:00:00', 565519520),
(949879846,	19,	'2020-11-08 00:00:00', 565519521),
(777159153,	20,	'2020-12-29 00:00:00', 565519522),
(298980574,	21,	'2020-09-01 00:00:00', 565519523),
(564448782,	23,	'2020-09-20 00:00:00', 565519524),
(536919135,	24,	'2020-08-22 00:00:00', 565519525),
(388098896,	25,	'2021-04-26 00:00:00', 565519526),
(647954969,	26,	'2020-11-30 00:00:00', 565519527),
(620877016,	27,	'2020-07-18 00:00:00', 565519528),
(353322793,	28,	'2020-09-25 00:00:00', 565519529),
(176421723,	29,	'2021-02-14 00:00:00', 565519530)

--SET IDENTITY_INSERT Slip OFF
INSERT INTO Slip (SlipID, Slip_number, Slip_rental_fee, Slip_length_width, Slip_depth)
VALUES (474459557,	15,	698.83, 334,	338),
(525543650,	31,	271.97, 601,	171),
(305978917,	83,	554.56, 793,	561),
(549744269,	100, 320.64, 867,	541),
(921978553,	63,	397.62, 507,	655),
(169228831,	94,	131.36, 241,	844),
(382685807,	11,	581.28, 487,	633),
(857226360,	91,	126.02, 198,	490),
(203799023,	33,	661.56, 650,	919),
(545355401,	7,	181.31, 783,	752),
(998343060,	80,	281.43, 786,	259),
(747518261,	96,	752.58, 148,	437),
(765564696,	94,	324.04, 682,	176),
(51540048,	90,	819.61, 648,	609),
(289095662,	84,	792.81,	728,	900)

--SET IDENTITY_INSERT Slip_Owners OFF
INSERT INTO Slip_Owners (Owner_SlipID, ClientID, SlipID)
VALUES (88945651, 15, 474459557),
(88945652,	17,	525543650),
(88945653,	20,	305978917),
(88945654,	25,	549744269),
(88945655,	26,	921978553),
(88945656,	14,	169228831),
(88945657,	16,	382685807),
(88945658,	18,	857226360),
(88945659,	19, 203799023),
(88945660,	21,	545355401),
(88945661,  23,	998343060),
(88945662,	24,	747518261)

--SET IDENTITY_INSERT Outdoor_Adventures OFF
INSERT INTO Outdoor_Adventures (AdventureID, Adventure_name, Adventure_type, Cost_per_person)
VALUES (56879810,	'Snorkeling', 'extreme', 53.46),
(56879911,	'Bike Riding',	'normal',	18.77),
(56880012,	'ATV',	'extreme',	56.71),
(56880113,	'Kayaking',	'normal',	97.95),
(56880214,	'Jet Ski',	'extreme',	21.4),
(56880315,	'Boat Tour', 'normal',	91.48),
(56880416,	'Parasailing',	'extreme',	145.22),
(56880517,	'Golf',	'normal',	56.82),
(56880618,	'Scooter',	'normal',	22.67),
(56880719,	'Golf Cart',	'normal',	55.34),
(56880820,	'Air Ballon',	'extreme',	122.12),
(56880921,	'Tour',	'normal',	22.00),
(56881022,	'Water Ski',	'extreme',	89.37),
(56881123,	'Fishing',	'normal',	18.58),
(56881224,	'Spa',	'indoor',	89.18)

--SET IDENTITY_INSERT Tourist_Adventures OFF

INSERT INTO Tourist_Adventures (Tourist_AdventuresID, ClientID, AdventureID, Deposit)
VALUES (42358944,	31,	56879810,	680.15),
(42358945,	32,	56879911,	773.34),
(42358946,	33,	56880012,	871.90),
(42358947,	34,	56880113,	496.63),
(42358948,	35,	56880214,	495.52),
(42358949,	36,	56880315,	899.10),
(42358950,	37,	56880416,	812.70),
(42358951,	38,	56880517,	648.81),
(42358952,	39,	56880618,	766.22),
(42358953,	40,	56880719,	421.54),
(42358954,	41,	56880820,	519.51),
(42358955,	42,	56880921,	882.95),
(42358956,	43,	56881022,	931.91),
(42358957,	44,	56881123,	446.06),
(42358958,	45,	56881224,	547.20)

INSERT INTO Tourist(ClientID, First_name, Last_name)
VALUES (31,'Rocio', 'Snowden'),
(32,'Mike', 'Snowden'),
(33,'Jessica', 'Sanchez'),
(34,'Freddy', 'Sanchez'),
(35,'Peter', 'Zhang'),
(36,'Arnold', 'Adora'),
(37,'Brandon', 'Bruz'),
(38,'Fidel', 'Cruz'),
(39,'Carol', 'Rodriguez'),
(40,'Manuel', 'Rodriguez'),
(41,'Darla', 'Bruz'),
(42,'Darlene', 'Adora'),
(43,'Kate', 'Adora'),
(44,'Victoria', 'Sanchez'),
(45,'Mary', 'Cruz')

--SET IDENTITY_INSERT Offerings OFF

INSERT INTO Offerings (OfferingsID, Offerings_name, Offerings_street, Offerings_city, Offerings_state, Offerings_zip, Offerings_phone, Offerings_email, Offerings_type)
VALUES (435000094,'Siusan Pedroli','8873 Delaware Alley','Saint Louis','MO','63136','3144149414','spedroli0@google.co.uk','lodging'),
(918144833,'Alanah Meharg','7204 Anzinger Plaza','Charleston','WV','25331','3045229954','ameharg2@google.cn','lodging'),
(871172753,'Raymund Collaton','21 Dapin Circle','New York City','NY','10280','3477555585','rcollaton4@sfgate.com','lodging'),
(173539461,'Rene Kwietak','31733 High Crossing Lane','Columbus','GA','31904','7066218546','rkwietak6@senate.gov','lodging'),
(253749447,'Carlie Gostridge','066 Drewry Circle','Washington','DC','20530','2023252440','cgostridge8@yahoo.co.jp','lodging'),
(833428609,'Ermina Di Francesco','7011 Doe Crossing Way','London','KY','40745','6068947157','edia@wikipedia.org','lodging'),
(977473576,'Gan Houlahan','1219 Buhler Alley','Las Vegas','NV','89150','7023858797','ghoulahanc@liveinternet.ru','lodging'),
(130436131,'Lannie Slimming','75368 Kings Point','Sacramento','CA','95818','9163647798','lslimminge@google.ca','lodging'),
(487664494,'Petronella Lemary','63 Marquette Trail','Charleston','SC','29411','8431421387','plemary1@purevolume.com','marinas'),
(995845363,'Ethel Vreiberg','616 Rutledge Center','Shreveport','LA','71115','3188191335','evreiberg3@nsw.gov.au','marinas'),
(862804782,'Peg Vernham','13761 Karstens Center','Fairfax','VA','22036','5716927828','pvernham5@google.com','marinas'),
(991335008,'Cecil Lelievre','32 Comanche Road','San Francisco','CA','94147','4159951158','clelievre7@techcrunch.com','marinas'),
(478686037,'Kirsten Cleere','3 Mallard Circle','Lexington','KY','40596','8592238515','kcleere9@census.gov','marinas'),
(263746371,'Nickolas Pauls','76 Westridge Trail','Tulsa','OK','74156','9186469661','npaulsb@purevolume.com','marinas'),
(997376911,'Patrice Trickett','27 Melvin Park','Pensacola','FL','32575','8507657595','ptrickettd@flickr.com','marinas')

INSERT INTO Marinas (OfferingsID, EmployeeID, SlipID)
VALUES 
(487664494,927616712,474459557),
(995845363,783147585,525543650),
(862804782,137601390,305978917),
(991335008,227501135,549744269),
(478686037,470265342,921978553),
(263746371,986270898,169228831),
(997376911,100223383,382685807)		

INSERT INTO Lodging (OfferingsID, EmployeeID, Review_start_rating, Review_description, Review_date)
VALUES (435000094,	806251697,	'3', 'Service was subpar','2020-06-03 00:00:00'),
(918144833,	153156381,	'3', 'Okay lodging, very loud. Great Staff.', '2020-12-28 00:00:00'),
(871172753,	353277361,	'3', 'Great staff, poor lodging.', '2021-04-18 00:00:00'),
(173539461,	571740441,	'4', 'Great place to stay!', '2021-01-31 00:00:00'),
(253749447,	958266321,	'4', 'Amazing staff! Great lodging.', '2021-03-31 00:00:00'),
(833428609,	46245400,	'4', 'Will be back, amazing service.', '2021-02-28 00:00:00'),
(977473576,	931143145,	'4', 'From the venue to the amenities, great place to stay.', '2020-07-15 00:00:00'),
(130436131,	795477267,	'5', 'Amazing lodging, friendly staff.', '2020-11-12 00:00:00')

--SET IDENTITY_INSERT Tourist_Lodging OFF
INSERT INTO Tourist_Lodging (Tourist_LodgingID, OfferingsID, ClientID, Rental_start_night, Rental_end_night, Rental_cost_per_night, Rental_nights)
VALUES (34567810,	435000094,	31,	'2020-12-12 00:00:00','2020-12-15 00:00:00', 543.66, 4),
(34567811,	918144833,	32,	'2020-11-04 00:00:00','2020-11-08 00:00:00', 426.54, 5),
(34567812,	871172753,	34,	'2020-05-23 00:00:00','2020-05-29 00:00:00', 593.17, 7),
(34567813,	173539461,	35,	'2020-10-02 00:00:00','2020-10-02 00:00:00', 480.10, 1),
(34567814,	253749447,	37,	'2021-05-01 00:00:00','2021-05-12 00:00:00', 114.68, 11),
(34567815,	833428609,	41,	'2021-01-05 00:00:00','2021-01-06 00:00:00', 762.50, 2),
(34567816,	977473576,	44,	'2020-08-28 00:00:00','2020-08-30 00:00:00', 781.00, 3),
(34567817,	130436131,	45,	'2020-11-28 00:00:00','2020-11-29 00:00:00', 795.71, 2)






			
			
			
			
			
			
			