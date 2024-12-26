-- FUNCTIONS (FUNÇÕES) PL/SQL
Programa PL/SQL que permite o retorno de informações

-- Sintaxe
CRETE [OR REPLACE] FUNCTION "function_name"
(parâmetro tipo_do_parametro tipo_dado_parametro, ...)
RETURN tipo_do_retorno
IS ou AS
    -- Declaração das variáveis
BEGIN
    -- Instruções PL/SQL
RETURN o que será retornado
END;




-- Função para retornar o documento do cliente formatado
CREATE OR REPLACE FUNCTION FORMATADOC(vdoc IN CLIENTE.doc_cliente%TYPE)
RETURN VARCHAR2
IS
    vdocformatado VARCHAR2(19);
BEGIN
    IF (LENGTH(vdoc) = 11) THEN
        vdocformatado := SUBSTR(vdoc, 1, 3) || '.' || SUBSTR(vdoc, 4, 3) || '.' || SUBSTR(vdoc, 7, 3) || '-' || SUBSTR(vdoc, 10);
    ELSIF (LENGTH(vdoc) = 14) THEN
        vdocformatado := SUBSTR(vdoc, 1, 2) || '.' || SUBSTR(vdoc, 3, 3) || '.' || SUBSTR(vdoc, 5, 3) || '/' || SUBSTR(vdoc, 9, 4) || '.' || SUBSTR(vdoc, 13);
    ELSE
        vdocformatado := vdoc;
    END IF;
RETURN vdocformatado;
END;
/


-- Testando a função FORMATADOC
SELECT nom_cliente, FORMATADOC(doc_cliente) DOCUMENTO FROM CLIENTE;


-- Função para retornar a idade do cliente
CREATE OR REPLACE FUNCTION IDADE(vdtn IN CLIENTE.dtn_cliente%TYPE)
RETURN NUMBER
IS
    vidade NUMBER(3);
BEGIN
    vidade := TRUNC(MONTHS_BETWEEN(SYSDATE, vdtn)/12);
RETURN vidade;
END;
/

SELECT nom_cliente, IDADE(dtn_cliente) IDADE FROM CLIENTE;
