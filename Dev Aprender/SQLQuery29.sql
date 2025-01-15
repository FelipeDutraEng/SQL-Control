-- SQL AULA 29 - ALTER TABLE + DESAFIO

/*
- Vamos aprender a alterar a estrutura de uma tabela. usando o ALTER TABLE

- Syntaxe

ALTER TABLE nomeDaTabela
ACAO

Exemplos de o que pode ser feito:
- Add, Remover, or alterar uma coluna
- Setar valores padrões para uma coluna
- Add ou Remover restruções de colunas
- Renomear uma tabela

*/

CREATE TABLE youtube (
id INT PRIMARY KEY,
nome VARCHAR(150) NOT NULL UNIQUE,
categoria VARCHAR(200) NOT NULL,
dataCriacao DATETIME NOT NULL
);

SELECT * FROM youtube

-- Criação de uma nova coluna na tabela
ALTER TABLE youtube
add ativo bit

-- Alteração da coluna categoria
ALTER TABLE youtube
ALTER COLUMN categoria VARCHAR(300) NOT NULL

-- Alterar o nome de uma coluna

EXEC sp_rename 'youtube.nome', 'nomeCanal', 'COLUMN'

EXEC sp_rename 'youtube', 'youtube2'


SELECT * FROM youtube2

CREATE TABLE teste (
id INT PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
video VARCHAR(150) NOT NULL,
visualizacao INT NOT NULL

);


SELECT * FROM teste


ALTER TABLE teste
ALTER COLUMN visualizacao FLOAT NOT NULL

sp_rename 'teste.visualizacao', 'likes', 'COLUMN'

sp_rename 'teste', 'estatisticaYoutube'

SELECT * FROM estatisticaYoutube