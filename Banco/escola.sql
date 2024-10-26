create database ESCOLA;

CREATE TABLE ALUNO (
    ID SERIAL PRIMARY KEY,
    Nome VARCHAR(50),
    Matricula INT UNIQUE NOT NULL,
    Email VARCHAR(100),
    Endereco VARCHAR(100),
    Telefone VARCHAR(15)
);
