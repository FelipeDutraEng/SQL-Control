/*
# SQL AULA 15 AS + DESAFIOS (INTERMEDIÁRIO)

DESAFIOS
1 - Encontrar o FisrtName eLastName person.person
2 - ProductNumber da tabela production.product "Numero do Produto"
3 - sales.SalesOrderDetail unitPrice para "Preço Unitário"

*/

-- Resolução do Desafio 1

SELECT TOP 10 FirstName AS Nome,
LastName AS Sobrenome
FROM Person.Person


-- Resolução do Desafio 2

SELECT TOP 10 ProductNumber AS 'Número do Produto'
FROM Production.Product


-- Resolução do Desafio 3

SELECT TOP 10 UnitPrice AS 'Preço Unitário'
FROM Sales.SalesOrderDetail