/* [FR] CREATE TABLES SCRIPT */

CREATE TABLE Client(
	ClientID INT UNIQUE IDENTITY(1,1) NOT NULL,
	Client_street VARCHAR(50) NOT NULL,
	Client_city VARCHAR(50) NOT NULL,
	Client_state CHAR(2) NOT NULL,
	Client_zip VARCHAR(10),
	Client_phone CHAR(10),
	Client_email VARCHAR(50),
	Client_type VARCHAR(20),
	CONSTRAINT [PK_Client] PRIMARY KEY (ClientID)
);

CREATE TABLE Coupon(
	CouponID INT IDENTITY(1,1) NOT NULL,
	Coupon_description VARCHAR(50) NOT NULL,
	Coupon_type VARCHAR(50) NULL,
	Coupon_promotion_date DATETIME,
    CONSTRAINT [PK_Coupon] PRIMARY KEY (CouponID)
);

CREATE TABLE Boat(
	BoatID INT IDENTITY(1,1) NOT NULL,
	Boat_name VARCHAR(50) NOT NULL,
	Boat_type VARCHAR(50) NULL,
	Boat_length_ft INT NULL,
	CONSTRAINT [PK_Boat] Primary Key (BoatID)
);

CREATE TABLE Slip(
	SlipID INT IDENTITY(1,1) NOT NULL,
	Slip_number INT NOT NULL,
	Slip_rental_fee DECIMAL(5,2) NOT NULL,
	Slip_length_width DECIMAL(5,2) NULL,
	Slip_depth DECIMAL(5,2) NULL,
	CONSTRAINT [PK_Slip] PRIMARY KEY (SlipID)
);

CREATE TABLE Maintenance(
	MaintenanceID INT IDENTITY(1,1) NOT NULL,
	Maintenance_type VARCHAR(50) NOT NULL,
	Maintenance_description VARCHAR(50) NULL,
	Maintenance_status VARCHAR(50) NOT NULL,
	Maintenance_hours INT NULL,
	Maintenance_cost DECIMAL(7,2) NULL,
	CONSTRAINT [PK_Maintenance] PRIMARY KEY (MaintenanceID)
);

CREATE TABLE Employee(
	EmployeeID INT IDENTITY(1,1) NOT NULL,
	Employee_name VARCHAR(50) NOT NULL,
	Employee_street VARCHAR(50) NOT NULL,
	Employee_city VARCHAR(50) NOT NULL,
	Employee_state CHAR(10) NULL,
	Employee_zip VARCHAR(10) NOT NULL,
	Employee_phone CHAR(10) NOT NULL,
	Employee_email VARCHAR(50) NULL,
	Job_type VARCHAR(20) NULL,
	Department VARCHAR(20) NULL,
	CONSTRAINT [PK_Employee] PRIMARY KEY (EmployeeID)
);


CREATE TABLE Outdoor_Adventures(
	AdventureID INT IDENTITY(1,1) NOT NULl,
	Adventure_name VARCHAR(50) NOT NULL,
	Adventure_type VARCHAR(50) NULL,
	Cost_per_person DECIMAL(5,2) NULL,
	CONSTRAINT [PK_Outdoor_Adventures] PRIMARY KEY (AdventureID)
);

CREATE TABLE Client_Coupon(
	Client_CouponID INT IDENTITY(1,1) NOT NULL,
	ClientID INT NOT NULL,
	CouponID INT NOT NULL,
	Enrollment Datetime,
	CONSTRAINT [PK_Client_Coupon] PRIMARY KEY (Client_CouponID),
	CONSTRAINT [FK_Client_Coupon_Client] FOREIGN KEY ([ClientID]) REFERENCES [Client]([ClientID]),
	CONSTRAINT [FK_Client_Coupon_Coupon] FOREIGN KEY ([CouponID]) REFERENCES [Coupon]([CouponID])
);

