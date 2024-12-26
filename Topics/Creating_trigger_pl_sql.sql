-- CRIAÇÂO DE GATILHO
-- Programa PL/SQL armazenado no banco de dados que é disparado/executado a partir da ocorrência de um evento

CREATE [OR REPLACE] TRIGGER "trigger_name"
[quando] AFTER | BEFORE
[evento] INSERT | UPDATE | DELETE
ON "table_name"
[STATEMENT | FOR EACH ROW]
PL/SQL


INSERT - INSERTING
UPDATE - UPDATING
DELETE - DELETING


CREATE TABLE PRODUTO_HIST(
    num_produto_hist NUMBER(5),
    id_produto NUMBER(4),
    nom_produto VARCHAR2(30),
    id_categoria NUMBER(2),
    vlr_produto_velho NUMBER(7,2),
    vlr_produto_novo NUMBER(7,2),
    dta_produto_hist DATE,
    CONSTRAINT pk_produto_hist PRIMARY KEY (num_produto_hist)
);

CREATE SEQUENCE seq_num_produto_hist
START WITH 1
INCREMENT BY 1;

-- Trigger para inserir em uma tabela depois que atualizar outra.
CREATE OR REPLACE TRIGGER HISTORICO_PRODUTO
AFTER UPDATE ON PRODUTO
FOR EACH ROW
BEGIN
    INSERT INTO PRODUTO_HIST VALUES (
        seq_num_produto_hist.NEXTVAL, :NEW.id_produto, :NEW.nom_produto, 
        :NEW.id_categoria, :OLD.vlr_produto, :NEW.vlr_produto, SYSDATE
    );
END;
/


-- Tabela USER_TRIGGERS
-- armazena as trigger criadas pelos usuários
DESC USER_TRIGGERS;


-- Listar o nome dos gatilhos criados
SELECT TRIGGER_NAME FROM USER_TRIGGERS;

-- Testando gatilho
UPDATE PRODUTO SET vlr_produto = 43.5 WHERE id_produto = 20;


-- Cria uma tabela nova com os mesmos atributos que uma existente
CREATE TABLE CLIENTEBKP AS SELECT * FROM CLIENTE;

-- Trigger para inserir, atualizar ou deleter em uma duas tabelas
CREATE OR REPLACE TRIGGER BKPCLIENTE
AFTER INSERT OR UPDATE OR DELETE
ON CLIENTE
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO CLIENTEBKP VALUES (:NEW.cod_cliente, :NEW.nom_cliente, :NEW.dtn_cliente, :NEW.email_cliente, :NEW.doc_cliente);
    ELSIF UPDATING THEN
        UPDATE CLIENTEBKP SET cod_cliente = :NEW.cod_cliente, nom_cliente = :NEW.nom_cliente, dtn_cliente = :NEW.dtn_cliente, email_cliente = :NEW.email_cliente,doc_cliente = :NEW.doc_cliente 
        WHERE cod_cliente = :OLD.cod_cliente;
    ELSE
        DELETE CLIENTEBKP WHERE cod_cliente = :OLD.cod_cliente;
    END IF;
END;
/

COMMIT;

SELECT * FROM CLIENTEBKP;
SELECT * FROM CLIENTE;

INSERT INTO CLIENTE VALUES (seq_cod_cliente.NEXTVAL, 'UNAERP', '01/06/1924', 'contato@unaerp.com.br', '00112233445518');
COMMIT;


UPDATE CLIENTE SET doc_cliente = '11111111111111' WHERE nom_cliente = 'UNAERP';
COMMIT;

DELETE CLIENTE WHERE nom_cliente = 'UNAERP';
COMMIT;




CLIENTE
cpf_cliente
nom_cliente
dtn_cliente

:NEW.cpf_cliente
:OLD.cpf_cliente

:NEW.nom_cliente
:OLD.nom_cliente

:NEW.dtn_cliente
:OLD.dtn_cliente
