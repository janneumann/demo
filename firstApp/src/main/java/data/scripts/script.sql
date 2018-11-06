CREATE SCHEMA IF NOT EXISTS `wpss2018e` DEFAULT CHARACTER SET utf8 ;
USE `wpss2018e` ;

-- -----------------------------------------------------
-- Table `wpss2018e`.`addresses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wpss2018e`.`addresses` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `street` VARCHAR(45) NULL,
  `zip` VARCHAR(5) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wpss2018e`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wpss2018e`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(75) NULL,
  `FK_address_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_users_1_idx` (`FK_address_id` ASC),
  CONSTRAINT `fk_users_1`
    FOREIGN KEY (`FK_address_id`)
    REFERENCES `wpss2018e`.`addresses` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Insert users and addresses`
-- -----------------------------------------------------
insert into addresses (street,zip) values ("Rolighedsvej 34", "1234");
insert into users (username, password, FK_address_id) values ("henrietta","password123",1);
insert into users (username, password, FK_address_id) values ("carlos","password456",1);
insert into users (username, password, FK_address_id) values ("lisette","XuDD49s#ids(/(44",1);


