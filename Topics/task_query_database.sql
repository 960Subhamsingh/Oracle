-- 1 - Implementar script para criação de uma view somente leitura denominada "orcamento_pesquisa". 
--     A view deverá ter os atributos
--     "id_orcamento", "nom_produto", "qtd_orcamento", "vlr_item_orcamento".
CREATE OR REPLACE VIEW ORCAMENTO_PESQUISA
AS SELECT O.id_orcamento, P.nom_produto, IO.qtd_orcamento, IO.vlr_item_orcamento
FROM ORCAMENTO O, PRODUTO P, ITEM_ORCAMENTO IO WITH READ ONLY;

-- 1 - Implementar script para criação de uma view somente leitura denominada "orcamento_pesquisa". A view deverá ter os atributos
CREATE OR REPLACE VIEW orcamento_pesquisa 
AS SELECT id_orcamento, nom_produto, qtd_orcamento, vlr_item_orcamento 
FROM produto P, item_orcamento IO WHERE P.id_produto = IO.id_produto WITH READ ONLY;


-- 2 - Listar o nome e o valor dos produtos da categoria denominada "Categoria 1".
SELECT P.nom_produto, P.vlr_produto
FROM PRODUTO P, CATEGORIA C 
WHERE P.id_categoria = C.id_categoria
AND C.nom_categoria = 'CATEGORIA 1';
-- OU
SELECT P.nom_produto, P.vlr_produto
FROM PRODUTO P
INNER JOIN CATEGORIA C 
ON P.id_categoria = C.id_categoria
WHERE C.nom_categoria = 'CATEGORIA 1';


-- 3 - Mostrar a quantidade de orçamentos com valor total > 20.
SELECT IO.qtd_orcamento, IO.vlr_item_orcamento
FROM item_orcamento IO
WHERE IO.vlr_item_orcamento > 20;


-- 4 - Mostrar o id do orçamento de menor valor total.
SELECT IO.id_orcamento
FROM ITEM_ORCAMENTO IO
HAVING(
    SELECT MIN(SUM(IO.vlr_item_orcamento))
    FROM ITEM_ORCAMENTO IO
    GROUP BY IO.id_orcamento) = SUM(IO.vlr_item_orcamento)
GROUP BY IO.id_orcamento;


-- 5 - Mostrar a quantidade de orçamentos do ano de 2019.
SELECT O.dta_orcamento, COUNT(O.id_orcamento) QTD 
FROM ORCAMENTO O WHERE EXTRACT(YEAR FROM O.dta_orcamento) = '2019'
GROUP BY O.dta_orcamento;
