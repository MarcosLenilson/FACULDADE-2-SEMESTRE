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
    ('0', 'Jaguar', 'VZ', NULL);
    
SELECT * FROM veiculos;



###########################>>>>>>>>>>  FUNÇÕES  <<<<<<<<<<###########################

## COUNT
	-- Esta função permite que se possa contar o numero de registros de uma relação 
    
SELECT COUNT(*) FROM veiculos;
	-- Podemos observar que são demonstrados os INSERTS da tabela “Veiculos”, e podemos perceber que na coluna “Id” o auto incremento registrou 12 entradas.

SELECT COUNT(Valor) FROM Veiculos;
	-- ATENÇÃO ao utilizar o COUNT, devido contador ignorar os registros em que haja valor nulo (NULL)

## DISTINCT 
	-- A função DISTINCT, é utilizada juntamente com o COUNT

SELECT COUNT( DISTINCT MARCA) FROM Veiculos; 	
	-- Esta função separa DISTINTAMENTE os valores, não repetindo valores iguais.
    
## TOTAL (SUM)
	-- A função SUM retorna o somatório dos valores em uma determinada coluna.

SELECT SUM(valor) AS "TOTAL" FROM veiculos;
	-- Retornou o valor somado da coluna "VALOR"

## MINIMUM (MIN)
	-- A função agregada MIN permite que se possa determinar o menor valor de registro em uma coluna.
	
SELECT MIN(valor) AS "MENOR VALOR" FROM veiculos;	
	-- Vamos selecionar a marca, o modelo e o veículo de menor valor registrado na tabela.
SELECT Marca, Modelo, MIN(Valor) AS "MENOR VALOR" 
	FROM Veiculos;
   
## MAXIMUM (MAX)
	-- Analogamente à função MIN, o recurso MAX permite que se possa determinar o maior valor de registro em uma coluna. 

SELECT MAX(valor) FROM veiculos; 
	-- Vamos selecionar a marca, o modelo e o veículo de maior valor registrado na tabela.
SELECT Marca, Modelo, MAX(Valor) AS "MAIOR VALOR"
	FROM Veiculos;


SELECT Marca FROM veiculos;
SELECT Modelo FROM veiculos;
SELECT Marca, Modelo , MAX(Valor) FROM veiculos;

## AVERAGE (AVG) quer dizer MÉDIA
	-- Retorna a Média dos valores de uma determinada coluna.
    
SELECT AVG(Valor) AS "Valor Médio" FROM Veiculos;
	-- O SQL efetuou o somatório somente dos veículos com valor diferente de nulo, e fez a divisão pelo número de registros com valor também diferente de nulo.

SELECT AVG(Valor) AS "Valor Médio" FROM Veiculos GROUP BY Marca;	
	-- A função de agregação AVG permite que o qualificador GROUP BY seja utilizado.
    
    
    
 ##################################### Avançando na prática ####################################
##################################### Agenciador de Atletas #####################################    

CREATE DATABASE Banco_de_Atletas;
USE Banco_de_Atletas;

CREATE TABLE Atletas (
	RA INT(3) PRIMARY KEY NOT NULl AUTO_INCREMENT,
	Nome varchar(20) NOT NULL,
	Clube varchar(20) NOT NULL,
	Qtd_Titulos INT(3) NOT NULL
);

INSERT Atletas 
	VALUES (0, "Romario", "Vasco", 10),
		(0, "Gustavo Borges", "Pinheiros", 25),
		(0, "Maguila", "Aacademia de Boxe", 5),
		(0, "Ayrton Senna", "Willians", 3),
		(0, "Bob Burnquest", "semclube", 15),
		(0, "Ronaldo", "Real Madrid", 6),
		(0, "Ueda", "sem clube", 11),
		(0, "Gabriel Jesus", "Palmeiras", 4),
		(0, "Jaqueline", "SESI", 14),
		(0, "Serena Williams", "Sem Clube", 7);    
        
SELECT * FROM atletas;        
        
        
## 1. O atleta com mais títulos.

SELECT MAX(Qtd_Titulos) AS "Mais títulos" FROM atletas;

## 2. O atleta com menos títulos.

SELECT MIN(Qtd_Titulos) AS "Menos títulos" FROM atletas;   
    
## 3. A média de títulos dos atletas cadastrados.
    
SELECT AVG(Qtd_Titulos) AS "Média de títulos" FROM atletas;       
    
## 4. A quantidade de atletas cadastrados.

SELECT COUNT(*) AS "Numero de Registros" FROM atletas; 

## 5. O total de títulos de todos os atletas cadastrados.     

SELECT SUM(Qtd_Titulos) AS "Total de Títulos" FROM atletas;     
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

