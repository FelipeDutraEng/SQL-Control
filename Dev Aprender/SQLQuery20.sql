-- SQL AULA 20 SUBQUERY (SUBSELECT) (AVAN�ADO)

-- Monte um relat�rio para mim de todos os produtos cadastrados que tem pre�o de venda
-- acima da m�dia.


--SELECT AVG(ListPrice)
--FROM Production.Product

--SELECT *
--FROM Production.Product
--WHERE ListPrice > 438.66


SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)

-- Eu quero saber o nome dos meus funcion�rios que tem o cargo de 'Design Engineer'

SELECT *
FROM Person.Person

SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer'

SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID FROM HumanResources.Employee 
WHERE JobTitle = 'Design Engineer')


-- Mesmo SELECT com um JOIN

SELECT p.FirstName
FROM Person.Person P
INNER JOIN HumanResources.Employee E ON p.BusinessEntityID = e.BusinessEntityID
AND e.JobTitle = 'Design Engineer'


--- DESAFIO ---
-- Encontre para mim todos os endere�os que est�o no estado de 'Alberta', pode 
--trazer todas as informa��es
-- Usar person.address e Person.stateProvince

SELECT *
FROM Person.Address

SELECT *
FROM Person.StateProvince


SELECT *
FROM Person.Address
WHERE StateProvinceID IN (
SELECT StateProvinceID
FROM Person.StateProvince
WHERE Name = 'Alberta')
