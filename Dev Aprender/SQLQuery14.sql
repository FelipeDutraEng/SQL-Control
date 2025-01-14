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

/*
DESAFIOS E SOLU��ES
1. Estamos querendo identificar as provincias(stateProvinceId) com o maior n�mero 
de cadastros no nosso sistema, ent�o � preciso encontrar quais prov�ncias(stateProvinceId) 
est�o registradas no banco de dados mais que 1000 vezes. 

2. Sendo que se trata de uma multinacional os gerentes querem saber quais produtos (productId) 
n�o est�o trazendo me m�dia no m�nimo 1 milh�o em total de vendas (lineTotal)

*/
-- Resolu��o do Desafio 1

SELECT *
FROM Person.Address

SELECT StateProvinceID, 
COUNT (StateProvinceID) AS 'Qtd'
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(AddressID) > 1000


-- Resolu��o do Desafio 2

SELECT *
FROM Sales.SalesOrderDetail


SELECT ProductID, AVG(LineTotal) AS 'M�dia Vendas'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000
