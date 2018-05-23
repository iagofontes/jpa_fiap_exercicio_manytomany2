CREATE DATABASE MANYTOMANY;
USE MANYTOMANY;

CREATE TABLE FUNCIONARIO(
	ID INT(11) PRIMARY KEY AUTO_INCREMENT,
    CODIGO_FUNCIONARIO VARCHAR(10) NOT NULL, 
    NOME_FUNCIONARIO VARCHAR(45) NOT NULL
);

CREATE TABLE TAREFA(
	ID INT(11) PRIMARY KEY AUTO_INCREMENT, 
    DESCRICAO VARCHAR(45) NOT NULL,
    DURACAO VARCHAR(45) NOT NULL
);

CREATE TABLE FUNCIONARIO_TAREFA(
	FUNCIONARIO_ID INT(11), 
    TAREFA_ID INT(11), 
    CONSTRAINT `FK_FT_FUNC` FOREIGN KEY(FUNCIONARIO_ID) REFERENCES FUNCIONARIO(ID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_FT_TAREFA` FOREIGN KEY(TAREFA_ID) REFERENCES TAREFA(ID) ON DELETE CASCADE ON UPDATE CASCADE
);