-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mtclimbdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mtclimbdb` ;

-- -----------------------------------------------------
-- Schema mtclimbdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mtclimbdb` DEFAULT CHARACTER SET utf8 ;
USE `mtclimbdb` ;

-- -----------------------------------------------------
-- Table `mountain_climbed`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mountain_climbed` ;

CREATE TABLE IF NOT EXISTS `mountain_climbed` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `mountain_name` VARCHAR(45) NULL,
  `elevation` INT NOT NULL,
  `first_summit` DATETIME NULL,
  `my_summit` DATETIME NULL,
  `location` VARCHAR(45) NULL,
  `deaths_upon` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS user1;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'user1';

SET SQL_MODE = '';
DROP USER IF EXISTS mtman@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'mtman'@'localhost' IDENTIFIED BY 'mtman';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'mtman'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mountain_climbed`
-- -----------------------------------------------------
START TRANSACTION;
USE `mtclimbdb`;
INSERT INTO `mountain_climbed` (`id`, `mountain_name`, `elevation`, `first_summit`, `my_summit`, `location`, `deaths_upon`) VALUES (1, 'Mount Rainier', 14410, '1870-08-17', '2006-07-09', '46°51′6″N 121°45′37″W', 400);
INSERT INTO `mountain_climbed` (`id`, `mountain_name`, `elevation`, `first_summit`, `my_summit`, `location`, `deaths_upon`) VALUES (2, 'Mount Harvard', 14421, '1869-08-19', '2019-08-15', '38°55′28″N 106°19′15″W', 3);
INSERT INTO `mountain_climbed` (`id`, `mountain_name`, `elevation`, `first_summit`, `my_summit`, `location`, `deaths_upon`) VALUES (3, 'Huron Peak', 14012, '1900-01-01', '2023-07-02', '39°14′18″N 105°29′52″W', 2);
INSERT INTO `mountain_climbed` (`id`, `mountain_name`, `elevation`, `first_summit`, `my_summit`, `location`, `deaths_upon`) VALUES (4, 'Bison Peak', 12432, '1900-01-01', '2019-09-14', '39°14′18″N 105°29′52″W', 0);
INSERT INTO `mountain_climbed` (`id`, `mountain_name`, `elevation`, `first_summit`, `my_summit`, `location`, `deaths_upon`) VALUES (5, 'Mount Marcy', 5343, '1837-08-05', '2014-05-30', '44°06′46″N 73°55′25″W', 0);
INSERT INTO `mountain_climbed` (`id`, `mountain_name`, `elevation`, `first_summit`, `my_summit`, `location`, `deaths_upon`) VALUES (6, 'Eagle Mountain', 2301, '1900-01-01', '2015-08-27', '47°53′51″N 90°33′36″W', 0);

COMMIT;

