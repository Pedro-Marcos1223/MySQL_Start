CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id_cat BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR (50),
quantidade BIGINT (4),
data_de_validade VARCHAR (100)
);

INSERT INTO tb_categoria(categoria, quantidade, data_de_validade)
VALUES ("Bovina", 200, "Data de validade: 30/12/2022"),
("Ave", 150, "Data de validade: 30/12/2022"),
("Peixe", 100, "Data de validade: 30/12/2022"),
("Suína", 200, "Data de validade: 30/12/2022"),
("Ovina", 50, "Data de validade: 30/12/2022");

CREATE TABLE tb_produto(
id_prod BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (50),
peso DECIMAL (10,2), 
preco DECIMAL (3),
quantidade BIGINT (4),
cat_id BIGINT,

FOREIGN KEY (cat_id) REFERENCES tb_categoria (id_cat)
);

INSERT INTO tb_produto(nome, peso, preco, quantidade, cat_id)
VALUES ("Picanha", 1.00, 70.00, 100, 1),
("Costela", 1.00, 50.00, 100, 1),
("Frango a passarinho", 1.00, 22.00, 150, 2),
("Lombo", 1.00, 40.00, 100, 4),
("Linguiça-Calabresa", 1.00, 12.00, 100, 4),
("Atum", 1.00, 35.00, 50, 3),
("Sardinha", 1.00, 19.00, 50, 3),
("Pernil", 1.00, 97.00, 50, 5);

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT tb_produto.nome, tb_produto.preco, tb_categoria.categoria
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.cat_id = tb_categoria.id_cat
WHERE tb_produto.cat_id = 3;

 

