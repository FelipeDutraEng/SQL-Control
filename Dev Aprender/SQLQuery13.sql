/*
# SQL Aula 13 GROUP BY + DESAFIOS (INTERMEDIÁRIO)

- O GROUP BY basicamente divide o resulltado da sua pesquisa em grupos
- Para cada grupo que você aplicar uma função de agregação, por exemplo:
Calcular a soma de itens
Contar o número de itens naquele grupo

SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1
*/


SELECT *
FROM Sales.SalesOrderDetail

SELECT SpecialOfferID, SUM(UnitPrice) AS 'SOMA'
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT SpecialOfferID, UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9

-- Vamos dizer que eu quero saber quantos cada produto foi vendido até hoje
SELECT ProductID, COUNT(ProductID) AS 'Contagem'
FROM Sales.SalesOrderDetail
GROUP BY ProductID


-- Vamos dizer que eu quero saber quantos nomes de cada nome temos cadastrado em nosso banco de dados
SELECT FirstName, COUNT(FirstName) AS 'Contagem'
FROM Person.Person
GROUP BY FirstName

-- Na tabela production.product eu quero saber a média de preço para produtos que são pratas(silver)
SELECT Color, AVG(ListPrice) AS 'Média Preço'
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color


/*
DESAFIO 1 - Eu preciso saber quantas pessoas tem o mesmo MiddleName agrupadas por o MiddleName

DESAFIO 2 - Eu preciso saber em média qual é a quantidade (Quantity) que cada Produto é vendido na loja.

DESAFIO 3 - Eu quero saber quais foram as 10 vendas que no total tiveram os maiores valores de venda (line total) por produto do maior valor para o menor

DESAFIO 4 - Eu quero saber quantos produtos e qual a quantidade média de produtos temos cadastrados nas nossas ordem de serviços (WorkOrder), agrupados por ProductID
*/

-- Resolução do Desafio 1

SELECT MiddleName, COUNT(MiddleName) AS 'Qtd'
FROM Person.Person
GROUP BY MiddleName

-- Resolução do Desafio 2

SELECT ProductID, AVG(OrderQty) AS 'Média Vendas'
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Resolução do Desafio 3

SELECT TOP 10 ProductID, SUM(LineTotal) AS 'ToTal Vendas'
FROM Sales.SalesOrderDetail
GROUP BY ProductID 
ORDER BY [ToTal Vendas] desc


-- Resolução do Desafio 4
SELECT ProductID, 
COUNT(ProductID) AS 'Qtd de Produtos',
AVG(StockedQty) AS 'Qtd Média'
FROM Production.WorkOrder
GROUP BY ProductID



