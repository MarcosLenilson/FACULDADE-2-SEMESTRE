USE Guiatur;

CREATE TABLE pais(
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL DEFAULT '',
    continente ENUM('ÁSIA', 'AMÉRICA', 'AFRICA', 'OCEANIA', 'ANTARTICA') NOT NULL,
    codigo CHAR(3) NOT NULL
);

CREATE TABLE estado(
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL DEFAULT '',
    sigla CHAR(2) NOT NULL
);

CREATE TABLE cidade(
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL DEFAULT '',
    populacao INT NOT NULL
);

CREATE TABLE ponto_tur(
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nome VARCHAR(50) NOT NULL DEFAULT '',
    tipo ENUM('ATRATIVO', 'SERVIÇO', 'EQUIPAMENT', 'INFRAESTRUTURA', 'INSTITUIÇÃO') NOT NULL,
	publicado ENUM('SIM', 'NÃO') NOT NULL DEFAULT 'NÃO'
);

CREATE TABLE IF NOT EXISTS coordenada (
	latitude FLOAT(10, 6),
    longitude FLOAT(10, 6)
);

INSERT INTO pais (nome, continente, codigo)
VALUES('Brasil', 'América', 'BRA'),('Índia', 'Ásia', 'IDN'),('China', 'Ásia', 'CHI'),('Japão', 'Ásia', 'JPN');

SELECT * FROM pais;

INSERT INTO estado (nome, sigla)
VALUES('Maranhão', 'MA'),('São Paulo', 'SP'),('Santa Catarina', 'SC'),('Rio de Janeiro', 'RJ');

SELECT * FROM estado;

INSERT INTO cidade (nome, populacao)
VALUES('Sorocaba', 700000),('Déli', 26000000),('Xangai', 22000000),('Tóquio', 38000000);

SELECT * FROM cidade;

INSERT INTO ponto_tur (nome, tipo)
VALUES('Quinzinho de Barros', 'Instituição'),('Parque Estadual do Jalapão', 'Atrativo'),('Torre Eiffel', 'Atrativo'),('Fogo de Chão', 'Restaurante');

UPDATE ponto_tur SET tipo = 'SERVIÇO', publicado = 'SIM' WHERE id = 2;

SELECT * FROM ponto_tur;

UPDATE pais SET codigo = 'IND' WHERE id = 2;

SELECT * FROM pais;


DELETE FROM cidade WHERE id = 1;

SELECT * FROM cidade;


SHOW TABLES;