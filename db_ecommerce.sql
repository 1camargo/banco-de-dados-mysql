CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT NOT NULL,
data_cadastro DATE,
valor DECIMAL(5,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, quantidade, data_cadastro, valor)
VALUES ("Tênis Nike", 100, "2024-06-24", 800.00),
		("Camiseta Nike", 300, "2024-01-30", 120.00),
        ("Sholder Bag Nike", 500, "2024-06-26", 100.00),
        ("Blusa Nike", 250, "2024-05-23", 160.00),
        ("Blusa Champions", 100, "2024-03-16", 200.00),
        ("Perfume Malbec", 250, "2024-05-22", 130.00),
        ("Óculos Oakley Juliet 24K", 20, "2024-03-10", 900.00),
        ("Tênis Oakley", 90, "2024-05-20", 300.00);
        
SELECT * FROM tb_produtos WHERE valor > 500.00;

SELECT * FROM tb_produtos WHERE valor < 500.00;

UPDATE tb_produtos SET nome = "Tênis Nike Air Max 01" WHERE id = 1;

SELECT * FROM tb_produtos WHERE id = 1;