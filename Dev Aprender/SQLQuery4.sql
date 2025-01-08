/*
OPERADOR  -  DESCRIÇÃO
=            IGUAL
>            MAIOR QUE
<            MENOR QUE
>=           MAIOR QUE OU IGUAL
<=           MENOR QUE OU IGUAL
<>           DIFERENTE DE
AND          OPERADOR LÓGICO E
OR           OPERADOR LÓGICO OU
*/

SELECT *
FROM Person.Person
WHERE LastName = 'miller' and FirstName = 'anna';

SELECT *
FROM Production.Product
WHERE Color <> 'red';

/*
-- Desafio da Aula!

-- Desafio 1
A equpe de produção de produtos precisa do nome de todas as peças que pesam mais de 500kg mas não mais que 700kg para inspeção.

-- Desafio 2
Foi pedido pelo marketing uma relação de tidis is empregados(employees) que são cadados (sigle = solteiro, married = casado) e são asalariados (salaried)

-- Desafio 3
Um Usuário chamado Peter Krebs está devendo um pagamento, consiga o e-mail dele para que possamos enviar uma cobraça! 
(Você vai ter que usar a tabela person.person e depois a tabela person.emailaddress)
*/

-- Resolução do Desafio 1
SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight < 700;


-- Resolução do Desafio 2
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1;

-- Resolução do Desafio 3
SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs';


SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 26;