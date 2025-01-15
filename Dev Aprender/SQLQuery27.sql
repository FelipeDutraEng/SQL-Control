-- SQL AULA 27 UPDATE + DESAFIO

-- DESAFIO
-- Altere o nome de 2 linhas diferentes e poste 

SELECT * FROM aula

UPDATE aula
SET nome = 'mudei'
WHERE id = 3

SELECT * FROM aula

UPDATE aula
SET nome = 'GROUP BY'
WHERE id = 1


UPDATE aula
SET nome = 'ORDER BY'
WHERE id = 2
