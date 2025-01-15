-- SQL AULA 35 UNIQUE CONSTRAINT

/*
Nessa aula vamos aprender como ter colunas únicas, porém diferente de uma PRIMARY KEY,
pode existir várias colunas com a restrição UNIQUE

Syntaxe

CREATE TABLE CarteiraMotorista (
	Id INT NOT NULL,
	Nome VARCHAR(255) NOT NULL,
	Idade INT CHECK (Idade >=18),
	CodigoCNH INT NOT NULL UNIQUE
);

*/


ALTER TABLE CarteiraMotorista
ADD CodigoCNH INT

UPDATE CarteiraMotorista
SET CodigoCNH = 0
WHERE CodigoCNH IS NULL


CREATE TABLE CarteiraMotorista (
	Id INT NOT NULL,
	Nome VARCHAR(255) NOT NULL,
	Idade INT CHECK (Idade >=18),
	CodigoCNH INT NOT NULL UNIQUE
);

SELECT * FROM CarteiraMotorista

TRUNCATE TABLE CarteiraMotorista;


INSERT INTO CarteiraMotorista (Id, Nome, Idade, CodigoCNH)
VALUES 
(2, 'Robert', 19, 123456),
(3, 'Robert', 19, 123452)




