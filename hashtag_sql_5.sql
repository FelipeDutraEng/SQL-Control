# GROUP BY

-- Exemplo 1. Utilize o GROUP BY para criar uma consulta e descobrir o total de clientes por sexo.

select * from clientes;

select
	Sexo,
	count(*) as 'Qtd. Clientes'
from clientes
group by Sexo;


-- Exemplo 2. Faça uma consulta à tabela de Produtos para retornar o total de produtos por marca.

select * from produtos;

select
	Marca_Produto,
    count(*) as 'Qtd. de Produtos'
from produtos
group by Marca_Produto;

-- Exemplo 3. Faça uma consulta à tabela Pedidos e descubra a Receita Total e Custo Total por ID_Loja.
select * from pedidos;
select 
	ID_Loja,
    sum(Preco_Unit) as 'Receita Total',
	sum(Custo_Unit) as 'Custo Total'
from pedidos
group by ID_Loja;




