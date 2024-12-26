-- Criação de Sequência

alter session set "_ORACLE_SCRIPT"=true;

-- Geranciar auto incremento
CREATE SEQUENCE "sequence_name";
START WITH n        -- Definir o valor inicial da sequência (padrão 1)
INCREMENT BY n      -- Definir o valor incremental da sequência (padrão 1)
MINVALUE n          -- O valor mínimo que a sequência pode receber (padão 10^27)
MAXVALUE n          -- O valor máximo que a sequência pode receber (padão 10^27)
CACHE               -- A quantidade de valores que são alocados previamente na SGA (padrão 20 valores)
-- * Quando a sequência for cíclica não pode ter cache [NOCACHE]
CYCLE               -- Definir se a sequência será cíclica ou não (se  a sequência será reiniciada [CYCLE | NOCYCLE])


-- Alterar uma sequência
ALTER SEQUENCE "sequence_name" parâmento(s);
* Não é possível alterar o valor inicial de uma sequência.


-- Excluir uma sequência
DROP SEQUENCE "sequence_name";


-- Utilizar / manipular a sequência
CURRVAL             -- Retorna o valor corrente da sequência
NEXTVAL             -- Incrementar o valor


CREATE TABLE CATEGORIA(
    id_categoria NUMERIC(2),
    nom_categoria VARCHAR2(20),
    CONSTRAINT pk_categoria PRIMARY KEY(id_categoria)
);


CREATE TABLE PRODUTO(
    id_produto NUMERIC(4),
    nom_produto VARCHAR2(30),
    id_categoria NUMERIC(2),
    vlr_produto NUMERIC(7,2),
    CONSTRAINT pk_produto PRIMARY KEY(id_produto),
    CONSTRAINT fk_produto_categoria FOREIGN KEY(id_categoria) REFERENCES categoria
);


-- Exemplos de sequêcias
CREATE SEQUENCE seq_id_categoria
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 99
NOCYCLE;


CREATE SEQUENCE seq_id_produto
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE;


-- Mostrar todas as sequências
SELECT * FROM USER_SEQUENCES;


CREATE SEQUENCE seq_senha
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 99
CYCLE;


SELECT seq_senha.CURRVAL from DUAL;
SELECT seq_senha.NEXTVAL from DUAL;


-- INSERIR REGISTRO EM UMA TABELA
INSERT

-- Sintaxe:
INSET INTO "table_name"(atributo(s)) VALUES (valor(es));


-- Exemplos
INSERT INTO CATEGORIA(id_categoria, nom_categoria)
VALUES(seq_id_categoria.NEXTVAL, 'Limpeza');

INSERT INTO CATEGORIA(id_categoria, nom_categoria)
VALUES(seq_id_categoria.NEXTVAL, 'Bebidas');

COMMIT;



-- Atividade 16/04/2020 - Aula Assíncrona

-- 1. Implementar um script para criar uma sequência para gerenciar o número do orçamento.
-- A sequência deverá ser nomeada como seq_num_orcamento, valor inicial de 1, valor de incremento de 1 e valor máximo de 999999.

-- 2. Implementar os scritps para inserir 1 novo produto e dois orçamentos com dois itens em cada orçamento.
