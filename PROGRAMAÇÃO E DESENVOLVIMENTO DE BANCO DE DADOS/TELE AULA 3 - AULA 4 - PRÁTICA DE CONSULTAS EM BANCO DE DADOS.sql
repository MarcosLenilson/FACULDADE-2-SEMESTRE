################################# >>>>> PRÁTICA DE CONSULTAS EM BANCO DE DADOS <<<<< #################################
			  ################################# LIVRO TEXTO PAG 130 #################################

CREATE DATABASE SuperGames;
USE SuperGames;
        
CREATE TABLE localizacao(
	Id INT(3) PRIMARY KEY AUTO_INCREMENT,
	Secao VARCHAR(50) NOT NULL,
	Prateleira INT(3) ZEROFILL NOT NULL
);

CREATE TABLE  jogo(
	Cod INT(3) PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(50) NOT NULL,
	Valor DECIMAL(6, 2) NOT NULL,
	Localizacao_Id INT(3) NOT NULL,
	FOREIGN KEY (Localizacao_Id) REFERENCES Localizacao(Id)
);

INSERT localizacao 
VALUES (0, "Guerra", "001"),
(0, "Guerra", "002"),
(0, "Aventura", "100"),
(0, "Aventura", "101"),
(0, "RPG", "150"),
(0, "RPG", "151"),
(0, "Plataforma 2D", "200"),
(0, "Plataforma 2D", "201");

INSERT jogo 
VALUES (0, "COD 3", 125.00, 1),
(0, "BF 1", 150.00, 2),
(0, "Zelda Botw", 200.00, 3),
(0, "Zelda Oot", 99.00, 4),
(0, "Chrone T", 205.00, 5);

SELECT * FROM localizacao;
SELECT * FROM jogo;


## 1. Identificar o nome do jogo e a prateleira, dando o nome de uma seção.

SELECT jogo.nome, localizacao.prateleira 
FROM jogo INNER JOIN localizacao
ON localizacao.id = jogo.localizacao_Id;

## 2. Identificar o nome dos jogos da seção de jogos de Aventura. 

SELECT jogo.nome, localizacao.prateleira, localizacao.secao
FROM jogo INNER JOIN localizacao
ON localizacao.id = jogo.localizacao_Id
WHERE secao = "Aventura";

## 3. Identificar todas as seções e os respectivos nomes dos jogos, ordenando as seleções em ordem crescente pelo nome dos jogos. 

SELECT jogo.nome, localizacao.prateleira, localizacao.secao
FROM localizacao LEFT JOIN jogo
ON localizacao.id = jogo.localizacao_Id
ORDER BY jogo.nome ASC;

## 4. Identificar o nome dos jogos da seção de jogos e guerra, por serem os mais procurados.

SELECT jogo.nome, localizacao.prateleira, localizacao.secao
FROM jogo INNER JOIN localizacao
ON localizacao.id = jogo.localizacao_Id
WHERE secao = "Guerra";


#################### FUNÇÔES DE AGREGAÇÂO ####################

-- A quantidade de registros na tabela jogo
SELECT COUNT(*) AS "Quantidades de Registros" FROM jogo;

-- O valor do jogo de MAIOR preço(valor)
SELECT MAX(valor) FROM jogo;
SELECT * FROM jogo;

-- O valor do jogo de MENOR preço(valor)
SELECT jogo.nome, MIN(valor)
FROM jogo
WHERE jogo.valor = (SELECT MIN(valor) FROM jogo);


-- O valor médio dos jogos de guerra.
SELECT AVG(valor) AS "Media Guerra"
FROM jogo INNER JOIN localizacao
ON Localizacao_Id = jogo.Localizacao_Id
WHERE localizacao.Secao = "Guerra";

-- O valor total em estoque na loja.
SELECT SUM(valor) AS "TOTAL" FROM jogo;
