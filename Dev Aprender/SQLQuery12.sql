/*
# SQL Aula 12 MIN MAX SUM AVG

>  Funções de agregação - Basicamente agregam ou combinam dados de uma tabela em 1 resultado só
*/

-- SUM para Obter a soma de algum valor
SELECT TOP 10 sum (LineTotal) AS 'Soma'
FROM Sales.SalesOrderDetail

-- MIN para Obter o mínimo de algum valor
SELECT TOP 10 MIN (LineTotal)
FROM Sales.SalesOrderDetail

-- AVG para Obter a média de algum valor
SELECT TOP 10 AVG (LineTotal)
FROM Sales.SalesOrderDetail
