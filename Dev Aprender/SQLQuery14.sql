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

/*
DESAFIOS E SOLUÇÕES
1. Estamos querendo identificar as provincias(stateProvinceId) com o maior número 
de cadastros no nosso sistema, então é preciso encontrar quais províncias(stateProvinceId) 
estão registradas no banco de dados mais que 1000 vezes. 

2. Sendo que se trata de uma multinacional os gerentes querem saber quais produtos (productId) 
não estão trazendo me média no mínimo 1 milhão em total de vendas (lineTotal)

*/
-- Resolução do Desafio 1

SELECT *
FROM Person.Address

SELECT StateProvinceID, 
COUNT (StateProvinceID) AS 'Qtd'
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(AddressID) > 1000


-- Resolução do Desafio 2

SELECT *
FROM Sales.SalesOrderDetail


SELECT ProductID, AVG(LineTotal) AS 'Média Vendas'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000
