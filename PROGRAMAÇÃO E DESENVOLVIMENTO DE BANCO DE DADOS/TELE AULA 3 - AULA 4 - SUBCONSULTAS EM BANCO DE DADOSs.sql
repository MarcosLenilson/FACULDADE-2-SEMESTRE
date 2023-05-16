################################# >>>>> SUBCONSULTAS EM BANCO DE DADOS <<<<< #################################
		  ################################# LIVRO TEXTO PAG 137 #################################
	    ################################ CW3 - UNIDADE 3 SEÇÂO 03 #################################
        
## Permite cinstruir consultas anhinhadas, utilizando o resultado de outra consulta        
        
## SUBCONSULTAS   
	-- Uma subconsulta é uma expressão em SQL, composta por SELECT-FROM-WHERE, que é aninhada dentro de outra consulta, permitindo fazer comparações entre os conjuntos de dados.
    -- UTILIZA-SE os comandos IN e NOT IN
    
CREATE DATABASE faculdade;
USE faculdade;

CREATE TABLE aluno (
	ra INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome CHAR(50) NOT NULL,  
	endereço CHAR(50) NOT NULL,
    semestre CHAR(50) NOT NULL,
	cr INT(3) NOT NULL 
); 

ALTER TABLE aluno
	ADD telefone CHAR(15) NOT NULL;

SELECT * FROM aluno;

CREATE TABLE curso (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome CHAR(50) NOT NULL
);

CREATE TABLE disciplina (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome CHAR(50) NOT NULL
	-- inserir as características de cada disciplina (Carga Horária, Semestre em que é minstrada, e conteúdo, que deve ser um	campo de texto de 500 caracteres
);

INSERT aluno 
	VALUES(10, "Maria", "Rua 123 Pereira", "1ª semestre", NULL); 


