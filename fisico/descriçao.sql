-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cervejaria
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cervejaria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cervejaria` DEFAULT CHARACTER SET utf8 ;
USE `cervejaria` ;

-- -----------------------------------------------------
-- Table `cervejaria`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cervejaria`.`pais` (
  `idPais` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cervejaria`.`fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cervejaria`.`fornecedor` (
  `idFornecedor` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `idPais` INT NOT NULL,
  PRIMARY KEY (`idFornecedor`),
  INDEX `fk_fornecedor_pais1_idx` (`idPais` ASC) VISIBLE,
  CONSTRAINT `fk_fornecedor_pais1`
    FOREIGN KEY (`idPais`)
    REFERENCES `cervejaria`.`pais` (`idPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cervejaria`.`cerveja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cervejaria`.`cerveja` (
  `idCerveja` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `teorAlcool` FLOAT NOT NULL,
  `tamanho` INT NOT NULL,
  `preco` DECIMAL(10,2) NOT NULL,
  `idFornecedor` INT NOT NULL,
  PRIMARY KEY (`idCerveja`),
  INDEX `fk_cerveja_Fornecedor1_idx` (`idFornecedor` ASC) VISIBLE,
  CONSTRAINT `fk_cerveja_Fornecedor1`
    FOREIGN KEY (`idFornecedor`)
    REFERENCES `cervejaria`.`fornecedor` (`idFornecedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cervejaria`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cervejaria`.`funcionario` (
  `idFuncionario` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `funcao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idFuncionario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cervejaria`.`venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cervejaria`.`venda` (
  `idVenda` INT NOT NULL,
  `tipoPagamento` VARCHAR(45) NOT NULL,
  `valor` DECIMAL(10,2) NOT NULL,
  `data` DATE NOT NULL,
  `idFuncionario` INT NOT NULL,
  PRIMARY KEY (`idVenda`),
  INDEX `fk_Venda_Funcionário1_idx` (`idFuncionario` ASC) VISIBLE,
  CONSTRAINT `fk_Venda_Funcionário1`
    FOREIGN KEY (`idFuncionario`)
    REFERENCES `cervejaria`.`funcionario` (`idFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cervejaria`.`cervejaVenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cervejaria`.`cervejaVenda` (
  `idVenda` INT NOT NULL,
  `idCerveja` INT NOT NULL,
  `valor` DECIMAL(10,2) NOT NULL,
  `preco` DECIMAL(10,2) NOT NULL,
  `quantidade` INT NOT NULL,
  INDEX `fk_Cerveja_Venda_Venda1_idx` (`idVenda` ASC) VISIBLE,
  INDEX `fk_Cerveja_Venda_Cerveja1_idx` (`idCerveja` ASC) VISIBLE,
  PRIMARY KEY (`idVenda`, `idCerveja`),
  CONSTRAINT `fk_Cerveja_Venda_Venda1`
    FOREIGN KEY (`idVenda`)
    REFERENCES `cervejaria`.`venda` (`idVenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cerveja_Venda_Cerveja1`
    FOREIGN KEY (`idCerveja`)
    REFERENCES `cervejaria`.`cerveja` (`idCerveja`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
