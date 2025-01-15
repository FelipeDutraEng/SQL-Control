-- SQL AULA 36 - VIEWS

/*
Nessa aula iremos aprender como usar views, que são tabelas criadas para consulta onde você
usa outras tabelas como base para criar uma nova tabela de pesquisa com apenas dados específicos
que você precisa de uma tabela.

Syntaxe

CREATE VIEW [Pessoas Simplificado] AS
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'Ms.'


*/

CREATE VIEW [Pessoas Simplificado] AS
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'Ms.'

SELECT * FROM [Pessoas Simplificado]