CREATE TABLE `Bus` (
  `Id` INT PRIMARY KEY NOT NULL,
  `RegistrationNumber` CHAR(20) NOT NULL,
  `TypeId` INT NOT NULL
);

CREATE TABLE `BusType` (
  `Id` INT PRIMARY KEY NOT NULL,
  `Size` INT NOT NULL,
  `Variant` ENUM ('single', 'double') DEFAULT "single"
);

CREATE TABLE `BusRoute` (
  `Id` INT PRIMARY KEY NOT NULL,
  `BusId` INT NOT NULL,
  `RouteNumber` INT NOT NULL
);

CREATE TABLE `Route` (
  `RouteNumber` INT PRIMARY KEY NOT NULL
);

CREATE TABLE `RouteStage` (
  `Id` INT PRIMARY KEY NOT NULL,
  `RouteId` INT NOT NULL,
  `StageId` INT NOT NULL
);

CREATE TABLE `Stage` (
  `StageId` INT PRIMARY KEY NOT NULL
);

CREATE TABLE `StageTown` (
  `Id` INT PRIMARY KEY NOT NULL,
  `StageId` INT NOT NULL,
  `TownId` INT NOT NULL
);

CREATE TABLE `Town` (
  `Id` INT PRIMARY KEY NOT NULL,
  `Name` VARCHAR(255) NOT NULL
);

CREATE TABLE `Driver` (
  `Id` INT PRIMARY KEY NOT NULL,
  `Name` VARCHAR(255) NOT NULL,
  `Address` VARCHAR(255) NOT NULL,
  `EmployeeNumber` VARCHAR(15) NOT NULL,
  `TelephoneNumber` VARCHAR(13) NOT NULL,
  `StageId` INT NOT NULL
);

ALTER TABLE `Bus` ADD FOREIGN KEY (`Id`) REFERENCES `BusType` (`Id`);

ALTER TABLE `Bus` ADD FOREIGN KEY (`Id`) REFERENCES `BusRoute` (`Id`);

ALTER TABLE `Route` ADD FOREIGN KEY (`RouteNumber`) REFERENCES `BusRoute` (`Id`);

ALTER TABLE `Route` ADD FOREIGN KEY (`RouteNumber`) REFERENCES `RouteStage` (`Id`);

ALTER TABLE `Stage` ADD FOREIGN KEY (`StageId`) REFERENCES `RouteStage` (`Id`);

ALTER TABLE `Stage` ADD FOREIGN KEY (`StageId`) REFERENCES `StageTown` (`Id`);

ALTER TABLE `Driver` ADD FOREIGN KEY (`Id`) REFERENCES `Stage` (`StageId`);

ALTER TABLE `Town` ADD FOREIGN KEY (`Id`) REFERENCES `StageTown` (`Id`);
