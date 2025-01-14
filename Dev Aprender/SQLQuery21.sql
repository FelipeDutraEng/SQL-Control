-- SQL AULA 21 DATEPART + DESAFIOS (AVANÇADO)


SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS Mês
FROM Sales.SalesOrderHeader


SELECT AVG(TotalDue) Média, DATEPART(DAY, OrderDate) as Dia
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(DAY,OrderDate)
ORDER BY Dia

SELECT AVG(TotalDue) Média, DATEPART(MONTH, OrderDate) as Mês
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH,OrderDate)
ORDER BY Mês 

SELECT AVG(TotalDue) Média, DATEPART(YEAR, OrderDate) as Ano
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR,OrderDate)
ORDER BY Ano 

 