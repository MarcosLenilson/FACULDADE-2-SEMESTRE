################################# >>>>> FUNÇÕES DE AGREGAÇÃO EM BANCO DE DADOS <<<<< #################################
				################################# LIVRO TEXTO PAG 121 #################################
			  ################################# CW3 - UNIDADE 3 SEÇÂO 02 #################################

/* 
## FUNÇÕES DE AGREGAÇÃO

	-- Utiliza os valores das colunas como parametros de pesquisa (SELECT). Os resultados das seleções podem ser organizados
			em grupo, baseados no conteudo existente em uma ou mais colunas. 
            
    -- É utilizado o GROUP BY
    
	-- Os bancos de dados possibilitam agregar diversas funcionalidades aos desenvolvimentos de sistemas. Tais funções 
			devem ser exploradas a fim de permitir que as aplicações possam oferecer recursos de consultas avançadas à base de dados. 
			Elas permitem que algumas informações quantitativas possam ser extraídas do banco de dados, como: 
				-- Contar o número de registros em uma tabela.
				-- Saber o valor máximo ou mínimo em uma coluna.
				-- Fazer operações matemáticas como somatória e média em uma coluna.
            

*/

CREATE DATABASE loja_veiculos;
USE loja_veiculos;

CREATE TABLE IF NOT EXISTS veiculos (
	Id INT(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Marca VARCHAR(30) NOT NULL,
    Modelo VARCHAR(30) NOT NULL,
    Valor DECIMAL(10.2) 
);
DESCRIBE veiculos;

INSERT veiculos
VALUES('0', 'BMW', '320i', 160000.00),
VALUES('0', 'BMW', '320i', 160000.00),
    ('0', 'Mercedes_Bens', 'C180', 140000.00),
    ('0', 'Hyundai', 'Azera', 120000.00),
    ('0', 'Mercedes_Bens', 'CLA 200', 140000.00),
    ('0', 'BMW', '328i', 210000.00),
    ('0', 'Volkswagen', 'Passat', 140000.00),
    ('0', 'BMW', '316i', 115000.00),
    ('0', 'Mercedes_Bens', 'Classe E', 248000.00),
    ('0', 'Mercedes_Bens', 'C250', 180000.00),
    ('0', 'Jaguar', 'XF', 220000.00),
    ('0', 'BMW', '535i', 500000.00),
    ('0', 'Jaguar', 'VZ');
    
SELECT * FROM veiculos;
    Error Code: 1136. Column count doesn't match value count at row 12

