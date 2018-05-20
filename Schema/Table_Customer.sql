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