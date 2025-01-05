-- COUNT, COUNT(*), COUNT(DISTINCT)

select * from clientes;
select 
	count(distinct Escolaridade)
from clientes;

-- SUM, AVG, MIN e MAX
select
	sum(Receita_Venda) as 'Soma de Receita',
    avg (Receita_Venda) as 'Média de Receita',
    min(Receita_Venda) as 'Menor Receita',
    max(Receita_Venda) as 'Maior Receira'
from pedidos;