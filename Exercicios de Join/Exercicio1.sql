CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (100) NOT NULL,
item_inicial VARCHAR (100),
poder_especial VARCHAR (200),

PRIMARY KEY (id)
);

INSERT INTO tb_classe(nome, item_inicial, poder_especial)
VALUES ("Arqueiro_Batedor_multiplo", "Arco composto (Dano: 1d8)", 
"Ultimate: Dispara três flecha super sônica causando 1d20+7 de dano e lentidão aos alvos");

INSERT INTO tb_classe(nome, item_inicial, poder_especial)
VALUES ("Arqueiro_tiro_certeiro", "Arco recurvo (Dano: 1d5+2)", 
"Ultimate: Caso o arqueiro acertar um tiro a cabeça do alvo, o alvo não tanka e vai de base
instanteamente.  ");

INSERT INTO tb_classe(nome, item_inicial, poder_especial)
VALUES ("Mago_IMPLACAVEL", "Pauzinho da magia (Dano: 1d4+dano da magia)", 
"Ultimate: O mago é implacavel. Ele solta uma bola de fogo do tamanho de uma vila,
causando destruição a todos a sua volta. (Dano: 10d20 em todos no local exceto o conjurador)");

INSERT INTO tb_classe(nome, item_inicial, poder_especial)
VALUES ("Ladino", "Adaga Serrilhada (Dano: 1d6)", 
"Ultimate: Todo dano que for inesperado pelo alvo, será multiplicado pelo modificador de nvl
do ladino. Ex: Ladino nvl 9 pega um cara de costinhas e da uma facadona, 
o alvo irá tomar 1d6*9");

INSERT INTO tb_classe(nome, item_inicial, poder_especial)
VALUES ("Guerreiro", "Machadão de guerra de duas cabeças (Dano: muito)", 
"Ultimate_Não Passarão: O guereiro se coloca a frente da batalha tankando todo o dano
voltado aos seus aliados, fazendo com que ninguem va de base.");

INSERT INTO tb_classe(nome, item_inicial, poder_especial)
VALUES ("Druida", "Graveto aleatorio ai (dano: 0)", 
"Ultimate_Polimorfia: O Druida se transforma em qualquer animal que ele quiser. Quando em sua
forma animal, ele mantem a habilidade de poder falar, mesmo sendo um animal.");

CREATE TABLE tb_personagem(
id_pj BIGINT AUTO_INCREMENT,
nome_char VARCHAR (100) NOT NULL,
idade_char BIGINT (3),
poder_ataque BIGINT (6),
poder_defesa BIGINT (6),
raca VARCHAR (50),
classe BIGINT NOT NULL,

PRIMARY KEY (id_pj),
FOREIGN KEY (classe) REFERENCES tb_classe (id)
);

INSERT INTO tb_personagem(nome_char, idade_char, poder_ataque, poder_defesa, raca, classe)
VALUES ("Thomelur", 22, 4000, 1200, "Humano", 3);

INSERT INTO tb_personagem(nome_char, idade_char, poder_ataque, poder_defesa, raca, classe)
VALUES ("Vermerin", 30, 2000, 1999, "Anão", 5);

INSERT INTO tb_personagem(nome_char, idade_char, poder_ataque, poder_defesa, raca, classe)
VALUES ("Amaregolas", 20, 1999, 450, "Elfo", 2);

INSERT INTO tb_personagem(nome_char, idade_char, poder_ataque, poder_defesa, raca, classe)
VALUES ("Shieda Akyn", 24, 3000, 600, "Tiefling", 4);

INSERT INTO tb_personagem(nome_char, idade_char, poder_ataque, poder_defesa, raca, classe)
VALUES ("Haldrum ", 100, 1500, 1900, "Draconato", 5);

INSERT INTO tb_personagem(nome_char, idade_char, poder_ataque, poder_defesa, raca, classe)
VALUES ("Castiel", 400, 2200, 400, "Fada", 6);

INSERT INTO tb_personagem(nome_char, idade_char, poder_ataque, poder_defesa, raca, classe)
VALUES ("Daren", 60, 2000, 1600, "Humano", 5);

INSERT INTO tb_personagem(nome_char, idade_char, poder_ataque, poder_defesa, raca, classe)
VALUES ("Sr. Roser", 50, 1800, 1250, "Elfo", 5);

SELECT * FROM tb_personagem WHERE poder_ataque > 2000;

SELECT * FROM tb_personagem WHERE poder_defesa >= 1000 AND poder_defesa <= 2000;

SELECT * FROM tb_personagem WHERE nome_char like "%c%";

SELECT tb_personagem.nome_char, tb_classe.nome, tb_personagem.poder_ataque, tb_personagem.poder_defesa
FROM tb_personagem
INNER JOIN tb_classe 
ON tb_personagem.classe = tb_classe.id
WHERE tb_classe.nome = "Arqueiro_tiro_certeiro"



