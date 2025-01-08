/*
OPERADOR  -  DESCRI��O
=            IGUAL
>            MAIOR QUE
<            MENOR QUE
>=           MAIOR QUE OU IGUAL
<=           MENOR QUE OU IGUAL
<>           DIFERENTE DE
AND          OPERADOR L�GICO E
OR           OPERADOR L�GICO OU
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
A equpe de produ��o de produtos precisa do nome de todas as pe�as que pesam mais de 500kg mas n�o mais que 700kg para inspe��o.

-- Desafio 2
Foi pedido pelo marketing uma rela��o de tidis is empregados(employees) que s�o cadados (sigle = solteiro, married = casado) e s�o asalariados (salaried)

-- Desafio 3
Um Usu�rio chamado Peter Krebs est� devendo um pagamento, consiga o e-mail dele para que possamos enviar uma cobra�a! 
(Voc� vai ter que usar a tabela person.person e depois a tabela person.emailaddress)
*/

-- Resolu��o do Desafio 1
SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight < 700;


-- Resolu��o do Desafio 2
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1;

-- Resolu��o do Desafio 3
SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs';


SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 26;