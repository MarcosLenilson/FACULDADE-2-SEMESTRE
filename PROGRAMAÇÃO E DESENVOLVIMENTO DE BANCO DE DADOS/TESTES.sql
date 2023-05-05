CREATE DATABASE IF NOT EXISTS evento
	DEFAULT CHARSET = utf8
    DEFAULT COLLATE = utf8_general_ci;

USE evento;

CREATE TABLE IF NOT EXISTS convidados (
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    endereço VARCHAR(50) NOT NULL,
    nascimento DATE,
    email CHAR(50),
    empregado ENUM('SIM', 'NÃO') DEFAULT 'NÃO',
    data_registro DATETIME
);

INSERT INTO convidados (nome, sobrenome, nascimento, email, endereço, empregado)
	VALUES ('Marcos', 'Lenilson', '1986-05-16', 'janajesuslelemarcos@gmail.com', 'St Qsd 37 casa 01', 'SIM');
    
INSERT INTO convidados (nome, sobrenome, nascimento, email, endereço, empregado)
	VALUES ('Janayna', 'Duarte', '1974-04-27', 'janaoliduarte@gmail.com', 'St Qsd 37 casa 01', 'não');

SELECT * FROM convidados;
