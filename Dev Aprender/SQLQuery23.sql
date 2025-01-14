-- SQL AULA 23 FUNÇÕES MATEMÁTICAS (AVANÇADO)

SELECT UnitPrice + LineTotal
FROM Sales.SalesOrderDetail

SELECT UnitPrice - LineTotal
FROM Sales.SalesOrderDetail

SELECT UnitPrice * LineTotal
FROM Sales.SalesOrderDetail

SELECT UnitPrice / LineTotal
FROM Sales.SalesOrderDetail

SELECT AVG(LineTotal)
FROM Sales.SalesOrderDetail

SELECT SUM(LineTotal)
FROM Sales.SalesOrderDetail

SELECT MAX(LineTotal)
FROM Sales.SalesOrderDetail

SELECT MIN(LineTotal)
FROM Sales.SalesOrderDetail

-- ROUND para realizar o arredondamento

SELECT LineTotal
FROM Sales.SalesOrderDetail

SELECT ROUND(LineTotal, 1)
FROM Sales.SalesOrderDetail

-- SQRT para obter a raiz quadrada

SELECT SQRT(LineTotal)
FROM Sales.SalesOrderDetail


