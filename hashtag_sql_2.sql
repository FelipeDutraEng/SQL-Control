-- Exemplo 1. Selecionando todas as linhas e colunas da:
-- a) tabela pedidos
select * from pedidos;

-- b) tabela clientes
select * from clientes;

-- c) demais tabelas
select * from locais;
select * from lojas;
select * from pedidos;
select * from produtos;

-- Exemplo 2. Selecionar apenas algumas colunas da tabela clientes.
select 
	ID_Cliente as 'ID Cliente', 
    Nome as 'Nome do Cliente', 
    Data_Nascimento as 'Data de Nascimento', 
    Email as 'E-mail do Cliente' 
from clientes;

-- Exemplo 3. Selecionar as 5 primeiras linhas da tabela de produtos
select * from produtos
limit 9;

-- Exemplo 4. Selecionar todas as linhas da tabela produtos, mas ordenando pela coluna Preco_Unit
select * from produtos
order by Preco_Unit desc;