SELECT *
FROM Production.Product
WHERE ListPrice not between 1000 and 1500

SELECT *
FROM HumanResources.Employee
WHERE HireDate between '2009/01/01' and '2010/01/01'
ORDER BY HireDate 