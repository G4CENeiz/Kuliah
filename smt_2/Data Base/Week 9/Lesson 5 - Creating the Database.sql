CREATE DATABASE data_db;
USE data_db;

CREATE TABLE tblCountryName
(
CountryID 			INT 			NOT NULL PRIMARY KEY,
CountryName 		VARCHAR(255) 	NOT NULL,
ExportCoffeeBags 	DECIMAL(11, 2) 	NULL,
ExportTeaPounds 	DECIMAL(11, 2) 	NULL
);

CREATE TABLE tblInventory
(
InventoryID	INT 				NOT NULL PRIMARY KEY AUTO_INCREMENT,
ItemID 		INT 				NOT NULL,
Caffeinated ENUM ('Yes', 'No') 	NOT NULL,
Price 		DECIMAL(11, 2) 		NOT NULL,
OnHand 		DECIMAL(11, 2) 		NOT NULL
);

CREATE TABLE tblOrder
(
OrderNo 	INT 	NOT NULL PRIMARY KEY AUTO_INCREMENT,
OrderDate 	DATE	NOT NULL,
CustomerNo 	INT 	NOT NULL,
Wholesale 	INT 	NOT NULL,
SalesRepNo 	INT 	NOT NULL
);

CREATE TABLE tblOrderLine
(
OrderId 	INT 			NOT NULL,
InventoryId INT 			NOT NULL,
Quantity 	INT 			NOT NULL,
UnitPrice 	DECIMAL(11, 2) 	NOT NULL,
Discount 	DECIMAL(5, 2)	NOT NULL
);

CREATE TABLE tblEmployeeTitle
(
TitleID INT 			NOT NULL PRIMARY KEY AUTO_INCREMENT,
Title 	VARCHAR(255) 	NOT NULL
);

CREATE TABLE tblSalesTaxRate
(
StateAbbreviation 	CHAR(2) 		NOT NULL PRIMARY KEY,
StateName 			VARCHAR(255) 	NOT NULL,
TaxRate 			DECIMAL(5, 2) 	NOT NULL,
Population 			INT 			NOT NULL,
LandArea 			DECIMAL(11, 2) 	NOT NULL
);

CREATE TABLE tblCustomer
(
CustomerID 	INT 			NOT NULL PRIMARY KEY AUTO_INCREMENT,
CompanyName VARCHAR(255) 	NOT NULL,
Contact 	VARCHAR(255) 	NOT NULL,
Address 	VARCHAR(255) 	NOT NULL,
City 		VARCHAR(255) 	NOT NULL,
State 		CHAR(2) 		NOT NULL,
ZipCode 	CHAR(5) 		NOT NULL,
PhoneNumber CHAR(14) 		NOT NULL,
FaxNumber 	CHAR(14) 		NOT NULL,
CreditLimit DECIMAL(11, 2) 	NULL
);

CREATE TABLE tblEmployee
(
EmployeeID 		INT 			NOT NULL PRIMARY KEY AUTO_INCREMENT,
FirstName 		VARCHAR(255) 	NOT NULL,
LastName 		VARCHAR(255) 	NOT NULL,
Phone 			CHAR(8) 		NOT NULL,
TitleID 		INT 			NOT NULL,
CommissionRate 	DECIMAL(5, 2) 	NOT NULL,
HireDate 		DATE 			NOT NULL,
BirthDate 		DATE 			NOT NULL,
Gender 			ENUM ('F', 'M') NOT NULL,
Notes 			TEXT 			NOT NULL
);

CREATE TABLE tblInventoryDescription
(
ItemID 			INT 				NOT NULL PRIMARY KEY,
Name 			VARCHAR(255) 		NOT NULL,
BeverageType 	CHAR(1) 			NOT NULL,
Flavored 		ENUM ('Yes', 'No') 	NOT NULL,
CountryID 		INT 				NOT NULL,
Description 	TEXT 				NOT NULL
);

