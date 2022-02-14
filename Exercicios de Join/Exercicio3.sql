CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria( 
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR (200),
corredor BIGINT (1), 
responsavel_por_revisar VARCHAR (100)
);

INSERT INTO tb_categoria(categoria, corredor, responsavel_por_revisar)
VALUES ("Cosmeticos", 2, "Pedro");

INSERT INTO tb_categoria(categoria, corredor, responsavel_por_revisar)
VALUES ("Medicinal ", 5, "Marcos");

INSERT INTO tb_categoria(categoria, corredor, responsavel_por_revisar)
VALUES ("Alimentos", 3, "Pedro");

INSERT INTO tb_categoria(categoria, corredor, responsavel_por_revisar)
VALUES ("Produtos para a saude", 1, "Marcos");

INSERT INTO tb_categoria(categoria, corredor, responsavel_por_revisar)
VALUES ("Saneante", 4, "Pedro");

CREATE TABLE tb_produto(
id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
produto VARCHAR (150) NOT NULL,
preco DECIMAL (10,2), 
fabricante VARCHAR (200),
descricao_ou_bula VARCHAR (300),
id_categoria BIGINT NOT NULL,

FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produto(produto, preco, fabricante, descricao_ou_bula, id_categoria)
VALUES ("Topiramato", 100.00, "Eurofarma Laboratorios", "O medicamento não é recomentado
gestantes ou casos de dengue.", 2);

INSERT INTO tb_produto(produto, preco, fabricante, descricao_ou_bula, id_categoria)
VALUES ("Cefaliv", 40.00, "Eurofarma Laboratorios", "O medicamento não é recomentado
gestantes ou casos de dengue.", 2);

INSERT INTO tb_produto(produto, preco, fabricante, descricao_ou_bula, id_categoria)
VALUES ("Creme Asepxia", 27.00, "Genomma lab", "Sabonete anti acne.", 1);

INSERT INTO tb_produto(produto, preco, fabricante, descricao_ou_bula, id_categoria)
VALUES ("Esmalte", 7.00, "Darius", "Esmalte cores darius", 1);

INSERT INTO tb_produto(produto, preco, fabricante, descricao_ou_bula, id_categoria)
VALUES ("Trident de banana ", 2.00, "Trident", "chicletinho maneiro", 3);

INSERT INTO tb_produto(produto, preco, fabricante, descricao_ou_bula, id_categoria)
VALUES ("halls", 2.00, "Halls", "halls", 3);

INSERT INTO tb_produto(produto, preco, fabricante, descricao_ou_bula, id_categoria)
VALUES ("Gase", 7.00, "Gase", "usado para estancar sangue", 4);

INSERT INTO tb_produto(produto, preco, fabricante, descricao_ou_bula, id_categoria)
VALUES ("Alcool em gel", 10.00, "alcool em gel", "Alcool gel apenas", 5);

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto WHERE produto LIKE "%b%";

SELECT * 
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id
WHERE tb_categoria.id = 3;








