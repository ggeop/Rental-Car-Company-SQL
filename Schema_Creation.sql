-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Car_categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Car_categories` (
  `Category_id` INT NOT NULL AUTO_INCREMENT,
  `Label` VARCHAR(45) NULL,
  `Description` VARCHAR(45) NULL,
  UNIQUE INDEX `Label_UNIQUE` (`Label` ASC),
  UNIQUE INDEX `Category_id_UNIQUE` (`Category_id` ASC),
  PRIMARY KEY (`Category_id`))


-- -----------------------------------------------------
-- Table `mydb`.`Location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Location` (
  `Location_id` INT NOT NULL,
  `Street` VARCHAR(45) NOT NULL,
  `Str_number` VARCHAR(45) NULL,
  `City` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `State_name` VARCHAR(45) NOT NULL,
  `State_abbrev` VARCHAR(45) NULL,
  PRIMARY KEY (`Location_id`),
  UNIQUE INDEX `Location_id_UNIQUE` (`Location_id` ASC))


-- -----------------------------------------------------
-- Table `mydb`.`Car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Car` (
  `VIN` INT NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Brand` VARCHAR(45) NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  `Description` VARCHAR(45) NULL,
  `Date_of_Purchase` DATE NOT NULL,
  `Category_id` INT NOT NULL,
  PRIMARY KEY (`VIN`),
  CONSTRAINT `Category_id`
    FOREIGN KEY (`Category_id`)
    REFERENCES `mydb`.`Car_categories` (`Category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,


-- -----------------------------------------------------
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `First_name` VARCHAR(45) NOT NULL,
  `Last_name` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL,
  `SSN` VARCHAR(45) NOT NULL,
  `Mobile` INT NULL,
  `State_name` VARCHAR(45) NULL,
  `State_addrev` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `SSN_UNIQUE` (`SSN` ASC),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC))


-- -----------------------------------------------------
-- Table `mydb`.`rent`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rent` (
  `Reservation_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `VIN` INT NOT NULL,
  `Amount` DOUBLE NOT NULL,
  `Pickup_date` DATE NOT NULL,
  `Return_date` DATE NOT NULL,
  `Location_id_from` INT NOT NULL,
  `Location_id_to` INT NOT NULL,
  `Customer_id` INT NOT NULL,
  PRIMARY KEY (`Reservation_id`),
  UNIQUE INDEX `Reservation_id_UNIQUE` (`Reservation_id` ASC),
  CONSTRAINT `Customer_id`
    FOREIGN KEY (`Customer_id`)
    REFERENCES `mydb`.`Customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `VIN`
    FOREIGN KEY (`VIN`)
    REFERENCES `mydb`.`Car` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Location_id_to`
    FOREIGN KEY (`Location_id_to`)
    REFERENCES `mydb`.`Location` (`Location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Location_id_from`
    FOREIGN KEY (`Location_id_from`)
    REFERENCES `mydb`.`Location` (`Location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

-- -----------------------------------------------------
-- Table `mydb`.`Phone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Phone` (
  `Phone_number` INT NOT NULL,
  `Location_id` INT NOT NULL,
  UNIQUE INDEX `Phone_number_UNIQUE` (`Phone_number` ASC),
  CONSTRAINT `loc_id`
    FOREIGN KEY (`Location_id`)
    REFERENCES `mydb`.`Location` (`Location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
