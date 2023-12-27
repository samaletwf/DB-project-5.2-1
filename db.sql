— MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

— —-------------------------------------------------—
— Schema DBproject
— —-------------------------------------------------—

— —-------------------------------------------------—
— Schema DBproject
— —-------------------------------------------------—
CREATE SCHEMA IF NOT EXISTS `DBproject` DEFAULT CHARACTER SET utf8 ;
USE `DBproject` ;

— —-------------------------------------------------—
— Table `DBproject`.`water_level_turbidity_high1`
— —-------------------------------------------------—
CREATE TABLE IF NOT EXISTS `DBproject`.`water_level_turbidity_high1` (
`id` INT NOT NULL,
`ir_value` FLOAT NOT NULL,
`ir_strength` FLOAT NOT NULL,
`us_value` FLOAT NOT NULL,
`acc_x` FLOAT NOT NULL,
`acc_y` FLOAT NULL,
`acc_z` FLOAT NOT NULL,
`gyr_acc_x` FLOAT NULL,
`gyr_acc_y` FLOAT NOT NULL,
`gyr_acc_z` FLOAT NOT NULL,
`gyr_x` FLOAT NOT NULL,
`gyr_y` FLOAT NOT NULL,
`gyr_z` FLOAT NOT NULL,
`angle` FLOAT NULL,
`water_level` FLOAT NOT NULL,
PRIMARY KEY (`id`))
ENGINE = InnoDB;


— —-------------------------------------------------—
— Table `DBproject`.`water_level_turbidity_medium1`
— —-------------------------------------------------—
CREATE TABLE IF NOT EXISTS `DBproject`.`water_level_turbidity_medium1` (
`id` INT NOT NULL,
`ir_value` FLOAT NOT NULL,
`ir_strength` FLOAT NOT NULL,
`us_value` FLOAT NOT NULL,
`acc_x` FLOAT NOT NULL,
`acc_y` FLOAT NULL,
`acc_z` FLOAT NOT NULL,
`gyr_acc_x` FLOAT NULL,
`gyr_acc_y` FLOAT NOT NULL,
`gyr_acc_z` FLOAT NOT NULL,
`gyr_x` FLOAT NOT NULL,
`gyr_y` FLOAT NOT NULL,
`gyr_z` FLOAT NOT NULL,
`angle` FLOAT NULL,
`water_level` FLOAT NOT NULL,
PRIMARY KEY (`id`))
ENGINE = InnoDB;


— —-------------------------------------------------—
— Table `DBproject`.`water_level_turbidity_low1`
— —-------------------------------------------------—
CREATE TABLE IF NOT EXISTS `DBproject`.`water_level_turbidity_low1` (
`id` INT NOT NULL,
`ir_value` FLOAT NULL,
`ir_strength` FLOAT NULL,
`us_value` FLOAT NULL,
`acc_x` FLOAT NULL,
`acc_y` FLOAT NULL,
`acc_z` FLOAT NULL,
`gyr_acc_x` FLOAT NULL,
`gyr_acc_y` FLOAT NULL,
`gyr_acc_z` FLOAT NULL,
`gyr_x` FLOAT NULL,
`gyr_y` FLOAT NULL,
`gyr_z` FLOAT NULL,
`angle` FLOAT NULL,
`water_level` FLOAT NULL,
PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS; 