CREATE TABLE Tourist(
	ClientID INT  NOT NULL,
	First_name VARCHAR(50),
	Last_name VARCHAR(50),
	CONSTRAINT [PK_Tourist] PRIMARY KEY (clientID), 
	CONSTRAINT [PK_Tourist_Client] FOREIGN KEY ([ClientID]) REFERENCES [Client]([ClientID])--add
);

CREATE TABLE Tourist_Adventures(
	Tourist_AdventuresID INT IDENTITY(1,1) NOT NULL,
	ClientID INT NOT NULL,
	AdventureID INT NOT NULL,
	Deposit DECIMAL(5,2)
	CONSTRAINT [PK_Tourist_Adventures] PRIMARY KEY (Tourist_AdventuresID),
	CONSTRAINT [FK_Tourist_Adventures_Tourist] FOREIGN KEY ([ClientID]) REFERENCES [Tourist]([ClientID]),
	CONSTRAINT [FK_Tourist_Adventures_Outdoor_Adventures] FOREIGN KEY ([AdventureID]) REFERENCES [Outdoor_Adventures]([AdventureID])
);

CREATE TABLE Lodging(
	OfferingsID INT NOT NULL,
	EmployeeID INT NOT NULL,
	Review_start_rating VARCHAR(10),
	Review_description VARCHAR(255),
	Review_date DATETIME,
	CONSTRAINT [PK_Lodging] PRIMARY KEY (OfferingsID),
	CONSTRAINT [FK_Lodging_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [Employee]([EmployeeID]),
	CONSTRAINT [FK_Lodging_Offerings] FOREIGN KEY ([OfferingsID]) REFERENCES [Offerings]([OfferingsID])--modified
);

CREATE TABLE Offerings(
	OfferingsID INT IDENTITY(1,1) NOT NULL,
	Offerings_name VARCHAR(50) NOT NULL,
	Offerings_street VARCHAR(50) NOT NULL,
	Offerings_city VARCHAR(50) NULL,
	Offerings_state CHAR(2) NULL,
	Offerings_zip VARCHAR(10) NOT NULL,
	Offerings_phone CHAR(10) NOT NULL,
	Offerings_email VARCHAR(50) NULL,
	Offerings_type VARCHAR(20) NULL,
	CONSTRAINT [PK_Offerings] PRIMARY KEY (OfferingsID)
);
CREATE TABLE Tourist_Lodging(
	Tourist_LodgingID  INT IDENTITY(1,1) NOT NULL,
	OfferingsID INT NOT NULL,
	ClientID INT NOT NULL,
	Rental_start_night DATETIME NOT NULL,
	Rental_end_night DATETIME NOT NULL,
	Rental_cost_per_night DECIMAL(5,2),
	Rental_nights INT
	CONSTRAINT [PK_Tourist_Lodging] PRIMARY KEY (Tourist_LodgingID),
	CONSTRAINT [FK_Tourist_Lodging_Lodging] FOREIGN KEY ([OfferingsID]) REFERENCES [Lodging]([OfferingsID]),
	CONSTRAINT [FK_Tourist_Lodging_Tourist] FOREIGN KEY ([ClientID]) REFERENCES [Tourist]([ClientID])

);

CREATE TABLE Owners(
	ClientID INT NOT NULL,
	Owner_type VARCHAR(50) NOT NULL,
	CONSTRAINT [PK_Owners] PRIMARY KEY (ClientID),
	CONSTRAINT [FK_Owners_Client] FOREIGN KEY ([ClientID]) REFERENCES [Client]([ClientID])

);

CREATE TABLE Individual(
	ClientID INT NOT NULL,
	First_name VARCHAR(50),
	Last_name VARCHAR(50),
	CONSTRAINT [PK_Individual] PRIMARY KEY (ClientID),
	CONSTRAINT [FK_Individual_Owners] FOREIGN KEY ([ClientID]) REFERENCES [Owners]([ClientID])
);

CREATE TABLE Corporate(
	ClientID INT NOT NULL,
	Corporate_POC VARCHAR(50),
	Corporate_name VARCHAR(50),
	CONSTRAINT [PK_Corporate] PRIMARY KEY (ClientID),
	CONSTRAINT [FK_Corporate_Owners] FOREIGN KEY ([ClientID]) REFERENCES [Owners]([ClientID])
);


CREATE TABLE Boat_Owners(
	Boat_OwnerID INT IDENTITY(1,1) NOT NULL,
	ClientID INT NOT NULL,
	BoatID INT NOT NULL,
	CONSTRAINT [PK_Boat_Owners] PRIMARY KEY (Boat_OwnerID),
	CONSTRAINT [FK_Boat_Owners_Boat] FOREIGN KEY ([BoatID]) REFERENCES [Boat]([BoatID]),
	CONSTRAINT [FK_Boat_Owners_Owners] FOREIGN KEY ([ClientID]) REFERENCES [Owners]([ClientID])
);

CREATE TABLE Boat_Maintenance(
	Boat_MaintenanceID INT IDENTITY(1,1) NOT NULL,
	MaintenanceID INT NOT NULL,
	BoatID INT NOT NULL,
	Maintenance_date DATETIME NULL,
	Actual_cost DECIMAL(7,2) NULL,
	Actual_hours INT NULL,
	Discount DECIMAL(3,2) NULL,
	Next_Maintenance_date DATETIME NULL,
	CONSTRAINT [PK_Boat_Maintenance] PRIMARY KEY (Boat_MaintenanceID),
	CONSTRAINT [FK_Boat_Maintenance_Maintenance] FOREIGN KEY ([MaintenanceID]) REFERENCES [Maintenance]([MaintenanceID]),
	Constraint [FK_Boat_Maintenance_Boat] FOREIGN KEY ([BoatID]) References [Boat]([BoatID])

);

CREATE TABLE Employee_Maintenance(
	Employee_MaintenanceID INT IDENTITY(1,1) NOT NULL,
	EmployeeID INT NOT NULL,
	MaintenanceID INT NOT NULL,
	CONSTRAINT [PK_Employee_Maintenance] PRIMARY KEY (Employee_MaintenanceID),
	CONSTRAINT [FK_Employee_Maintenance_Employee] FOREIGN KEY (EmployeeID) REFERENCES [Employee]([EmployeeID]),
	CONSTRAINT [FK_Employee_Maintenance_Maintenance] FOREIGN KEY (MaintenanceID) REFERENCES Maintenance(MaintenanceID)
);

CREATE TABLE Slip_Owners(
	Owner_SlipID INT IDENTITY(1,1) NOT NULL,
	SlipID INT NOT NULL,
	ClientID INT NOT NULL,
	CONSTRAINT [PK_Slip_Owners] PRIMARY KEY (Owner_SlipID),
	CONSTRAINT [FK_Slip_Owners_Slip] FOREIGN KEY ([SlipID]) REFERENCES [Slip]([SlipID]),
	CONSTRAINT [FK_Slip_Owners_Owners] FOREIGN KEY ([ClientID]) REFERENCES  [Owners]([ClientID])
);

CREATE TABLE Marinas(
	OfferingsID INT NOT NULL,
	SlipID INT NOT NULL,
	EmployeeID INT NOT NULL,
	CONSTRAINT [PK_Marinas] Primary Key (OfferingsID),
	CONSTRAINT [FK_Marinas_Offerings] FOREIGN KEY ([OfferingsID]) REFERENCES [Offerings]([OfferingsID]), --add
	CONSTRAINT [FK_Marinas_Slip] FOREIGN KEY ([SlipID]) REFERENCES [Slip]([SlipID]),
	CONSTRAINT [FK_Marinas_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [Employee]([EmployeeID])
);
