-- ESTRUTURA DE UM CÓDIGO PL/SQL
DECLARE         -- (opcional).

-- Declaração das variáveis (quando houver necessidade).
BEGIN           -- (obrigatório).

-- Instruções SQL e PL/SQL
EXCEPTION       -- (opcional).

-- Tratamento de erros
END;            -- (obrigatório).


-- DECLARAÇÃO DE VARIÁVEIS
variable_name data_type     -- (semelhante a declarar um atributo).


-- ATRIBUIR VALOR PARA UMA VARIÁVEL
-- Direta por meio de:
:=
-- Indireta (resultado de uma consulta) por meio da claúsula:
INTO

-- DECLARE
vcod_cliente NUMBER(4);
vnom_cliente VARCHAR(40);

vcod_cliente := 5;

SELECT nom_cliente INTO vnom_cliente FROM CLIENTE WHERE cod_cliente = vcod_cliente;


-- MOSTRAR MENSAGEM NA TELA
DBMS_OUTPUT.PUT_LINE()      -- Mostrar mensagem na tela.
(*)     -- Necessário atualizar a variável de ambiente SERVEROUTPUT.

SET SERVEROUTPUT ON;


-- Bloco anônimo para ler uma taxa de correção e aplicar essa taxa de correção aos valores dos produtos.
DECLARE
vtaxa NUMBER(4,2);
BEGIN
    vtaxa := &vtaxa;
    UPDATE PRODUTO SET vlr_produto = vlr_produto + vlr_produto * (vtaxa / 100);
EXCEPTION
WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Erro na execução da atualização');
END;
/


-- Bloco anônimo para ler o código de um cliente e mostrar seu nome e sua data de nascimento.
DECLARE
-- Declaração das variáveis
    vcod_cliente NUMBER(6);
    vnom_cliente VARCHAR(30);
    vdtn_cliente DATE;
BEGIN
    -- Entrada de dados.
    vcod_cliente := &vcod_cliente;
    -- Processamento.
    SELECT nom_cliente, dtn_cliente INTO vnom_cliente, vdtn_cliente
    FROM CLIENTE
    WHERE cod_cliente = vcod_cliente;
    -- Saída de dados.
    DBMS_OUTPUT.PUT_LINE('Nome: ' || vnom_cliente);
    DBMS_OUTPUT.PUT_LINE('Data Nascimento: ' || vdtn_cliente);
-- Tratamento de erros.
EXCEPTION
WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Erro na execução da atualização');
END;
/


-- ESTRUTURA CONDICIONAL IF ... ELSIF ... ELSE.
-- Sintaxe:
IF (condição) THEN
    -- Instruções para condição verdadeira.
ELSEIF (condição2) THEN
    -- Instruções para condição2 verdadeira.
ELSE
    -- Instruções quando as condições anteriores forem falsas.
END IF;


-- MANUTENÇÃO NA TABELA CLIENTE
ALTER TABLE CLIENTE DROP COLUMN cpf_cliente;
ALTER TABLE CLIENTE ADD doc_cliente VARCHAR(14);
UPDATE CLIENTE SET doc_cliente = '12345678901' WHERE cod_cliente = 1;
INSERT INTO CLIENTE VALUES (6, 'Magazine Luiza', '01/01/1970', 'magalu@magalu.com', '12345678901234');

INSERT INTO CLIENTE VALUES (7, 'Cliente 7', '01/01/1950', 'client7@client.com', '12378901234');
INSERT INTO CLIENTE VALUES (8, 'Cliente 8', '01/01/1950', 'client8@client.com', '123789012345');


-- Bloco anônimo para ler o código do cliente e mostrar o nome e a classificação (pessoa física ou pessoa jurídica).
DECLARE
    -- Declaração das variáveis
    vcod_cliente NUMBER(6);
    vnom_cliente VARCHAR2(30);
    vcat_cliente VARCHAR2(20);
    vdoc_cliente NUMBER(2);
-- Início do bloco PL/SQL
BEGIN
    -- Entrada de dados
    vcod_cliente := &vcod_cliente;
    SELECT nom_cliente, LENGTH(doc_cliente) 
    INTO vnom_cliente, vdoc_cliente FROM CLIENTE
    WHERE cod_cliente = vcod_cliente;
    IF(vdoc_cliente = 11) THEN
        vcat_cliente := 'PESSOA FISICA';
    ELSIF (vdoc_cliente = 14) THEN
        vcat_cliente := 'PESSOA JURIDICA';
    ELSE
        vcat_cliente := 'DOCUMENTO INVALIDO';
    END IF;
    -- Saída de dados
    DBMS_OUTPUT.PUT_LINE('Nome: ' || vnom_cliente);
    DBMS_OUTPUT.PUT_LINE('Categoria: ' || vcat_cliente);
    -- Tratamento de erros
EXCEPTION
WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Erro de execução ou cliente não cadastrado...');
END;
/
