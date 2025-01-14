-- SQL AULA 16 INNER JOIN + DESAFIOS (INTERMEDIÁRIO)
/*
Existem 3 tipo gerais de JOIN:
- INNER JOIN, OUTER JOIN e SELF-JOIN


*/

-- Vamos dizer que nos queremos os nomes dos produtos e as informações de suas subcategorias e preços.
-- Preço (ListPrice), Nome do Produto, Nome da Subcategoria


SELECT TOP 10 *
FROM Production.Product

SELECT TOP 10 *
FROM Production.ProductSubcategory

SELECT pr.ListPrice, pr.Name, pc.Name
FROM Production.Product PR
INNER JOIN Production.ProductSubcategory PC ON PC.ProductSubcategoryID = pr.ProductSubcategoryID

-- Juntando 2 tabelas 

SELECT TOP 10 *
FROM Person.BusinessEntityAddress

SELECT TOP 10 *
FROM Person.Address

SELECT TOP 10 *
FROM Person.BusinessEntityAddress BA
INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID



-- Novo DESAFIO
-- BusinessEntlyID, Name, PhoneNumberTypeID, PhoneNumber

SELECT TOP 10 *
FROM Person.PhoneNumberType

SELECT TOP 10 *
FROM Person.PersonPhone

SELECT pp.BusinessEntityID, pn.Name, pn.PhoneNumberTypeID, pp.PhoneNumber
FROM Person.PersonPhone PP
INNER JOIN Person.PhoneNumberType PN ON PP.PhoneNumberTypeID = PN.PhoneNumberTypeID

-- Novo DESAFIO
-- AddressID, City, StateProvinceId, Nome do Estado

SELECT TOP 10 *
FROM person.StateProvince

SELECT TOP 10 *
FROM Person.Address

SELECT TOP 10 PA.AddressID, PA.City, ps.StateProvinceID, ps.Name
FROM Person.Address PA
INNER JOIN Person.StateProvince PS ON PS.StateProvinceID = PA.StateProvinceID