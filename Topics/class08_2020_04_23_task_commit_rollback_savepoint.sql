-- Laboratório de Banco de Dados

-- Wesley de Oliveira Mendes - 828.507


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


-- 1 - Implementar scripts para alterar o nome das categorias de código 9 e 10.
UPDATE CATEGORIA SET nom_categoria = 'CATEGORIA 9 NEW' WHERE id_categoria = 9;
UPDATE CATEGORIA SET nom_categoria = 'CATEGORIA 10 NEW' WHERE id_categoria = 10;
COMMIT;

-- 2 - Implementar script para alterar o valor do produto de código 6 - valor = 150,00.
UPDATE PRODUTO SET vlr_produto = 150.00 WHERE id_categoria = 6;
COMMIT;

-- 3 - Implementar script para alterar o nome e a categoria do produto de código 4.
UPDATE PRODUTO SET nom_produto = 'PRODUTO 4 NEW', id_categoria = 2 WHERE id_categoria = 4;
COMMIT;

-- 4 - Implementar script para excluir o orçamento de número 5.
DELETE ITEM_ORCAMENTO WHERE id_orcamento = 5;
DELETE ORCAMENTO WHERE id_orcamento = 5;
COMMIT;

SELECT * FROM CATEGORIA;
SELECT * FROM PRODUTO;