CREATE DATABASE EmpresaDB;

CREATE TABLE Departamento (
    departamento_id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    localizacao VARCHAR(50)
);

CREATE TABLE Funcionario (
    funcionario_id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES Departamento(departamento_id)
);

CREATE TABLE Projeto (
    projeto_id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT,
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES Departamento(departamento_id)
);

INSERT INTO Departamento (departamento_id, nome, localizacao) VALUES 
(1, 'Recursos Humanos', 'Edificio A'),
(2, 'Tecnologia', 'Edificio B'),
(3, 'Financeiro', 'Edificio C');

INSERT INTO Funcionario (funcionario_id, nome, cargo, salario, departamento_id) VALUES 
(1, 'Ana Silva', 'Analista', 5000.00, 1),
(2, 'Carlos Souza', 'Desenvolvedor', 7000.00, 2),
(3, 'Mariana Oliveira', 'Gerente', 9000.00, 1),
(4, 'Pedro Costa', 'Analista Financeiro', 6000.00, 3),
(5, 'Lucas Lima', 'Desenvolvedor', 7000.00, 2);


INSERT INTO Projeto (projeto_id, nome, descricao, departamento_id) VALUES 
(1, 'Projeto Alpha', 'Desenvolvimento de sistema de RH', 1),
(2, 'Projeto Beta', 'Aplicativo mobile', 2),
(3, 'Projeto Gamma', 'Sistema de relatórios financeiros', 3);


SELECT Funcionario.nome AS Nome_Funcionario, Funcionario.cargo, Departamento.nome AS Nome_Departamento
FROM Funcionario
JOIN Departamento ON Funcionario.departamento_id = Departamento.departamento_id;


SELECT Projeto.nome AS Nome_Projeto, Projeto.descricao, Departamento.nome AS Nome_Departamento
FROM Projeto
JOIN Departamento ON Projeto.departamento_id = Departamento.departamento_id;


SELECT Departamento.nome AS Nome_Departamento, Funcionario.nome AS Nome_Funcionario
FROM Departamento
LEFT JOIN Funcionario ON Departamento.departamento_id = Funcionario.departamento_id;



SELECT Departamento.nome AS Nome_Departamento, AVG(Funcionario.salario) AS Salario_Medio
FROM Funcionario
JOIN Departamento ON Funcionario.departamento_id = Departamento.departamento_id
GROUP BY Departamento.nome;

