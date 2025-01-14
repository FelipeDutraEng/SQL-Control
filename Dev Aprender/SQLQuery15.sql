/*
# SQL AULA 15 AS + DESAFIOS (INTERMEDI�RIO)

DESAFIOS
1 - Encontrar o FisrtName eLastName person.person
2 - ProductNumber da tabela production.product "Numero do Produto"
3 - sales.SalesOrderDetail unitPrice para "Pre�o Unit�rio"

*/

-- Resolu��o do Desafio 1

SELECT TOP 10 FirstName AS Nome,
LastName AS Sobrenome
FROM Person.Person


-- Resolu��o do Desafio 2

SELECT TOP 10 ProductNumber AS 'N�mero do Produto'
FROM Production.Product


-- Resolu��o do Desafio 3

SELECT TOP 10 UnitPrice AS 'Pre�o Unit�rio'
FROM Sales.SalesOrderDetail