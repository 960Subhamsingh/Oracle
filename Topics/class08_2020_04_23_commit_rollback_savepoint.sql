COMMIT      -- ratifica as transações no banco de dados (gravar fisicamente o (s)) registros (s)).
ROLLBACK    -- desfaz as transações que ainda não foram ratificadas (desfaz as toas as transações até o último commit ou savepoint).
SAVEPOINT   -- ponto de salvamento para o gerenciamneto de commit/rollback.


INSERT INTO PRODUTO VALUES (SEQ_ID_PRODUTO.NEXTVAL, 'Produto A', 1, 10);
INSERT INTO PRODUTO VALUES (SEQ_ID_PRODUTO.NEXTVAL, 'Produto Z', 2, 5.5);

INSERT INTO PRODUTO VALUES (SEQ_ID_PRODUTO.NEXTVAL, 'Placa de Vídeo', 2, 1000.00);
-- NOVO PRODUTO 2
INSERT INTO PRODUTO VALUES (SEQ_ID_PRODUTO.NEXTVAL, 'SSD', 2, 300.00);


SELECT * FROM PRODUTO;


-- Mostrar o nome das sequências do usuário conectado
SELECT SEQUENCE_NAME FROM USER_SEQUENCES;

DESC PRODUTO;

ROLLBACK;

SELECT * FROM PRODUTO;

SAVEPOINT PA;
INSERT INTO PRODUTO VALUES (SEQ_ID_PRODUTO.NEXTVAL, 'Produto G', 1, 15);
SAVEPOINT PB;
INSERT INTO PRODUTO VALUES (SEQ_ID_PRODUTO.NEXTVAL, 'Produto X', 2, 20.5);


ROLLBACK TO PB;

SELECT * FROM PRODUTO;

-- Alterar registros
UPDATE      -- alterar registros de uma tabela de um bando de dados.

-- Sintaxe:
UPDATE "table_name" SET atributo = new_valor [WHERE condition];

-- Exemplo
UPDATE PRODUTO SET nom_produto = 'Produto XXX', vlr_produto = 4.2
WHERE id_produto = 1;

UPDATE PRODUTO SET vlr_produto = 1.99;

-- Exclluir registros
DELETE      -- apagar registros de uma tabela de um banco de dados

-- Sintaxe
DELETE "table_name" [WHERE condition]

-- Obs: se não especificar uma condição todos os registros serão deletados

-- Exemplo
DELETE PRODUTO WHERE id_produto = 1;







-- 1 - Implementar scripts para alterar o nome das categorias de código 9 e 10.
-- 2 - Implementar script para alterar o valor do produto de código 6 - valor = 150,00.
-- 3 - Implementar script para alterar o nome e a categoria do produto de código 4.
-- 4 - Implementar script para excluir o orçamento de número 5.

DECLARE 
i NUMBER(2);
BEGIN
i := 1;
LOOP
    EXIT WHEN I > 10;
    INSERT INTO CATEGORIA (ID_CATEGORIA, NOM_CATEGORIA) VALUES(SEQ_ID_CATEGORIA.NEXTVAL, 'CATEGORIA ' || i);
i:=i+1;
END LOOP;
END;
/

SELECT * FROM CATEGORIA;

DECLARE 
i NUMBER(2);
vlr NUMBER(4,2);
BEGIN
i := 1;
vlr := 10.5;
LOOP
    EXIT WHEN I > 10;
    IF I <= 5 THEN 
         INSERT INTO PRODUTO (ID_PRODUTO, NOM_PRODUTO, ID_CATEGORIA, VLR_PRODUTO) VALUES(SEQ_ID_PRODUTO.NEXTVAL, 'PRODUTO ' || i, 1, vlr);
    ELSE
         INSERT INTO PRODUTO (ID_PRODUTO, NOM_PRODUTO, ID_CATEGORIA, VLR_PRODUTO) VALUES(SEQ_ID_PRODUTO.NEXTVAL, 'PRODUTO ' || i, 2, vlr);
      END IF;
i:=i+1;
vlr := vlr + 1;
END LOOP;
END;
/

SELECT * FROM PRODUTO;
