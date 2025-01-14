-- SQL AULA 21 DATEPART + DESAFIOS (AVAN�ADO)


SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS M�s
FROM Sales.SalesOrderHeader


SELECT AVG(TotalDue) M�dia, DATEPART(DAY, OrderDate) as Dia
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(DAY,OrderDate)
ORDER BY Dia

SELECT AVG(TotalDue) M�dia, DATEPART(MONTH, OrderDate) as M�s
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH,OrderDate)
ORDER BY M�s 

SELECT AVG(TotalDue) M�dia, DATEPART(YEAR, OrderDate) as Ano
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR,OrderDate)
ORDER BY Ano 

 