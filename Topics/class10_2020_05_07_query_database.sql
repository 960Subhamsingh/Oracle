-- Consultar registros no banco de Dados

-- Comando:
SELECT

-- Sintaxe:
SELECT [DISTINCT] atributo(s) FROM tabelas(s) 
[WHERE condição(ões) ORDER BY | GROUP BY | HAVING]


-- 1 - Listar o nome do produto e o nome da sua categoria.
SELECT P.nom_produto produto, C.nom_categoria categoria
FROM produto P, categoria C WHERE C.id_categoria = P.id_categoria;


-- 2 - Listar o id do orçamento e o nome dos produtos que compõem o orçamento (ordenado pelo id do orçamento).
SELECT IO.id_orcamento numero, P.nom_produto produto
FROM item_orcamento IO, produto P WHERE IO.id_produto = P.id_produto
ORDER BY IO.id_orcamento;


-- 3 - Listar o nome da categoria dos produtos que custam mais de 20.00.
SELECT C.nom_categoria FROM categoria C, produto P 
WHERE C.id_categoria = P.id_categoria AND vlr_produto > 20;


-- Funções agregadas (agrupamentos dos dados).
MAX()   -- retorna o maior valor.
MIN()   -- retorna o menor valor.
AVG()   -- retorna a média.(somente para atributos numéricos).
SUM()   -- faz somatória. (somente para atributos numéricos).
COUNT   -- contador.


-- 4 - Listar o nome do produto de maior valor.
SELECT nom_produto FROM produto 
WHERE vlr_produto = (SELECT MAX(vlr_produto) FROM produto);


-- 5 - Mostrar quantos produtos há por categoria.
SELECT C.nom_categoria CATEGORIA, COUNT(P.id_produto) QTD 
FROM CATEGORIA C, PRODUTO P WHERE P.id_categoria = C.id_categoria
GROUP BY C.nom_categoria;

INSERT INTO produto VALUES(seq_id_produto.NEXTVAL, 'PRODUTO X', 4, 50);


-- 6 - Mostrar a soma do valor dos produtos por categoria.
SELECT C.nom_categoria CATEGORIA, SUM(P.vlr_produto) TOTAL
FROM CATEGORIA C, produto P WHERE P.id_categoria = C.id_categoria
GROUP BY C.nom_categoria;


-- 7 - Mostrar a soma dos produtos por categoria das categorias em que soma sejá maior que 70.
SELECT C.nom_categoria CATEGORIA, SUM(P.vlr_produto) TOTAL 
FROM categoria C, produto P
WHERE P.id_categoria = C.id_categoria 
GROUP BY C.nom_categoria HAVING SUM(P.vlr_produto) > 80;
