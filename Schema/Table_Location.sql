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