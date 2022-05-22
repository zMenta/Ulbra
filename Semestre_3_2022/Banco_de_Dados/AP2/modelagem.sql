SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `mydb`.`Cargo` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`Person` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `birth_date` DATETIME NOT NULL,
  `Cargo_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Person_Cargo1_idx` (`Cargo_id` ASC) VISIBLE,
  CONSTRAINT `fk_Person_Cargo1`
    FOREIGN KEY (`Cargo_id`)
    REFERENCES `mydb`.`Cargo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`Team` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `cnpj` INT(11) NOT NULL,
  `Person_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  INDEX `fk_Team_Person1_idx` (`Person_id` ASC) VISIBLE,
  CONSTRAINT `fk_Team_Person1`
    FOREIGN KEY (`Person_id`)
    REFERENCES `mydb`.`Person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`Sponsorship` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`Team_has_Sponsorship` (
  `Team_id` INT(11) NOT NULL,
  `Sponsorship_id` INT(11) NOT NULL,
  PRIMARY KEY (`Team_id`, `Sponsorship_id`),
  INDEX `fk_Team_has_Sponsorship_Sponsorship1_idx` (`Sponsorship_id` ASC) VISIBLE,
  INDEX `fk_Team_has_Sponsorship_Team1_idx` (`Team_id` ASC) VISIBLE,
  CONSTRAINT `fk_Team_has_Sponsorship_Team1`
    FOREIGN KEY (`Team_id`)
    REFERENCES `mydb`.`Team` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Team_has_Sponsorship_Sponsorship1`
    FOREIGN KEY (`Sponsorship_id`)
    REFERENCES `mydb`.`Sponsorship` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`Race` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `Tracks_idTracks` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Race_Tracks1_idx` (`Tracks_idTracks` ASC) VISIBLE,
  CONSTRAINT `fk_Race_Tracks1`
    FOREIGN KEY (`Tracks_idTracks`)
    REFERENCES `mydb`.`Tracks` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`Race_has_Team` (
  `Race_id` INT(11) NOT NULL,
  `Team_id` INT(11) NOT NULL,
  PRIMARY KEY (`Race_id`, `Team_id`),
  INDEX `fk_Race_has_Team_Team1_idx` (`Team_id` ASC) VISIBLE,
  INDEX `fk_Race_has_Team_Race1_idx` (`Race_id` ASC) VISIBLE,
  CONSTRAINT `fk_Race_has_Team_Race1`
    FOREIGN KEY (`Race_id`)
    REFERENCES `mydb`.`Race` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Race_has_Team_Team1`
    FOREIGN KEY (`Team_id`)
    REFERENCES `mydb`.`Team` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`Tracks` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `length_km` FLOAT(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`address` (
  `id` INT(11) NOT NULL,
  `street_name` VARCHAR(45) NOT NULL,
  `number` INT(11) NOT NULL,
  `city_name` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NULL DEFAULT NULL,
  `Tracks_idTracks` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_address_Tracks1_idx` (`Tracks_idTracks` ASC) VISIBLE,
  CONSTRAINT `fk_address_Tracks1`
    FOREIGN KEY (`Tracks_idTracks`)
    REFERENCES `mydb`.`Tracks` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`Team_has_Person` (
  `Team_id` INT(11) NOT NULL,
  `Person_id` INT(11) NOT NULL,
  PRIMARY KEY (`Team_id`, `Person_id`),
  INDEX `fk_Team_has_Person_Person1_idx` (`Person_id` ASC) VISIBLE,
  INDEX `fk_Team_has_Person_Team1_idx` (`Team_id` ASC) VISIBLE,
  CONSTRAINT `fk_Team_has_Person_Team1`
    FOREIGN KEY (`Team_id`)
    REFERENCES `mydb`.`Team` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Team_has_Person_Person1`
    FOREIGN KEY (`Person_id`)
    REFERENCES `mydb`.`Person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`Race_has_Tracks` (
  `Race_id` INT(11) NOT NULL,
  `Tracks_id` INT(11) NOT NULL,
  `Tracks_address_id` INT(11) NOT NULL,
  PRIMARY KEY (`Race_id`, `Tracks_id`, `Tracks_address_id`),
  INDEX `fk_Race_has_Tracks_Tracks1_idx` (`Tracks_id` ASC, `Tracks_address_id` ASC) VISIBLE,
  INDEX `fk_Race_has_Tracks_Race1_idx` (`Race_id` ASC) VISIBLE,
  CONSTRAINT `fk_Race_has_Tracks_Race1`
    FOREIGN KEY (`Race_id`)
    REFERENCES `mydb`.`Race` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Race_has_Tracks_Tracks1`
    FOREIGN KEY (`Tracks_id` , `Tracks_address_id`)
    REFERENCES `mydb`.`Tracks` (`id` , `address_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
