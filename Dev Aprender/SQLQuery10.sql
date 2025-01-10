# SQL Aula 10 LIKE

/*
Vamos dizer que você quer encontrar uma pessoa no banco de dados que você sabe que o nome dela era ovi... alguma coisa

SELECT *
FROM person.person
WHERE FistName like 'ovi%'
*/


SELECT *
FROM person.Person
WHERE FirstName like 'ovi%'


SELECT *
FROM person.Person
WHERE FirstName like '%to'


SELECT *
FROM Person.Person
WHERE FirstName like '%essa%'

-- Com o _ ele vai procurar por apenas mais um caractere de acordo com a posição e quantidade de _

SELECT *
FROM Person.Person
WHERE FirstName like '%ro_'