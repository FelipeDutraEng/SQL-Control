/*
# SQL AULA 14 HAVING + DESAFIOS (INTERMEDIÁRIO)
O Having é basicamente muito usado em junção com o group by para filtar resultados de um agrupamento.

De uma forma mais simples eu gosto de entender ele como basicamente um where para dados agrupados.

SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING condicao;

A grande diferença entre HAVING e WHERE.
É que o GROUP BY é aplicado depois que os dados já foram agrupados, enquanto o 
WHERE é aplicado antes dos dados serem agrupados.

Vamos dizer que queremos saber quais nomes no sistema tem m ocorrencia maior que 10 vezes

SELECT FirstName, count(FirstName) as "quantidade"
FROM person.Person
GROUP BY FistName
HAVING count(FirstName) > 10



*/

SELECT *
FROM Person.Person

SELECT FirstName, count(FirstName) as "quantidade"
FROM person.Person
GROUP BY FirstName
HAVING count(FirstName) > 10

-- Queremos saber quais produtos que no total de vendas estão entre 162k a 500k

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT ProductID, sum(LineTotal) AS "TOTAL"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) between 162000 and 500000


-- Você quer saber quais nomes do sistema tem uma ocorrencia maior que 10 vezes,
-- porem somente onde o título é 'Mr.'


SELECT FirstName, count(FirstName) as "quantidade"
FROM person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING count(FirstName) > 10