ALTER TABLE tblOrderLine
	ADD FOREIGN KEY (OrderId) REFERENCES tblOrder (OrderNo);
ALTER TABLE tblOrderLine
	ADD FOREIGN KEY (InventoryId) REFERENCES tblInventory (InventoryID);
ALTER TABLE tblEmployee
	ADD FOREIGN KEY (TitleID) REFERENCES tblEmployeeTitle (TitleID);
ALTER TABLE tblInventory
	ADD FOREIGN KEY (ItemID) REFERENCES tblInventoryDescription (ItemID);
ALTER TABLE tblInventoryDescription
	ADD FOREIGN KEY (CountryID) REFERENCES tblCountryName (CountryID);

INSERT INTO tblCountryName(CountryID, CountryName, ExportCoffeeBags, ExportTeaPounds)
VALUES (0, 'n/a or unknown', NULL, NULL),
       (1, 'Afghanistan', NULL, NULL),
       (2, 'Albania', NULL, NULL),
       (3, 'Algeria', NULL, NULL),
       (4, 'American Samoa', NULL, NULL),
       (5, 'Andorra', NULL, NULL),
       (6, 'Angola', 3500000, NULL),
       (7, 'Anguilla', NULL, NULL),
       (8, 'Antarctica', NULL, NULL),
       (9, 'Antigua and Barbuda', NULL, NULL),
       (10, 'Argentina', NULL, NULL);

INSERT INTO tblOrder(OrderNo, OrderDate, CustomerNo, Wholesale, SalesRepNo)
VALUES (14606, '2000-12-10', 30473, 1, 1695),
       (14607, '2000-12-16', 30581, 1, 1528),
       (14608, '2000-12-17', 35249, 1, 1528),
       (14609, '2000-12-18', 33974, 2, 3700),
       (14610, '2000-12-19', 35201, 1, 4112),
       (14611, '2000-12-21', 32350, 2, 4029),
       (14612, '2000-12-21', 34666, 2, 4058),
       (14613, '2000-12-22', 34458, 2, 4012),
       (14614, '2000-12-22', 31932, 2, 3692),
       (14615, '2000-12-22', 30744, 2, 3700);

INSERT INTO tblEmployeeTitle(TitleID, Title)
VALUES (1, 'Sales Trainee'),
       (2, 'Sales Associate'),
       (3, 'Senior Sales Associate'),
       (4, 'Sales Manager'),
       (5, 'Senior Sales Manager'),
       (6, 'Division Sales Manager'),
       (7, 'Regional Manager'),
       (8, 'Division Manager'),
       (9, 'National Sales Manager');

INSERT INTO tblSalesTaxRate(StateAbbreviation, StateName, TaxRate, Population, LandArea)
VALUES ('AK', 'Alaska', 0.00, 524000.00, 589757.00),
       ('AL', 'Alabama', 4.00, 4102000.00, 51609.00),
       ('AR', 'Arkansas', 4.50, 2395000.00, 53104.00),
       ('AZ', 'Arizona', 5.00, 3489000.00, 113909.00),
       ('CA', 'California', 7.25, 28314000.00, 158693.00),
       ('CO', 'Colorado', 3.00, 3301000.00, 104247.00),
       ('CT', 'Connecticut', 6.00, 3233000.00, 5009.00),
       ('DE', 'Delaware', 0.00, 660000.00, 2057.00),
       ('FL', 'Florida', 6.00, 12335000.00, 58560.00),
       ('GA', 'Georgia', 4.00, 6342105.00, 58876.00),
       ('HI', 'Hawaii', 4.00, 1098000.00, 6450.00),
       ('IA', 'Iowa', 5.00, 2834000.00, 56290.00),
       ('ID', 'Idaho', 5.00, 1003000.00, 83557.00),
       ('IL', 'Illinois', 6.25, 11614000.00, 56400.00);

