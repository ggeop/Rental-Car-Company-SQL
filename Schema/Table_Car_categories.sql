CREATE TABLE IF NOT EXISTS `mydb`.`Car_categories` (
  `Category_id` INT NOT NULL AUTO_INCREMENT,
  `Label` VARCHAR(45) NULL,
  `Description` VARCHAR(45) NULL,
  UNIQUE INDEX `Label_UNIQUE` (`Label` ASC),
  UNIQUE INDEX `Category_id_UNIQUE` (`Category_id` ASC),
  PRIMARY KEY (`Category_id`))