SELECT COUNT (DISTINCT Title)
FROM Person.Person

/*
-- Desafio 1
Eu quero saber quantos produtos temos cadastrados em nosso tabela de produtos.
(production.product)

-- Desafio 2
Eu quero saber quantos tamanhos de produtos temos cadastrado em nossa tabela.
(production.product)

-- Desafio 3
Eu quero saber quantos tamanhos diferentes de produtos eu tenho cadastrado em nossa tabela.
(production.product)
*/

-- Resolução do Desafio 1
SELECT COUNT(DISTINCT ProductID) AS 'Qtd. de Produtos'
FROM Production.Product

-- Resolução do Desafio 2
SELECT COUNT(Size) AS 'Qtd. de Tamanhos'
FROM Production.Product

-- Resolução do Desafio 3
SELECT COUNT(DISTINCT Size) AS 'Qtd. de Tipo de Tamanhos'
FROM Production.Product