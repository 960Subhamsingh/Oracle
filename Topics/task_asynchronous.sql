-- Labotratório de Banco de Dados - Atividade 16/04/2020 - Aula Assíncrona

-- Wesley de Oliveira Mendes - 828.507

-- 1. Implementar um script para criar uma sequência para gerenciar o número do orçamento.
-- A sequência deverá ser nomeada como seq_num_orcamento.
-- Valor inicial de 1.
-- Valor de incremento de 1.
-- Valor máximo de 999999.
CREATE SEQUENCE seq_num_orcamento
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 999999
NOCYCLE;

-- 2. Implementar os scritps para:
-- Inserir:
--    1 Novo produto.
--    2 Orçamentos.
--    2 Itens em cada orçamento.

-- NOVO PRODUTO 1
INSERT INTO PRODUTO(id_produto, id_categoria, nom_produto, vlr_produto)
VALUES(SEQ_ID_PRODUTO.NEXTVAL, 3, 'Placa de Vídeo', 1000.00);
-- NOVO PRODUTO 2
INSERT INTO PRODUTO(id_produto, id_categoria, nom_produto, vlr_produto)
VALUES(SEQ_ID_PRODUTO.NEXTVAL, 3, 'SSD', 300.00);

-- ORÇAMENTO 1
INSERT INTO ORCAMENTO(id_orcamento, dta_orcamento, obs_orcamento)
VALUES(seq_num_orcamento.NEXTVAL, '2020-04-16', 'Oçamento válido durante 15 dias.');
-- ITEM 1
INSERT INTO ITEM_ORCAMENTO(id_produto, id_orcamento, qtd_orcamento, vlr_item_orcamento)
VALUES(1, 1001, 2, 2000.00);
-- ITEM 2
INSERT INTO ITEM_ORCAMENTO(id_produto, id_orcamento, qtd_orcamento, vlr_item_orcamento)
VALUES(2, 1001, 3, 900.00);


-- ORÇAMENTO 2
INSERT INTO ORCAMENTO(id_orcamento, dta_orcamento, obs_orcamento)
VALUES(seq_num_orcamento.NEXTVAL, '2020-04-17', 'Oçamento válido durante 20 dias.');
-- ITEM 1
INSERT INTO ITEM_ORCAMENTO(id_produto, id_orcamento, qtd_orcamento, vlr_item_orcamento)
VALUES(1, 1002, 5, 5000.00);
-- ITEM 2
INSERT INTO ITEM_ORCAMENTO(id_produto, id_orcamento, qtd_orcamento, vlr_item_orcamento)
VALUES(2, 1002, 2, 600.00);


COMMIT;
