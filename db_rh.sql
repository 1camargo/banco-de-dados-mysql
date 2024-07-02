CREATE DATABASE db_departamentorh;

USE db_departamentorh;

CREATE TABLE tb_colaboradores (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(7,2) NOT NULL,
    PRIMARY KEY (id)
    );
    
    INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario)
    VALUE ("Gabriel", "1998-01-20", "Desenvolvedor", 1500.00);
    
    INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario)
    VALUE ("Jaqueline", "2000-02-19", "Instrutora de Treinamento", 2500.00);
    
    INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario)
    VALUE ("José", "1951-10-20", "Motorista", 3000.00);
    
    INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario)
    VALUE ("Carolina", "2000-01-04", "Gerente de Operações", 10000.00);
    
    INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario)
    VALUE ("Fernanda", "2006-01-19", "Técnica de Segurança", 4000.00);
    
    SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
    
    SELECT * FROM tb_colaboradores WHERE salario < 2000.00;
    
    UPDATE tb_colaboradores SET salario = 4000.00 WHERE id = 1;
    
    SELECT * FROM tb_colaboradores;