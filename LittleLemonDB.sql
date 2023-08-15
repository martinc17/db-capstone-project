-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LittleLemonDM
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `LittleLemonDM` ;

-- -----------------------------------------------------
-- Schema LittleLemonDM
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LittleLemonDM` DEFAULT CHARACTER SET utf8 ;
USE `LittleLemonDM` ;

-- -----------------------------------------------------
-- Table `LittleLemonDM`.`Customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDM`.`Customers` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDM`.`Customers` (
  `pkCustomerID` INT NOT NULL,
  `Fullname` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `PhoneNumber` VARCHAR(45) NULL,
  PRIMARY KEY (`pkCustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDM`.`Menus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDM`.`Menus` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDM`.`Menus` (
  `pkMenuID` INT NOT NULL,
  `MenuName` VARCHAR(150) NULL,
  `Cuisine` VARCHAR(45) NULL,
  PRIMARY KEY (`pkMenuID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDM`.`Orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDM`.`Orders` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDM`.`Orders` (
  `pkOrderID` INT NOT NULL,
  `fkCustomerID` INT NULL,
  `Cost` DECIMAL NULL,
  `fkMenuID` INT NULL,
  PRIMARY KEY (`pkOrderID`),
  INDEX `FK_Orders_Customers_idx` (`fkCustomerID` ASC) VISIBLE,
  INDEX `FK_Orders_Menus_idx` (`fkMenuID` ASC) VISIBLE,
  CONSTRAINT `FK_Orders_Customers`
    FOREIGN KEY (`fkCustomerID`)
    REFERENCES `LittleLemonDM`.`Customers` (`pkCustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Orders_Menus`
    FOREIGN KEY (`fkMenuID`)
    REFERENCES `LittleLemonDM`.`Menus` (`pkMenuID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDM`.`Staff`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDM`.`Staff` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDM`.`Staff` (
  `pkStaffID` INT NOT NULL,
  `Name` VARCHAR(245) NULL,
  `Role` VARCHAR(150) NULL,
  `Salary` DECIMAL NULL,
  `PhoneNumber` VARCHAR(45) NULL,
  PRIMARY KEY (`pkStaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDM`.`Bookings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDM`.`Bookings` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDM`.`Bookings` (
  `pkBookingID` INT NOT NULL,
  `BookingDate` DATE NULL,
  `BookingTime` TIME NULL,
  `TableNumber` INT NULL,
  `NumberOfGuests` INT NULL,
  `fkCustomerID` INT NULL,
  `fkStaffID` INT NULL,
  PRIMARY KEY (`pkBookingID`),
  INDEX `FK_Bookings_Customers_idx` (`fkCustomerID` ASC) VISIBLE,
  INDEX `FK_Booking_Staff_idx` (`fkStaffID` ASC) VISIBLE,
  CONSTRAINT `FK_Bookings_Customers`
    FOREIGN KEY (`fkCustomerID`)
    REFERENCES `LittleLemonDM`.`Customers` (`pkCustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Booking_Staff`
    FOREIGN KEY (`fkStaffID`)
    REFERENCES `LittleLemonDM`.`Staff` (`pkStaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDM`.`MenuItems`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDM`.`MenuItems` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDM`.`MenuItems` (
  `pkItemID` INT NOT NULL,
  `Name` VARCHAR(200) NULL,
  `Type` VARCHAR(10) NULL,
  `Price` DECIMAL NULL,
  `fkMenuID` INT NULL,
  PRIMARY KEY (`pkItemID`),
  INDEX `FK_MenuItems_Menu_idx` (`fkMenuID` ASC) VISIBLE,
  CONSTRAINT `FK_MenuItems_Menus`
    FOREIGN KEY (`fkMenuID`)
    REFERENCES `LittleLemonDM`.`Menus` (`pkMenuID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDM`.`DeliveryStatus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LittleLemonDM`.`DeliveryStatus` ;

CREATE TABLE IF NOT EXISTS `LittleLemonDM`.`DeliveryStatus` (
  `pkDeliveryID` INT NOT NULL,
  `DeliveryStatuscol` VARCHAR(45) NULL,
  `DeliveyDate` DATE NULL,
  `DeliveryTime` TIME NULL,
  `fkOrderID` INT NULL,
  `Status` VARCHAR(45) NULL,
  `fkStaffID` INT NULL,
  PRIMARY KEY (`pkDeliveryID`),
  INDEX `FK_Delivery_Orders_idx` (`fkOrderID` ASC) VISIBLE,
  INDEX `FK_Delivery_Staff_idx` (`fkStaffID` ASC) VISIBLE,
  CONSTRAINT `FK_Delivery_Orders`
    FOREIGN KEY (`fkOrderID`)
    REFERENCES `LittleLemonDM`.`Orders` (`pkOrderID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Delivery_Staff`
    FOREIGN KEY (`fkStaffID`)
    REFERENCES `LittleLemonDM`.`Staff` (`pkStaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
