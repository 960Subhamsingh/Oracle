-- Os índices que foram criados pelo usuário conectado
SELECT index_name FROM user_indexes;


-- Criação de índices
CREATE INDEX "index_name"
ON "table_name" (atributo(s))

-- Exemplo:
CREATE INDEX "IDX_CATEGORIA"
ON CATEGORIA(nom_categoria);


-- Excluir índice
DROP INDEX "index_name";

-- Exemplos:
DROP INDEX "IDX_CATEGORIA";


ASCII()     -- retorna o valor ASCII de um caractere (recebe como parâmetro um caractere).
SELECT ASCII('A') FROM DUAL;
SELECT ASCII('E'), ASCII('e') FROM DUAL;


CHR()       -- retorna o caractere de um valor ASCII (recebe um valor ASCII).
SELECT CHR(69) FROM DUAL;


UPPER()     -- coloca um caractere ou uma string em caixa alta (maiúsculo).
SELECT UPPER(nom_categoria) from CATEGORIA;

LOWER()     -- coloca um caractere ou uma string em caixa baixa (minusculo).
SELECT LOWER(nom_categoria) from CATEGORIA;


INSERT INTO CATEGORIA VALUES (seq_id_categoria.NEXTVAL, UPPER('Grãos/Achocolatados'));

INITCAP()   -- coloca as inicias das strings em maiúsculo (maiúsculo)
SELECT INITCAP(nom_categoria) NomeCategoria FROM CATEGORIA;


LENGTH()    -- retorna a quantidade de caracteres de uma string.
SELECT nom_categoria, LENGTH(nom_categoria) QTD FROM CATEGORIA;


CREATE TABLE CLIENTE (
    id_cliente NUMBER(6),
    nom_cliente VARCHAR(30),
    cpf_cliente CHAR(11),
    CONSTRAINT pk_cliente PRIMARY KEY(id_cliente)
);

INSERT INTO CLIENTE VALUES (1, 'Edilson Carlos', '12345678901');


999.999.

SUBSTR()    -- permite percorrer uma string e retornar parte dela.

-- Sintaxe:
SUBSTR(string, posição inicial, quantidade de posições que serão percorridas)

-- Exemplo:
SELECT nom_cliente, SUBSTR(cpf_cliente, 1,3) || '.' || 
SUBSTR(cpf_cliente, 4, 3) || '.' ||
SUBSTR(cpf_cliente, 7, 3) || '-' || 
SUBSTR(cpf_cliente, 10) CPF
FROM CLIENTE;


REPLACE()   -- substitui um valor (string) por outro.

-- Sintaxe:
REPLACE(string, valor a ser substituido, o novo valor)

-- Exemplo:
SELECT REPLACE(nom_cliente, 'Carlos', 'Caritá') FROM CLIENTE;


RPAD()      -- permite o alinhamento a direita.

-- Sintaxe:
RPAD(string, quantidade de posições, caractere de formatação)

Exemplo:
SELECT RPAD(nom_produto, 20, '.') NOME, vlr_produto VALOR
FROM PRODUTO;


LPAD()      -- permite o alinhamento a esquerda.

-- Sintaxe:
LPAD(string, quantidade de posições, caractere de formatação)

Exemplo:
SELECT LPAD(nom_produto, 20, '.') NOME, vlr_produto VALOR
FROM PRODUTO;
