-- SQL AULA 22 OPERAÇÕES EM STRING (AVANÇADO)

SELECT CONCAT(FirstName,' ' ,LastName)
FROM Person.Person

SELECT UPPER(FirstName), LOWER (FirstName)
FROM Person.Person

SELECT FirstName, LEN(FirstName)
FROM Person.Person


SELECT FirstName, SUBSTRING(FirstName, 1,3)
FROM Person.Person


SELECT REPLACE(ProductNumber, '-', '#')
FROM Production.Product

//CONCAT
//LEN
//UPPER
//LOWER
//SUBSTRING
//REPLACE