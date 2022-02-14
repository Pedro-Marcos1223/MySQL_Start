CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
fk_id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100),
entrega VARCHAR (100)
);

INSERT INTO tb_categoria(nome, entrega)
VALUES ("PIZZA", "COMER NO LOCAL"),
("PIZZA", "ENTRRGA NA RESIDENCIA"),
("PASTEL", "COMER NO LOCAL"),
("PIZZA", "ENTREGA NA RESIDENCIA"),
("CHURROS", "COMER NO LOCAL"),
("CHURROS", "ENTREGA NA RESIDENCIA");

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT PRIMARY KEY, 
sabor VARCHAR (100),
tamanho VARCHAR (100),
igredientes_extras VARCHAR (100),
molho_acompanhamento VARCHAR (100),
preco decimal (10,2),
id_cat BIGINT NOT NULL, 

FOREIGN KEY (id_cat) REFERENCES tb_categoria (fk_id)
);

INSERT INTO tb_produto (sabor, tamanho, igredientes_extras, molho_acompanhamento, preco, id_cat)
VALUES ("Chocolate", "Grande", "Uva e morango", "ganache-branco", 60.00, 2),
("Frango c/ Catupiry", "Grande", "Bacon e palmito", "Katchup apimentado", 75.00, 1),
("Carne seca com queijo", "30cm", "Bacon", "Katchup", 14.00, 3),
("4 Queijos", "15cm", "Pimentão", "Maionese artesanal", 8.00, 4),
("Churros de doce de leite", "15cm", "granulado", "Doce de leite extra", 5.00, 5),
("Churros de Chocolate", "30cm", "granulado", "Ganache branco", 8.50, 6),
("Calabresa", "Grande", "Bacon e palmito", "Katchup", 40.00, 1),
("Apimentada", "pequena", "Bacon apimentado", "Katchup apimentado", 35.00, 2);

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto WHERE sabor LIKE "%c%";

SELECT tb_produto.sabor, tb_produto.preco, tb_categoria.nome, tb_categoria.entrega
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_cat = tb_categoria.fk_id
WHERE tb_produto.id_cat = 2;

 DROP DATABASE db_pizzaria_legal;

