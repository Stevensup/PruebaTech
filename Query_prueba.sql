-- MySQL Script generated by MySQL Workbench
-- Fri Nov  4 12:35:25 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Health
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Health
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Health` DEFAULT CHARACTER SET utf8 ;
USE `Health` ;

-- -----------------------------------------------------
-- Table `Health`.`Educador_Fisico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Health`.`Educador_Fisico` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nombres` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(45) NULL,
  `Created_at` TIMESTAMP NOT NULL,
  `Update_at` TIMESTAMP NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Health`.`Tipo_Sesion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Health`.`Tipo_Sesion` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nombre_Sesion` VARCHAR(45) NULL,
  `Created_at` TIMESTAMP NULL,
  `Updated_at` TIMESTAMP NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Health`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Health`.`Cliente` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nombres` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `Correo` VARCHAR(45) NULL,
  `Edad` INT NULL,
  `Created_at` TIMESTAMP NULL,
  `Update_at` TIMESTAMP NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Health`.`Sesion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Health`.`Sesion` (
  `Id_sesiones` INT NOT NULL AUTO_INCREMENT,
  `Duracion_sesion` INT NULL,
  `Id_Cliente` INT NULL,
  `Id_sesion` INT NOT NULL,
  `Id_EducadorFisico` INT NULL,
  `Created_at` TIMESTAMP NULL,
  `Updated_at` TIMESTAMP NULL,
  PRIMARY KEY (`Id_sesiones`),
  INDEX `Id_sesion_idx` (`Id_sesion` ASC) VISIBLE,
  INDEX `Id_cliente_idx` (`Id_Cliente` ASC) VISIBLE,
  INDEX `Id_EducadorFisico_idx` (`Id_EducadorFisico` ASC) VISIBLE,
  CONSTRAINT `Id_sesion`
    FOREIGN KEY (`Id_sesion`)
    REFERENCES `Health`.`Tipo_Sesion` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Id_cliente`
    FOREIGN KEY (`Id_Cliente`)
    REFERENCES `Health`.`Cliente` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Id_EducadorFisico`
    FOREIGN KEY (`Id_EducadorFisico`)
    REFERENCES `Health`.`Educador_Fisico` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
