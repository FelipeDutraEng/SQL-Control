-- SQL AULA 36 - VIEWS

/*
Nessa aula iremos aprender como usar views, que s�o tabelas criadas para consulta onde voc�
usa outras tabelas como base para criar uma nova tabela de pesquisa com apenas dados espec�ficos
que voc� precisa de uma tabela.

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