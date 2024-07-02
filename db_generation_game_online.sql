CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT,
elemento VARCHAR(50) NOT NULL,
descricao VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
genero VARCHAR(100) NOT NULL,
ataque DECIMAL(5),
defesa DECIMAL(5),
classesid BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classesid) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes (elemento, descricao) 
VALUES ("Fogo", "Paladino"),
        ("Ar", "Mago"),
        ("Água", "Sacerdote"),
        ("Terra", "Bárbaro"),
        ("Terra", "Arqueiro");
        
INSERT INTO tb_personagens (nome, genero, ataque, defesa, classesid)
VALUES ("Marcin", "Masculino", 2000, 1000, 5),
        ("QQ Joel", "Masculino", 1000, 500, 4),
        ("Flavin Matador", "Masculino", 4000, 1500, 1),
        ("zCamargo", "Masculino", 2000, 500, 5),
        ("AgathaX", "Feminino", 3000, 1000, 2),
        ("Matador 13", "Masculino", 4000, 3000, 4),
        ("Paloma Matadora de NB", "Feminino", 5000, 2000, 2),
        ("Sacer Bianca", "Feminino", 1500, 3000, 3);
        
SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, ataque, defesa, tb_classes.elemento, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classesid = tb_classes.id;

SELECT nome, ataque, defesa, genero, tb_classes.descricao 
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classesid = tb_classes.id WHERE descricao = 'Arqueiro';