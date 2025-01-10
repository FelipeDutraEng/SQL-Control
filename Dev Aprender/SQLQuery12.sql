/*
# SQL Aula 12 MIN MAX SUM AVG

>  Fun��es de agrega��o - Basicamente agregam ou combinam dados de uma tabela em 1 resultado s�
*/

-- SUM para Obter a soma de algum valor
SELECT TOP 10 sum (LineTotal) AS 'Soma'
FROM Sales.SalesOrderDetail

-- MIN para Obter o m�nimo de algum valor
SELECT TOP 10 MIN (LineTotal)
FROM Sales.SalesOrderDetail

-- AVG para Obter a m�dia de algum valor
SELECT TOP 10 AVG (LineTotal)
FROM Sales.SalesOrderDetail
