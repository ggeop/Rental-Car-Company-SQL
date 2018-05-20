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