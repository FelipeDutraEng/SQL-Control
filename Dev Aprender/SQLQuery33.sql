-- SQL AULA 34 NOT NULL CONSTRAINT 
/*
Nessa aula vamos aprender a criar restrições forçando com que não seja possível inserir
dados em uma tabela sem preencher a coluna marcada como NOT NULL

Syntaxe
CREATE TABLE CarteiraMotorista (
	Id INT NOT NULL,
	Nome VARCHAR(255) NOT NULL,
	Idade INT CHECK (Idade >=18)
);
*/

SELECT * FROM CarteiraMotorista

INSERT INTO CarteiraMotorista (Id,Nome, Idade)
VALUES (1,'Lucas' , 19)