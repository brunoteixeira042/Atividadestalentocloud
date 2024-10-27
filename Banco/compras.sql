CREATE TABLE Compras (
    compra_id INT PRIMARY KEY,
    produto_id INT,
    data_compra DATE,
    quantidade INT,
    FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)
);


DELIMITER //

CREATE PROCEDURE RelatorioDiarioCompras(IN data_relatorio DATE)
BEGIN
    SELECT 
        p.produto_id,
        p.nome AS nome_produto,
        SUM(c.quantidade) AS quantidade_total_comprada
    FROM 
        Compras c
    JOIN 
        Produtos p ON c.produto_id = p.produto_id
    WHERE 
        c.data_compra = data_relatorio
    GROUP BY 
        p.produto_id, p.nome
    ORDER BY 
        quantidade_total_comprada DESC;
END //

DELIMITER ;
