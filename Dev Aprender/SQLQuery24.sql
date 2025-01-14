-- SQL AULA 25 - TIPOS DE DADOS + DESAFIO
/*
1 - Boleanos
2 - Caractere
3 - N�meros
4 - Temporais

## 1. Boleanos
Por padr�o ele � inicializado como nulo, e pode receber tanto 1 ou 0
Para representar um valor boleano no SQL, vamos usar o tipo BIT.


## 2. Caracteres
Tamanho fixo - usando o CHAR // permite inserir at� uma quantidade fixa de caracteres e 
sempre ocupa todo o espa�o reservado. Se utilizarmos s� 10 e reservar 50, o espa�o reservado
se manter� como 50.
Tamanho vari�veis - VARCHAR ou NVARCHAR // Permite inserir at� uma quantidade que for definida, 
por�m s� usa o espa�o que for preenchido 10/50.


## 3. N�meros
Valores Exatos // 
- 1 TINYINT - Ideal para armazenar valores muito pequenos, como 
contadores simples ou valores booleanos (0 ou 1).
- 2 SMALLINT - Usado para armazenar valores inteiros pequenos, como idades
ou contagens menores que n�o exigem muitos bytes.
- 3 INT ou INTEGER - O tipo mais comum para n�meros inteiros. � usado quando se espera uma faixa
ampla de valores, como IDs de registros.
- 4 GIBINT - Necess�rio para armazenar valores inteiros extremamente grandes, como 
contadores de grandes volumes de dados.
- 5 NUMERIC ou DECIMAL - Valores exatos, por�m permite ter parte fracionados, que tamb�m pode
ser especificado a precis�o e escala (escala � o n�mero de digitos na parte fracional) 
Ex.: NUMERIC (5,2) 113,44

Valores Aproximados //
- 1 REAL - Tem precis�o aproximada de at� 7 digitos. Armazena n�meros com casas decimais, 
mas tem menor precis�o do que FLOAT.
- 2 FLOAT - Usado quando n�o � necess�rio armazenar valores extremamente precisos, como 
medi��es aproximadas.


## 4. Temporais
DATE - Armazena data no formato aaaa/mm/dd
DATETIME - Armazena data e horas no formato aaaa/mm/dd:hh:mm:ss
DATETIME2  - Armazena data e hora com adi��o de milissegundos 
no formato aaaa/mm/dd:hh:mm:ss[.fractional]
SMALLDATETIME - Armazena data e hora com precis�o de 1 minuto. 
TIME - Usado para armazenar apenas o hor�rio (sem data), util para eventos que ocorrem diariamente
DATETIMEOFFSET - Armazena data, hora e o fuso hor�rio associado. 



*/