CREATE DATABASE Concessionaria
USE Concessionaria

CREATE TABLE Veiculos(
Chassi INT NOT NULL,
Marca VARCHAR (20) NULL,
Modelo VARCHAR (20) NULL,
Ano Fabricado DATE NULL,
Combustivel Char (1)
PRIMARY KEY (Chassi)
)
ALTER TABLE ADD
Dinheiro DECIMAL ()
Motor VARCHAR (20)
ALTER TABLE Veiculos
	DROP COLUMN Motor
CREATE INDEX Veiculo
	ON Veiculos (Marca ASC, Modelo ASC)
CREATE INDEX Ano
	On Veiculos (Ano Fabricado DESC)
DROP INDEX Veiculo
	ON Veiculos
DROP TABLE Veiculos
DROP DATABASE Concessionaria
