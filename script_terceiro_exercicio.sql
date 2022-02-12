CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id BIGINT (4) AUTO_INCREMENT,
nome VARCHAR (200),
serie VARCHAR (30),
turma BIGINT (1), 
media BIGINT (2),
aprovado BOOLEAN,

PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, serie, turma, media, aprovado)
VALUES ("Pedro", "3º Serie-Ensino-Medio", 5, 10, true);

INSERT INTO tb_alunos(nome, serie, turma, media, aprovado)
VALUES ("João", "2º Serie-Ensino-Medio", 3, 3, FALSE);

INSERT INTO tb_alunos(nome, serie, turma, media, aprovado)
VALUES ("Gabriela ", "1º Serie-Ensino-Medio", 7, 8, true);

INSERT INTO tb_alunos(nome, serie, turma, media, aprovado)
VALUES ("Jenifer", "2º Serie-Ensino-Medio", 3, 7, true);

INSERT INTO tb_alunos(nome, serie, turma, media, aprovado)
VALUES ("Fernando", "1º Serie-Ensino-Medio", 2, 4, FALSE);

INSERT INTO tb_alunos(nome, serie, turma, media, aprovado)
VALUES ("Carol", "3º Serie-Ensino-Medio", 2, 9, true);

INSERT INTO tb_alunos(nome, serie, turma, media, aprovado)
VALUES ("Pedro", "2º Serie-Ensino-Medio", 1, 5, FALSE);

INSERT INTO tb_alunos(nome, serie, turma, media, aprovado)
VALUES ("Stephany", "3º Serie-Ensino-Medio", 5, 10, TRUE);

SELECT * FROM tb_alunos WHERE media > 7;

SELECT * FROM tb_alunos WHERE media < 7;

UPDATE tb_alunos SET nome = "Vinicius" WHERE id = 7;


    
     
     
    
    
    