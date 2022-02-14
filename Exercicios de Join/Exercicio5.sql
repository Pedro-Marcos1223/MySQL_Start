CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR (50),
Setor BIGINT (2)
);

INSERT INTO tb_categoria(categoria, setor)
VALUES ("Piso e revestimento", 3),
("Ferramentas", 2),
("Material de construção ", 1),
("Material Hidraulico", 4),
("Metais e Acessorios", 5);

CREATE TABLE tb_produto(
id_p BIGINT AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR (50),
preco BIGINT (3),
quantidade BIGINT (5),
id_c BIGINT NOT NULL, 

FOREIGN KEY (id_c) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produto( nome, preco, quantidade, id_c)
VALUES ("Porcelanato esmaltado 90x90", 35, 20, 1),
("Porcelanato polido 90x90", 36, 20, 1),
("Kit de ferramentas com 129 peças", 49, 1, 2),
("Alicate universal 8", 33, 1, 2),
("Cimento todas as obras 50kg", 27, 4, 3),
("Argamassa colante", 29, 3, 3),
("Grelha reta 10x50cm", 39, 5, 4),
("Valvula de escoamento de pia", 32, 1, 5);

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT tb_produto.nome, tb_produto.preco, tb_categoria.categoria
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_c = tb_categoria.id
WHERE tb_produto.id_c = 2;



 

