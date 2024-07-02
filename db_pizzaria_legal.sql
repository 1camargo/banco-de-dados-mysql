CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(7) NOT NULL,
massa VARCHAR(8) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
valor DECIMAL(5,2) NOT NULL,
tamanho CHAR(1) NOT NULL,
categoriasid BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoriasid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, massa)
VALUES ("Salgada", "Fina"),
		("Salgada", "Grossa"),
        ("Salgada", "PAN"),
        ("Salgada", "Vegana"),
        ("Doce", "Fina"),
        ("Doce", "Vegana");
        
SELECT * FROM tb_categorias;
        
INSERT INTO tb_pizzas (nome, tamanho, valor, categoriasid)
VALUES ("Mussarela", "P", 35.00, 1),
		("Portuguesa", "M", 45.00, 2),
		("Calabresa", "G", 60.00, 3),
		("Mussarela c/ Milho", "F", 80.00, 4),
			("Banana Nevada", "F", 105.00, 5),
			("Chocolate c/ M&M's", "M", 50.00, 6),
			("Cholate c/ Morango", "G", 65.00, 5),
			("Banana c/ Canela", "P", 40.00, 6);
                
SELECT * FROM tb_pizzas WHERE valor > 45.00;
                
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, tamanho, valor, tb_categorias.tipo, tb_categorias.massa 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriasid = tb_categorias.id;

SELECT nome, tamanho, valor, tb_categorias.tipo, tb_categorias.massa
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriasid = tb_categorias.id WHERE tipo = 'Doce';