/*
# SQL Aula 11 Desafio Fundamentos SQL (FUNDAMENTOS)

1 - Quantos produtos temos cadastrado no sistema que custam mais que 1500 dolares?   

2 - Quantas pessoas temos com o sobrenome que inicia com a letra P?

3 - Em quantas cidades únicas estão cadastrados nossos clientes? 

4 - Quais são as cidades únicas que temos cadastradas em nosso sistema?

5 - Quantos produtos vermelhos tem o preço entre 500 a 1000 dolares?

6 - Quantos produtos cadastrados tem a palavra 'road' no nome deles?
*/


-- Resolução do Desafio 1
SELECT COUNT(ListPrice) as 'Qtd Produtos + 1500'
FROM Production.Product
WHERE ListPrice > 1500;


-- Resolução do Desafio 2
SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName Like 'P%' ;


-- Resolução do Desafio 3
SELECT COUNT(DISTINCT City)
FROM Person.Address;


-- Resolução do Desafio 4
SELECT DISTINCT City
FROM Person.Address;


-- Resolução do Desafio 5
SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'Red'
AND ListPrice BETWEEN 500 and 1000;


-- Resolução do Desafio 6
SELECT COUNT(*)
FROM Production.Product
WHERE Name like '%road%'