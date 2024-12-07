-- FUNÇÕES PARA MANIPULAÇÃO DE DADOS NUMÉRICOS

ABS()   -- retorna o valor absoluto de um número.

SELECT ABS(-50), ABS(-1200) FROM DUAL;

UPDATE PRODUTO SET vlr_produto = -1.50 WHERE id_produto = 1;

SELECT nom_produto, ABS(vlr_produto) vlr_produto from PRODUTO;

SELECT nom_produto, vlr_produto FROM PRODUTO;


CEIL()  -- retorna o maior inteiro.
SELECT CEIL(-10.4), CEIL(-9.9), CEIL(9.9) FROM DUAL;


FLOOR() -- retorna o maior inteiro menor ou igual ao valor informado (n).
SELECT FLOOR(-10.4), FLOOR(-9.9), FLOOR(9.9) FROM DUAL;


MOD()   -- retorna o resto da divisão, ou seja, função módulo.

-- Sintaxe:
MOD(n1, n2)     -- retorna o resto da divisão de n1 por n2.

SELECT MOD(9, 2) RESTO FROM DUAL;


POWER() -- retorna a exponenciação de um número a potência de outro.
SELECT POWER(3, 3) RESULTADO FROM DUAL


TRUNC() -- truncar um número, ou seja, eliminar casas decimais.

UPDATE PRODUTO SET vlr_produto = 8.50333 WHERE id_produto = 1;

SELECT TRUNC(10.50333,3) FROM DUAL;
SELECT TRUNC(vlr_produto) FROM PRODUTO;


ROUND() -- arredondamento de um número, pode-se informar a quantidade de dígitos de precisão (casas decimais).

SELECT ROUND(10.50833, 2) FROM DUAL;
SELECT ROUND(10.50333, 2) FROM DUAL;


SIGN()  -- retorna 1 se o valor for positivo, -1 se o valor for negativo e retorna 0 se o valor for zero

SELECT SIGN(-1000) NEGATIVO, SIGN(1000) POSITIVO, SIGN(0) ZERO FROM DUAL;



-- FUNÇÕES PARA MANIPULAÇÃO DE DATAS

MONTHS_BETWEEN(data1, data2)    -- RETORNA

ALTER TABLE CLIENTE ADD dtn_cliente DATE;

SELECT cod_cliente, nom_cliente FROM CLIENTE;

UPDATE CLIENTE SET dtn_cliente = TO_DATE('10/07/1978','DD/MM/YYYY');

SELECT MONTHS_BETWEEN(SYSDATE, dtn_cliente) FROM CLIENTE;
SELECT MONTHS_BETWEEN(SYSDATE, dtn_cliente) / 12 FROM CLIENTE;

-- Mostrar a idade dos clientes
SELECT TRUNC(MONTHS_BETWEEN(SYSDATE, dtn_cliente) / 12) IDADE FROM CLIENTE;

SELECT SYSDATE FROM DUAL;
