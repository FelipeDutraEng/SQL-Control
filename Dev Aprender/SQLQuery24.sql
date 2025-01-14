-- SQL AULA 25 - TIPOS DE DADOS + DESAFIO
/*
1 - Boleanos
2 - Caractere
3 - Números
4 - Temporais

## 1. Boleanos
Por padrão ele é inicializado como nulo, e pode receber tanto 1 ou 0
Para representar um valor boleano no SQL, vamos usar o tipo BIT.


## 2. Caracteres
Tamanho fixo - usando o CHAR // permite inserir até uma quantidade fixa de caracteres e 
sempre ocupa todo o espaço reservado. Se utilizarmos só 10 e reservar 50, o espaço reservado
se manterá como 50.
Tamanho variáveis - VARCHAR ou NVARCHAR // Permite inserir até uma quantidade que for definida, 
porém só usa o espaço que for preenchido 10/50.


## 3. Números
Valores Exatos // 
- 1 TINYINT - Ideal para armazenar valores muito pequenos, como 
contadores simples ou valores booleanos (0 ou 1).
- 2 SMALLINT - Usado para armazenar valores inteiros pequenos, como idades
ou contagens menores que não exigem muitos bytes.
- 3 INT ou INTEGER - O tipo mais comum para números inteiros. É usado quando se espera uma faixa
ampla de valores, como IDs de registros.
- 4 GIBINT - Necessário para armazenar valores inteiros extremamente grandes, como 
contadores de grandes volumes de dados.
- 5 NUMERIC ou DECIMAL - Valores exatos, porém permite ter parte fracionados, que também pode
ser especificado a precisão e escala (escala é o número de digitos na parte fracional) 
Ex.: NUMERIC (5,2) 113,44

Valores Aproximados //
- 1 REAL - Tem precisão aproximada de até 7 digitos. Armazena números com casas decimais, 
mas tem menor precisão do que FLOAT.
- 2 FLOAT - Usado quando não é necessário armazenar valores extremamente precisos, como 
medições aproximadas.


## 4. Temporais
DATE - Armazena data no formato aaaa/mm/dd
DATETIME - Armazena data e horas no formato aaaa/mm/dd:hh:mm:ss
DATETIME2  - Armazena data e hora com adição de milissegundos 
no formato aaaa/mm/dd:hh:mm:ss[.fractional]
SMALLDATETIME - Armazena data e hora com precisão de 1 minuto. 
TIME - Usado para armazenar apenas o horário (sem data), util para eventos que ocorrem diariamente
DATETIMEOFFSET - Armazena data, hora e o fuso horário associado. 



*/