CREATE DATABASE LojaDB;

CREATE TABLE Clientes (
    cliente_id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    data_cadastro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Produtos (
    produto_id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT DEFAULT 0
);

CREATE TABLE Pedidos (
    pedido_id INT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATE DEFAULT CURRENT_DATE,
    total DECIMAL(10, 2) DEFAULT 0,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

CREATE TABLE Detalhes_Pedido (
    detalhe_id INT PRIMARY KEY,
    pedido_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(pedido_id),
    FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)
);

CREATE TRIGGER AtualizarEstoque
AFTER INSERT ON Detalhes_Pedido
FOR EACH ROW
BEGIN
    UPDATE Produtos
    SET estoque = estoque - NEW.quantidade
    WHERE produto_id = NEW.produto_id;
END;

INSERT INTO Produtos (produto_id, nome, descricao, preco, estoque) VALUES 
(1, 'Notebook', 'Notebook de alta performance', 3500.00, 10);

INSERT INTO Clientes (cliente_id, nome, email, telefone) VALUES 
(1, 'João Silva', 'joao@email.com', '123456789');

INSERT INTO Pedidos (pedido_id, cliente_id, total) VALUES 
(1, 1, 3500.00);

INSERT INTO Detalhes_Pedido (detalhe_id, pedido_id, produto_id, quantidade, preco_unitario) VALUES 
(1, 1, 1, 2, 3500.00);
