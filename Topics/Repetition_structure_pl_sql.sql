-- ESTRUTURA DE REPETIÇÃO PL/SQL

-- Estrutura de Repetição FOR

-- Sintaxe:
FOR controle IN initial_value .. final_value
LOOP
    -- instruções PL/SQL
END LOOP;

-- Exemplo:
DECLARE
    vcontrole NUMBER(2);
BEGIN
    vcontrole := 11;
    FOR vcontrole IN 11 .. 20
        LOOP
        IF (vcontrole <= 15) THEN
            INSERT INTO PRODUTO VALUES(vcontrole, 'Produto X' || vcontrole, 3, 10+vcontrole);
        ELSE
            INSERT INTO PRODUTO VALUES(vcontrole, 'Produto Z' || vcontrole, 5, 20+vcontrole);
        END IF;
    END LOOP;
END;
/


-- Estrutura de Repetição WHILE

-- Sintaxe:
WHILE (condicao)
LOOP
    -- instruções PL/SQL
END LOOP;

-- Exemplo:
DECLARE
    vcontrole NUMBER(2);
BEGIN
    vcontrole := 15;
    WHILE(vcontrole <= 20)
    LOOP
        UPDATE PRODUTO SET vlr_produto = vlr_produto * 1.05 WHERE id_produto = vcontrole;
    vcontrole := vcontrole+1;
    END LOOP;
END;
/


-- PROCEDIMENTOS (PROCEDURE)

-- Exemplo
-- Retornar valor total de um orçamento a partir do seu número (id_orcamento)
CREATE OR REPLACE PROCEDURE ptotal(vnumero IN ITEM_ORCAMENTO.id_orcamento%TYPE)
IS  -- quando é necessário declarar variável.
    vtotal NUMBER(12,2);
BEGIN
    SELECT SUM(qtd_orcamento * vlr_ITEM_ORCAMENTO) INTO vtotal 
    FROM ITEM_ORCAMENTO WHERE id_orcamento = vnumero;
    DBMS_OUTPUT.PUT_LINE('Total = R$' || vtotal);
EXCEPTION
WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Erro ou id_orcamento inexistente...');
END;
/

exec ptotal(2)  -- executa um procedimento, passando o id.

SET SERVEROUTPUT ON;  -- ativa visualização das variáveis.

SHOW ERRORS;  -- mostrar os erro.


-- Procedimento para cadastrar clientes
CREATE OR REPLACE PROCEDURE cadcli(
    vnome IN CLIENTE.nom_cliente%TYPE, 
    vdtnasc IN CLIENTE.dtn_cliente%TYPE, 
    vemail IN CLIENTE.email_cliente%TYPE, 
    vdoc IN CLIENTE.doc_cliente%TYPE
)
AS  -- quando não é necessário declarar variável.
BEGIN
    INSERT INTO CLIENTE VALUES (seq_cod_cliente.NEXTVAL, vnome, vdtnasc, vemail, vdoc);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Erro na execução...');
END;
/
