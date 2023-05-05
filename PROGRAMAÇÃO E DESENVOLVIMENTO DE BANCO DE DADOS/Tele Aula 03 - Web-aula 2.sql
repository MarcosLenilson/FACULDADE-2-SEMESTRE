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


CREATE DATABASE Loja;
USE Loja;

CREATE TABLE Categoria(
	Id INT(3) PRIMARY KEY AUTO_INCREMENT,
	Nome varchar(50) NOT NULL
);

SELECT * FROM Categoria;

CREATE TABLE Produto(
	Codigo INT(3) PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(50) NOT NULL,
	Valor DECIMAL(6, 2) NOT NULL,
	Id_Categoria INT(3) NOT NULL,
	FOREIGN KEY (Id_Categoria) REFERENCES Categoria(Id)
);

SELECT * FROM Produto;


INSERT Categoria 
VALUES (0, "DVD"),(0, "Livro"),(0, "Informática");

INSERT Produto 
VALUES (0, "Código da Vinci", "39.99", 2),(0, "Hancock", "89.99", 1),(0, "Dario de um Mago", "19.99", 2),(0, "Eu sou a lenda", "39.99", 1);














