-- Criação do Banco de Dados Quitanda
CREATE DATABASE db_quitanda;

-- Usar o Banco de Dados
USE db_quitanda;

-- Criação de uma tabela Produtos
CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT, 	-- 1, 2, 3, N
    nome VARCHAR(255) NOT NULL, -- Nome = "1 a 255 caracteres"
    quantidade INT, 			-- 
    datavalidade DATE, 
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
    ); -- Sempre usar o ; para não ocorrer erro na criação da próxima tabela
    
    -- Inserindo valores(produtos) na tabela
    INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
    VALUES ("Tomate", 100, "2023-12-15", 8.00);
    
    INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
	VALUES ("maçã",20, "2023-12-15", 5.00);
	INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
	VALUES ("laranja",50, "2023-12-15", 10.00);
	INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
	VALUES ("banana",200, "2023-12-15", 12.00);
	INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
	VALUES ("uva",1200, "2023-12-15", 30.00);
	INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
	VALUES ("pêra",500, "2023-12-15", 2.99);
    
    SELECT * FROM tb_produtos; -- Verificando os valores que estão na tabela utlizando o * (traz todos os campos)
    
    SELECT nome, quantidade FROM tb_produtos; -- Verificando e solicitando os campos nome e quantidade na tabela
    
    SELECT * FROM tb_produtos WHERE id = 2; -- Pesquisa específica no ID 2 usando o WHERE
    
    -- Alterar a estrutura do banco/tabela
    ALTER TABLE tb_produtos 
    MODIFY preco DECIMAL(6,2);
    
    -- Alterar um dado/campo
    UPDATE tb_produtos SET preco = 3.00 WHERE id = 6;
    UPDATE tb_produtos SET preco = 3.00 WHERE nome = "maça"; -- Não foi possível por conta 
    
    SELECT * FROM tb_produtos WHERE id = 6;