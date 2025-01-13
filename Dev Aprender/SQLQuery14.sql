/*
# SQL AULA 14 HAVING + DESAFIOS (INTERMEDI�RIO)
O Having � basicamente muito usado em jun��o com o group by para filtar resultados de um agrupamento.

De uma forma mais simples eu gosto de entender ele como basicamente um where para dados agrupados.

SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING condicao;

A grande diferen�a entre HAVING e WHERE.
� que o GROUP BY � aplicado depois que os dados j� foram agrupados, enquanto o 
WHERE � aplicado antes dos dados serem agrupados.

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

-- Queremos saber quais produtos que no total de vendas est�o entre 162k a 500k

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT ProductID, sum(LineTotal) AS "TOTAL"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) between 162000 and 500000


-- Voc� quer saber quais nomes do sistema tem uma ocorrencia maior que 10 vezes,
-- porem somente onde o t�tulo � 'Mr.'


SELECT FirstName, count(FirstName) as "quantidade"
FROM person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING count(FirstName) > 10






