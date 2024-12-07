ALTER TABLE
Permite realizar alteração nas tabelas

ADD     -- adicionar constraint ou atributo
MODIFY  -- alterar um atributo
DROP    -- excluir constraint ou atributo

-- Inserir um novo atributo em uma tabela
ALTER TABLE CLIENTE
ADD SEX_CLIENTE CHAR(1);

-- Inserir uma constraint de check (apoio em validações)
ALTER TABLE CLIENTE
ADD CONSTRAINT CK_SEXO CHECK (SEX_CLIENTE IN ('M', 'F'));

-- Visualizar as constraint
SELECT CONSTRAINT_NAME FROM USER_CONSTRAINTS;

-- Alterar um atributo de uma tabela
ALTER TABLE CLIENTE
MODIFY NOM_cliente VARCHAR2(45);

-- Inserir um novo atributo em uma tabela
ALTER TABLE CLIENTE
ADD DTC_CLIENTE DATE;

-- Excluir o atributo de uma tabela
ALTER TABLE CLIENTE
DROP COLUNM 



-- Exercício até *1 ponto*, enviar os scripts por e-mail *(ecarita@gmail.com)* até 13/03/2020 23:59

-- 1. Scripts de criação das tabelas do modelo de dados
-- 2. Adicionar um atributo *dta_func_projeto* na tabela *FUNC. PROJETO*.
-- 3. Adicionar constraint de check *vlr_despesa* entre *1* e *9,999,999.99*.

-- Para definir um intervalo de dados utilizar o operador *between*.
