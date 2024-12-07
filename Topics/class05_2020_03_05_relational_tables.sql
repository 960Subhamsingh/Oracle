CREATE TABLE TELEFONE (
	id_cliente INTEGER, 
	ddd_telefone NUMBER(2), 
	num_telefone VARCHAR2(10), 
	CONSTRAINT pk_telefone PRIMARY KEY (id_cliente, ddd_telefone, num_telefone),
	CONSTRAINT fk_telefone_cliente FOREIGN KEY (id_cliente) REFERENCES cliente
);


DESC ou DESCRIBE - mostra a estrutura da tabela


CREATE TABLE TIPO(
	id_tipo NUMBER(2),
	nom_tipo VARCHAR2(15),
	CONSTRAINT pk_tipo PRIMARY KEY(id_tipo)
);


CREATE TABLE CONDOMINIO(
	id_condominio NUMBER(3),
	nom_condominio VARCHAR2(30),
	id_tipo NUMBER(2),
	CONSTRAINT pk_condominio PRIMARY KEY (id_condominio),
	CONSTRAINT fk_condominio_tipo FOREIGN KEY (id_tipo) REFERENCES TIPO
);


CREATE TABLE UNIDADE(
	num_unidade NUMBER(4),
	id_condominio NUMBER(3),
	num_proprietario VARCHAR2(40),
	CONSTRAINT pk_unidade PRIMARY KEY (num_unidade, id_condominio),
	CONSTRAINT fk_unidade_condominio FOREIGN KEY (id_condominio) REFERENCES condominio
);
	

CREATE TABLE TAXA(
	num_taxa NUMBER(6),
	num_unidade NUMBER(4),
	id_condominio NUMBER(3),
	dtv_taxa DATE,
	vlr_taxa NUMBER(7,2),
	CONSTRAINT pk_taxa PRIMARY KEY (num_taxa),
	CONSTRAINT fk_taxa_unidade FOREIGN KEY (num_unidade, id_condominio) REFERENCES unidade
);
