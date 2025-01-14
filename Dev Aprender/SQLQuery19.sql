-- SQL 19 UNION
-- O operador UNION combina dois ou mais resultados de um select em um resultado apenas.

/*
SELECT coluna1, coluna2
FROM tabela1
UNION
SELECT coluna1, coluna2
FROM tabela1

Ele uni as tabelas e remove as duplicatas.

Tem pode ser usado o UNION ALL, ele já não remove as duplicatas.
*/

SELECT [ProductID], [Name], [productNumber]
FROM Production.Product
WHERE Name like '%Chain%'
UNION
SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name like '%Decal%'
ORDER BY Name desc


SELECT  FirstName, Title, MiddleName
FROM Person.Person
WHERE Title = 'Mr.'
UNION
SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE MiddleName = 'A'


