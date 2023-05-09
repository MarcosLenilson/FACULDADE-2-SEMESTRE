################################# >>>>> JUNÇÂO DE DADOS (JOIN) INTERNA E EXTERNA <<<<< #################################
				################################# LIVRO TEXTO PAG 100 #################################
			  ################################# CW3 - UNIDADE 3 SEÇÂO 01 #################################

## QUAL É A FINALIDADE DE UMA JUNÇÃO ??
	-- É UTILIZADAS PARA REALIZAR CONSULTAS EM MULTIPLAS ABELAS 

## As condições para se efetuar uma junção dependem diretamente do tipo de junção e de uma condição de junção, dessa forma, com o SQL, será possível retornar relações como resultados. 
	-- Tipo de Junção: define/trata as tuplas em cada uma das relações que não corresponda a alguma das tuplas da outra relação, sendo dividido em relação interna, com o comando INNER JOIN, e relações externas, LEFT JOIN, RIGHT JOIN e FULL JOIN.
    -- Condição de Junção: define se as tuplas nas duas relações são correspondentes, garantindo que os atributos utilizados em ambas as tabelas estejam presentes tanto na sintaxe SQL como nos seus resultados

CREATE DATABASE SuperGames;
USE SuperGames;

CREATE TABLE localizacao(
	Id INT(3) PRIMARY KEY AUTO_INCREMENT,
	Secao VARCHAR(50) NOT NULL,
	Prateleira INT(3) NOT NULL
);

CREATE TABLE  jogo(
	Cod INT(3) PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(50) NOT NULL,
	Valor DECIMAL(6, 2) NOT NULL,
	Localizacao_Id INT(3) NOT NULL,
	FOREIGN KEY (Localizacao_Id) REFERENCES Localizacao(Id)
);

########## CRIAÇÂO DO BANCO DE DADOS (LOJA) ##########

CREATE DATABASE Loja;
USE Loja;

CREATE TABLE Categoria(
	Id INT(3) PRIMARY KEY AUTO_INCREMENT,
	Nome varchar(50) NOT NULL
);

SELECT * FROM Categoria;

########## CRIAÇÂO DA TABELAS (PRODUTO E CATEGORIA) ##########

CREATE TABLE Produto(
	Codigo INT(3) PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(50) NOT NULL,
	Valor DECIMAL(6, 2) NOT NULL,
	Id_Categoria INT(3) NOT NULL,
	FOREIGN KEY (Id_Categoria) REFERENCES Categoria(Id)
);

SELECT * FROM Produto;

########## INSERINDO DADOS NAS TABELAS (PRODUTO E CATEGORIA) ##########

INSERT Categoria 
VALUES (0, "DVD"),(0, "Livro"),(0, "Informática");

INSERT Categoria 
VALUES (0, "Eletronicos");

INSERT Produto 
VALUES (0, "Código da Vinci", "39.99", 2),(0, "Hancock", "89.99", 1),(0, "Dario de um Mago", "19.99", 2),(0, "Eu sou a lenda", "39.99", 1),(0, "Laptop Lonovo", "539.99", 3);


## PARAMETRO JOIN
	-- Unir duas ou mais tabelas, ao se apontar os campos correspondentes entre elas.
    
## tipos de JOIN: INNER, LEFT e RIGHT JOIN
	-- INNER JOIN = Junção interna
    -- LEFT  JOIN = Junção externa
    -- RIGHT JOIN = Junção externa
    -- A palavra “ON” tem a função de fazer o apontamento da chave primária da tabela “Categoria” para a chave estrangeira da tabela “Produto”.
    -- Podemos usar WHERE para condições específicas 
    
-- ## INNER JOIN = Junção interna
SELECT categoria.nome, produto.nome  -- Campo a ser pesquisado
	FROM Categoria INNER JOIN Produto -- Tabelas (primeira JOIN segunda)
	ON Categoria.Id = Produto.Id_Categoria -- Categoria.Id => tabela_01 (Chave primária) e Produto.Id_Categoria => tabela_02 (Chave estrangeira)
	WHERE produto.valor >= 50.00;
	
    ## SAIDA 
		#   nome	nome
		#   Livro	Código da Vinci
		#	Livro	Dario de um Mago
		#	DVD		Eu sou a lenda


-- LEFT  JOIN = Junção externa
	-- No comando LEFT JOIN, as linhas da tabela da esquerda são projetadas na seleção, juntamente com as linhas não combinadas da tabela da direita. 
	-- Na INTERSECÇÂO pega TODOS os dados da tabela "A" inclusive os que fazer referencia com a tabela "B"
    
SELECT categoria.nome as "Tipo", produto.nome as "Produto", produto.valor
	FROM Categoria LEFT JOIN Produto
	ON Categoria.Id = Produto.Id_Categoria; 

-- RIGHT JOIN = Junção externa
	-- No comando LEFT JOIN, as linhas da tabela da direita são projetadas na seleção, juntamente com as linhas não combinadas da tabela da esquerda. 
	-- Na INTERSECÇÂO pega TODOS os dados da tabela "B" inclusive os que fazer referencia com a tabela "A"
    -- Temos aqui a mesma consulta quando usado INNE JOIN, pois não temos na tabela "PRODUTO" nenhum produto cadastrado que sem que ele tenha uma categoria associado a ele.
    
SELECT categoria.nome as "Tipo", produto.nome as "Produto", produto.valor
	FROM Categoria RIGHT JOIN Produto
	ON Categoria.Id = Produto.Id_Categoria; 
    

################################# LIVRO TEXTO PAG 112 #################################
################################# SEM MEDO DE ERRA #################################

## USANDO A TABELA ''SUPERGAMES''
SELECT * FROM jogo;
SELECT * FROM localizacao;


## Foi atribuído a você o desenvolvimento de três scripts SQL para identificação de jogos, prateleiras, categorias e preços. 

INSERT localizacao 
VALUES (0, "Guerra", "001"),
(0, "Guerra", "002"),
(0, "Aventura", "100"),
(0, "Aventura", "101"),
(0, "RPG", "150"),
(0, "RPG", "151");

INSERT jogo 
VALUES (0, "COD 3", 125.00, 1),
(0, "BF 1", 150.00, 2),
(0, "GOW 4", 200.00, 3),
(0, "SLY", 99.00, 4),
(0, "FF XV", 205.00, 5);


## 1. Identificar o nome do jogo e a prateleira, fornecendo o nome de uma seção;

SELECT jogo.nome, localizacao.prateleira 
	FROM jogo INNER JOIN localizacao 
	ON localizacao.Id = jogo.localizacao_Id;


## 2. Identificar o nome dos jogos da seção de jogos de guerra.

SELECT jogo.nome 
	FROM jogo INNER JOIN localizacao
	ON localizacao.Id = jogo.localizacao_Id
    WHERE secao = "Guerra";

## 3. Identificar todas as seções e os respectivos nomes dos jogos, ordenando as seleções em ordem crescente pelo nome dos jogos.

SELECT localizacao.secao, jogo.nome 
	FROM localizacao LEFT JOIN jogo
	ON localizacao.Id = jogo.localizacao_Id 	
    ORDER BY jogo.nome;
