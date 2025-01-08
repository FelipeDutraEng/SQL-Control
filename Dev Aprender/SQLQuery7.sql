SELECT FirstName, LastName, MiddleName
FROM person.Person
ORDER BY MiddleName desc

SELECT *
FROM person.Person


/*
-- Desafio 1
Obter o ProductID dos 10 produtos mais caros cadastrados no sistema, listando do mais caro para o mais barato.

-- Desafio 2
Obter o nome e numero dos produtos que tem o ProductID entre 1~4
*/

-- Resolu��o do Desafio 1
SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice desc;

/*
-- Dicas
- Voc� ter� que usar a tabela Production.product
- Voc� ter� que usar o ORDER BY e TOP
- E para ordenar voc� ter� que usar o ORDER BY ASC ou DESC dependendo do resultado que est� buscando
*/


-- Resolu��o do Desafio 2
SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc

/*
-- Dicas
- Voc� ter� que usar a tabela Production.product
- Voc� ter� que usar o ORDER BY e TOP
- E para ordenar voc� ter� que usar o ORDER BY ASC ou DESC dependendo do resultado que est� buscando
*/
