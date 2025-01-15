-- SQL AULA 33 CHECK CONSTRAINT + DESAFIO

/*
Nessa aula vamos aprender a criar restrições de valores que podem ser inseridos 
em uma coluna de uma tabela em banco de dados quando você está criando uma tabela nova.

Syntaxe

CREATE TABLE CarteiraMotorista (
	Id INT NOT NULL,
	Nome VARCHAR(255) NOT NULL,
	Idade INT CHECK (Idade >= 18)
);

*/

CREATE TABLE CarteiraMotorista (
	Id INT PRIMARY KEY,
	Nome VARCHAR(255) NOT NULL,
	Idade INT CHECK (Idade >=18)
);

SELECT * FROM CarteiraMotorista

-- ERRO POR RESTRIÇÃO
INSERT INTO CarteiraMotorista (Id,Nome,Idade)
VALUES (1, 'Felipe', 16)


