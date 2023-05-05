########################################################     CRIANDO AS TABELAS     ########################################################
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
VALUES('Quinzinho de Barros', 'Instituição'),('Parque Estadual do Jalapão', 'Atrativo'),('Torre Eiffel', 'Atrativo'),('Fogo de Chão', 'Serviço');
SELECT * FROM ponto_tur;


########################################################     ALTERANDO AS TABELAS     ########################################################

-- Alterando para atrativo o primeiro ponto turistico
UPDATE ponto_tur SET tipo = 'ATRATIVO' WHERE id = 9;
SELECT * FROM ponto_tur;

-- Alterando o segundo pais (Índia) para o cod. 'IND'
UPDATE pais SET codigo = 'IND' WHERE id = 2;
SELECT * FROM pais;

-- Deletando a primeira cidade
DELETE FROM cidade WHERE id = 1;
SELECT * FROM cidade;


########################################################    CRIANDO UMA NOVA TABELA    ########################################################

-- Apos as alterações, surgiram novos questionamentos referente as linguagens dos paises, sendo assim, teremos que cria uma nova tabela

CREATE TABLE IF NOT EXISTS linguagemPais(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    codigoPais INT(11),
    linguagem VARCHAR(30) NOT NULL DEFAULT '',
    oficial ENUM('SIM', 'NÃO') NOT NULL DEFAULT 'NÃO'
);

DESCRIBE pais;

-- Criar integridade referencial entre as tabelas liguagemPais e pais  
ALTER TABLE linguagempais
	ADD CONSTRAINT FK_linguagempais 
	FOREIGN KEY (codigoPais)
	REFERENCES pais(id);

DESCRIBE linguagemPais;

-- Modificar o código do pais para ser obrigatorio a inclusão
ALTER TABLE linguagempais MODIFY codigoPais INT NOT NULL;

########################################################    AVANCANDO NA PRÁTICA    ########################################################
### >>>>> LIVRO TEXTO - UNIDADE 2 PAG 84 <<<<<

CREATE DATABASE faculdade;
USE faculdade;

CREATE TABLE aluno(
	ra INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome CHAR(50) NOT NULL,
    endereço CHAR(50) NOT NULL,
	curso CHAR(30) NOT NULL,
    semestre CHAR(20) NOT NULL,
    cr INT NOT NULL
);	

CREATE TABLE curso (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome CHAR(50) NOT NULL
);

CREATE TABLE disciplina(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome CHAR(50) NOT NULL,
    carga_horaria CHAR(10) NOT NULL,
    semestre CHAR(20) NOT NULL,
    conteudo CHAR(255)
);