INSERT INTO tblCustomer(CustomerID, CompanyName, Contact, Address, City, State, ZipCode, PhoneNumber, FaxNumber,
                        CreditLimit)
VALUES (30121, 'Fairfield Communities Inc.', 'Best, F. Stanley', '2800 Cantrell Road', 'Little Rock', 'AR', '72202',
        '(501) 555-6079', '(501) 555-6111', NULL),
       (30125, 'Alamo Group Inc.', 'Maul, Duane A.', '1502 East Walnut', 'Seguin', 'TX', '78155', '(210) 555-1483',
        '(210) 555-1539', 15600),
       (30129, 'Kiwi International Air Lines Inc.', 'Rigas, Alan J.', 'Demishphere Center', 'Newark', 'NJ', '07114',
        '(201) 555-1311', '(201) 555-1395', NULL),
       (30132, 'Republic Bancorp Inc.', 'Murray, T. Peter', '1070 East Main Street', 'Owosso', 'MI', '48867',
        '(517) 555-7364', '(517) 555-7430', NULL),
       (30136, 'Browne Bottling Co.', 'Shelton, Carl E.', '411 First Avenue South', 'Oklahoma City', 'OK', '73102',
        '(405) 555-1168', '(405) 555-1228', NULL),
       (30139, 'Cavco Industries Inc.', 'Golkin, David', '422 Wards Corner Road', 'Phoenix', 'AZ', '85012',
        '(602) 555-6141', '(602) 555-6232', 41200),
       (35494, 'National Intergroup Inc.', 'Jones, Richard A.', '1220 Senlac Drive', 'Carrolton', 'TX', '75006',
        '(214) 555-4810', '(214) 555-4900', NULL);

INSERT INTO tblEmployee(EmployeeID, FirstName, LastName, Phone, TitleID, CommissionRate, HireDate, BirthDate, Gender,
                        Notes)
VALUES (1301, 'Patti', 'Stonesifer', '555-5193', 2, 5.00, '1996-07-06', '1966-03-10', 'F',
        'She has worked hard the whole career. She embodies a true type A personality. Part of the promotion \'97 team!'),
       (1364, 'Kevin', 'Pruski', '555-5645', 1, 4.00, '2000-12-01', '1979-01-26', 'M',
        'New to the organization but is showing promise. Kevin has made several new contacts.'),
       (1528, 'Luca', 'Pacioli', '555-5876', 2, 6.00, '1995-08-26', '1950-05-06', 'M',
        'Talkative and a bit slow at times. He shows great potential. However, he insists on using old fashioned methods, and I think he would be happier as an accountant!'),
       (1695, 'Ted', 'Nagasaki', '555-5021', 1, 4.00, '2000-01-28', '1977-04-10', 'M',
        'Ted can be molded into a fine salesperson if closely supervised.'),
       (2240, 'Sharon', 'Stonely', '555-5602', 3, 15.00, '1988-11-05', '1961-05-03', 'F',
        'Acting department head for a number of quarters, Sharon shows initiative and is a sure bet for making salesperson of the year!'),
       (2318, 'Helen', 'Hunter', '555-5018', 2, 8.00, '1993-11-16', '1954-01-26', 'F',
        'Witty and fun, Helen always makes her clients feel comfortable.');

