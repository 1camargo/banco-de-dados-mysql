CREATE DATABASE db_registroescola;

USE db_registroescola;

CREATE TABLE tb_estudantes (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    serie VARCHAR(200) NOT NULL,
    nota DECIMAL(3,1),
    PRIMARY KEY (id)
    );
    
    INSERT INTO tb_estudantes (nome, data_nascimento, serie, nota) 
    VALUES ("Pedro", "2000-06-24", "9° Ano", 10.0),
		("Felipe", "2000-07-24", "9° Ano", 10.0),
        ("Antônio", "2002-01-20", "1° Ano", 7.0),
        ("Fernanda", "2001-02-20", "2° Ano", 6.0),
        ("João", "2000-05-24", "3° Ano", 9.0),
        ("Stephany", "2010-07-24", "5° Ano", 9.0),
        ("Pedro Augusto", "2010-05-03", "4° Ano", 10.0),
        ("Laura", "2020-04-13", "4° Ano", 10.0);
        
        SELECT * FROM tb_estudantes WHERE nota > 7.0;
        
        SELECT * FROM tb_estudantes WHERE nota < 7.0;
        
        UPDATE tb_estudantes SET serie = "3° Ano" WHERE id = 3;