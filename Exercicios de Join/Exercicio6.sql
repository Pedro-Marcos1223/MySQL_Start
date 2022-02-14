CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
fk_id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR (100),
mensalidade decimal (10,2)
);

INSERT INTO tb_categoria(categoria, mensalidade)
VALUES ("Matematica", 29.90),
("Linguas", 51.90),
("Cinencias", 29.90),
("Programação", 23.90),
("Culinaria", 27.90);

CREATE TABLE tb_curso(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100), 
carga_horaria BIGINT (3),
professor VARCHAR (100), 
id_c BIGINT NOT NULL,

FOREIGN KEY (id_c) REFERENCES tb_categoria (fk_id)
);

INSERT INTO tb_curso(nome, carga_horaria, professor, id_c)
VALUES ("Curso de ingles", 700, "Mairo Vergara", 2),
("Curso de Frances", 800, "Mairo Vergara", 2),
("Curso de Matematica basica", 180, "Joselito", 1),
("Curso de Astrologia ", 500, "Serjão", 3),
("Curso de Java", 160, "Anderson Uzumaki", 4),
("Curso de Mysql", 160, "Boaz", 4),
("Curso de culinaria Masterchef", 700, "Fogazza", 5),
("Curso de culinaria Masterchef", 700, "Jacquin", 5);

SELECT * FROM tb_categoria WHERE mensalidade > 50.00;

SELECT * FROM tb_categoria WHERE mensalidade BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_curso WHERE nome LIKE "%j%";

SELECT tb_curso.nome, tb_curso.carga_horaria, tb_categoria.categoria, tb_categoria.mensalidade
FROM tb_curso
INNER JOIN tb_categoria
ON tb_curso.id_c = tb_categoria.fk_id
WHERE tb_curso.id_c = 4;

DROP DATABASE db_cursoDaMinhaVida;



 