INSERT INTO tblInventoryDescription(ItemID, Name, BeverageType, Flavored, CountryID, Description)
VALUES (134, 'China Yunnan', 't', 'No', 2,
        'Black tea; tea from this province in southwestern China was first exported over 1,000 years ago. Originally a source of green tea, Yunnan in recent years has developed a black tea that is lighter and more delicately flavored than some of the traditional South China Congous.'),
       (137, 'Darjeeling Namring', 't', 'No', 3,
        'Black tea; Assam, known as Darjeeling. Darjeeling is grown in the foothills of the Himalayas at elevations of 1,000 to 6,000 feet. It has a complex aroma with a clear, brisk, and penetrating flavor. Darjeeling is truly one of the finest teas in the world!'),
       (140, 'Kalgar-India', 't', 'No', 1, 'Black tea;'),
       (146, 'Mocha', 'c', 'No', 0, 'Bold, earthy, mild acidity. One of Arabia\'s oldest and best known coffees.'),
       (176, 'New Zealand Sunnyslopes', 't', 'No', 4, 'Fruit blend Tisanes;'),
       (179, 'Passionfruit Fruit Blend', 't', 'No', 0, 'Fruit blend Tisanes;'),
       (182, 'Columbia Bucaramanga Especial', 'c', 'Yes', 2,
        'Full bodied, medium acidity, nutty undertones; a soft-bean coffee with some of the character of fine Sumatran coffees.'),
       (185, 'Columbia Supremo', 'c', 'No', 2,
        'Full bodied; walnutty flavor. The top of the line for Colombian arabicas.'),
       (212, 'Pan Fired Green', 't', 'No', 0, 'Green tea;'),
       (251, 'Lemon Grass', 't', 'No', 4, 'Herbal Tisanes; cut, sifted'),
       (254, 'Chamomile Blossom', 't', 'No', 2,
        'Herbal Tisanes; whole flowers. Sweet and complex. Grown on the plains of the Nile valley. The world\'s best Chamomile!'),
       (257, 'Hibiscus', 't', 'No', 7, 'Herbal Tisanes; whole flowers'),
       (260, 'Espresso Roast', 'c', 'No', 0, 'Intense, hearty, satisfying.'),
       (263, 'Mexican Coatepec', 'c', 'No', 8,
        'It has a fine acidity, delicate body, and pleasantly mellow flavor. Fine Mexican coffees such as Coatepec now compare well with those from Central America.'),
       (266, 'Kona Extra Fancy', 'c', 'No', 6,
        'Mild, smooth, and delicately aromatic. A mellow roast. This coffee is processed using the wet method to separate the cherry from the bean. Doing so produces a bright, lively acidity. Grown on the slopes of Mauna Loa on the Kona district of the island of H'),
       (269, 'Passionfruit with Flowers', 't', 'Yes', 7, 'Natural flavored tea;');


INSERT INTO tblInventory(InventoryID, ItemID, Caffeinated, Price, OnHand)
VALUES (1101, 134, 'Yes', 8.10, 512.00),
       (1102, 137, 'No', 5.30, 3190.00),
       (1103, 140, 'No', 7.70, -130.00),
       (1104, 176, 'No', 5.30, 3380.00),
       (1105, 179, 'No', 7.60, 3300.00),
       (1106, 182, 'Yes', 7.40, 1130.00),
       (1107, 185, 'Yes', 8.80, 315.00),
       (1108, 212, 'Yes', 10.30, 443.00),
       (1109, 251, 'Yes', 8.00, 354.00),
       (1110, 254, 'No', 13.70, 354.00);

INSERT INTO tblOrderLine(OrderId, InventoryId, Quantity, UnitPrice, Discount)
VALUES (14606, 1101, 7, 8.00, 0.00),
       (14607, 1102, 16, 8.10, 5.00),
       (14608, 1103, 8, 3.80, 0.00),
       (14608, 1104, 19, 8.40, 5.00),
       (14608, 1105, 6, 5.60, 0.00),
       (14609, 1106, 18, 8.90, 5.00),
       (14609, 1107, 3, 5.30, 0.00),
       (14609, 1108, 15, 4.70, 15.00),
       (14609, 1109, 2, 5.60, 0.00),
       (14610, 1110, 17, 7.90, 5.00),
       (14610, 1103, 14, 6.40, 15.00),
       (14610, 1104, 15, 7.20, 15.00),
       (14610, 1105, 3, 5.30, 0.00),
       (14610, 1106, 18, 7.40, 5.00),
       (14611, 1108, 18, 13.70, 10.00),
       (14611, 1109, 2, 325.00, 0.00);