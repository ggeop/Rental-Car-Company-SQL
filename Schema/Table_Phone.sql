CREATE TABLE IF NOT EXISTS `mydb`.`Phone` (
  `Phone_number` INT NOT NULL,
  `Location_id` INT NOT NULL,
  UNIQUE INDEX `Phone_number_UNIQUE` (`Phone_number` ASC),
  CONSTRAINT `loc_id`
    FOREIGN KEY (`Location_id`)
    REFERENCES `mydb`.`Location` (`Location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)