DROP TABLE IF EXISTS `db`.`TaggedPost` ;
DROP TABLE IF EXISTS `db`.`Reward` ;
DROP TABLE IF EXISTS `db`.`Medal` ;
DROP TABLE IF EXISTS `db`.`Vote` ;
DROP TABLE IF EXISTS `db`.`Comment` ;
DROP TABLE IF EXISTS `db`.`Post` ;
DROP TABLE IF EXISTS `db`.`Category` ;
DROP TABLE IF EXISTS `db`.`User` ;
DROP TABLE IF EXISTS `db`.`Role` ;
DROP TABLE IF EXISTS `db`.`Tag` ;


CREATE TABLE IF NOT EXISTS `db`.`Role` (
  `idRole` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,

  PRIMARY KEY (`idRole`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db`.`User` (
  `idUser` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(15) NOT NULL,
  `lastName` VARCHAR(25) NOT NULL,
  `email` VARCHAR(80) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `creationDate` DATE NOT NULL,
  `enabled` BIT(1) NOT NULL,
  `RoleId` INT NOT NULL,
  
  PRIMARY KEY (`idUser`),
  FOREIGN KEY (`RoleId`) 
    REFERENCES `db`.`Role` (`idRole`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `db`.`Medal` (
  `idMedal` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`idMedal`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db`.`Tag` (
  `idTag` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTag`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `db`.`Category` (
  `idCategory` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `content` VARCHAR(100) NOT NULL,
  `enabled` BIT(1) NOT NULL,
  `creationDate` DATE NOT NULL,
  PRIMARY KEY (`idCategory`)
)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `db`.`Post` (
  `idPost` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `content` VARCHAR(500) NOT NULL,
  `enabled` BIT(1) NOT NULL,
  `creationDate` DATE NOT NULL,
  `CategoryId` INT NOT NULL,
  `PosterId` INT NOT NULL,
  PRIMARY KEY (`idPost`),
  FOREIGN KEY (`CategoryId`)
    REFERENCES `db`.`Category` (`idCategory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  FOREIGN KEY (`PosterId`)
    REFERENCES `db`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db`.`Comment` (
  `idComment` INT NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(500) NOT NULL,
  `enabled` BIT(1) NOT NULL,
  `creationDate` DATE NOT NULL,
  `PostId` INT NOT NULL,
  `CommentatorId` INT NOT NULL,
  `ComToComId` INT NULL,
  PRIMARY KEY (`idComment`),
FOREIGN KEY (`PostId`)
    REFERENCES `db`.`Post` (`idPost`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
FOREIGN KEY (`CommentatorId`)
    REFERENCES `db`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
FOREIGN KEY (`ComToComId`)
    REFERENCES `db`.`Comment` (`idComment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db`.`Vote` (
  `idVote` INT NOT NULL AUTO_INCREMENT,
  `rate` BIT(1) NOT NULL,
  `VoterId` INT NOT NULL,
  `CommentId` INT NOT NULL,
  PRIMARY KEY (`idVote`),
FOREIGN KEY (`VoterId`)
    REFERENCES `db`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
FOREIGN KEY (`CommentId`)
    REFERENCES `db`.`Comment` (`idComment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db`.`Reward` (
  `idReward` INT NOT NULL AUTO_INCREMENT,
  `RewardingUserId` INT NOT NULL,
  `MedalId` INT NOT NULL,
  `content` VARCHAR(100) NOT NULL,
  `creationDate` DATE NOT NULL,
  `PosterId` INT NOT NULL,
  PRIMARY KEY (`idReward`),
FOREIGN KEY (`RewardingUserId`)
    REFERENCES `db`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
FOREIGN KEY (`MedalId`)
    REFERENCES `db`.`Medal` (`idMedal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
FOREIGN KEY (`PosterId`)
    REFERENCES `db`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db`.`TaggedPost` (
  `idTaggedPost` INT NOT NULL AUTO_INCREMENT,
  `TagId` INT NOT NULL,
  `PostId` INT NOT NULL,
  `enabled` BIT(1) NOT NULL,
  PRIMARY KEY (`idTaggedPost`),
FOREIGN KEY (`TagId`)
    REFERENCES `db`.`Tag` (`idTag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
FOREIGN KEY (`PostId`)
    REFERENCES `db`.`Post` (`idPost`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;