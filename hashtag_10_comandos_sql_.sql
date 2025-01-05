## 10 COMANDOS EM SQL QUE VOCÊ PRECISA SABER ##

-- 1. Criação de Banco de dados: CREATE DATABASE
CREATE DATABASE hashtag;


-- 2. Seleção do Banco de Dados: USE DATABASE
use hashtag;


-- 3. Criação de tabelas no Banco de Dados selecionado: CREATE TABLE
create table Vendas(
	ID_Vendas int,
    Curso varchar(100),
    Aluno varchar(100),
    Estado varchar(100),
    Valor decimal(10, 2)
);


-- 4. Incluir dados na tabela: INSERT INTO

insert into Vendas(ID_Vendas, Curso, Aluno, Estado, Valor)
values
	(1,'Excel', 'João', 'SP', 100),
    (2,'VBA', 'Lucas', 'RJ', 50),
    (3,'Excel', 'Alice', 'SP', 100),
    (4,'Excel', 'Pedro', 'PE', 100),
    (5,'VBA', 'Amanda', 'BA', 50),
    (6,'Power BI', 'Rita', 'RS', 80),
    (7,'Excel', 'Julia', 'RJ', 100),
    (8,'Power BI', 'Caio', 'SP', 80),
    (9,'Power BI', 'Lara', 'MG', 80),
    (10,'Excel', 'Rogério', 'AC', 100);
   
   
-- 5. Selecionar dados de uma tabela: SELECT

select * from Vendas;
select Aluno, Curso, Valor from Vendas;


-- 6. Ordenar dados em uma tabela: ORDER BY
select * from Vendas
order by Aluno;


-- 7. Filtrar dados em uma tabela: WHERE
select * from Vendas
where Estado = 'RJ';


-- 8. Alturação de valores dentro da taela: UPDATE
update Vendas
set Valor = 150
where Curso = 'VBA';

select * from Vendas;

