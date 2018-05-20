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