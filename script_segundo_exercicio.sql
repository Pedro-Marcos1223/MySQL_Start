CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT(5) AUTO_INCREMENT,
nome_produto VARCHAR(200),
preco DECIMAL(10,2),
frete VARCHAR (100), 
nome_vendedor VARCHAR (100),
envio_de VARCHAR (150),

PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome_produto, preco, frete, nome_vendedor, envio_de)
VALUES ("Jogo: Elder Ring", 300.00, "Frete Gratuito", "Souls-like Games", "São-Paulo");

INSERT INTO tb_produtos(nome_produto, preco, frete, nome_vendedor, envio_de)
VALUES ("Jogo: Dark Souls I", 80.00, "Frete Gratuito", "Souls-like Games", "Rio de Janeiro");

INSERT INTO tb_produtos(nome_produto, preco, frete, nome_vendedor, envio_de)
VALUES ("Jogo: Dark Souls II", 100.00, "Frete Gratuito", "Souls-like Games", "Minas Gerais");

INSERT INTO tb_produtos(nome_produto, preco, frete, nome_vendedor, envio_de)
VALUES ("Jogo: Bloodborne", 200.00, "Frete Gratuito", "Souls-like Games", "São-Paulo");

INSERT INTO tb_produtos(nome_produto, preco, frete, nome_vendedor, envio_de)
VALUES ("Jogo: Dark Souls III", 180.00, "Frete Gratuito", "Souls-like Games", "São-Paulo");

INSERT INTO tb_produtos(nome_produto, preco, frete, nome_vendedor, envio_de)
VALUES ("Jogo: Sekiro", 220.00, "Frete Gratuito", "Souls-like Games", "São-Paulo");

INSERT INTO tb_produtos(nome_produto, preco, frete, nome_vendedor, envio_de)
VALUES ("Jogo: Demon Souls", 170.00, "Frete Gratuito", "Souls-like Games", "São-Paulo");

INSERT INTO tb_produtos(nome_produto, preco, frete, nome_vendedor, envio_de)
VALUES ("Jogo: Cup-Head", 210.00, "Frete Gratuito", "Souls-like Games", "São-Paulo");

SELECT * FROM tb_produtos WHERE PRECO > 150.00;

SELECT * FROM tb_produtos WHERE PRECO < 150.00;

UPDATE tb_produtos SET preco = 200.00 WHERE id = 7;


    
     
     
    
    
    