-- LEFT OUTER JOIN
-- LEFT JOIN

-- Quero descobrir quais pessoas tem um cartão de credito registrado.

SELECT *
FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard PC
ON pp.BusinessEntityID = pc.BusinessEntityID
-- INNER JOIN: 19118

SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON pp.BusinessEntityID = pc.BusinessEntityID
-- LEFT JOIN: 19972

SELECT 19972 - 19118

SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON pp.BusinessEntityID = pc.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL
-- IS NULL: 854