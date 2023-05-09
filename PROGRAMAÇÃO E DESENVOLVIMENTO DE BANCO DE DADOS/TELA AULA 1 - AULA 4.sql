## Criação de um Banco de Dados e suas tabelas 
-- Linguagem DDL = Linguagem de Definição de Dados

# Planejamento
	-- Coletar informações
    -- Identificar as principais estruturas 
    -- Modelar a estrutura através do M.E.R = Modelagem Entidade-Relacionamento 
    -- Identificar os tipos de dados 
    -- Identificar os relacionamentos, cardinalidades etc
    -- Adequar as regras gramaticais e de sintax e de caracteres com o CHARSET e o COLLATION
		-- CHARSET = Especifica quais são os caracteres que o banco será capaz de reconhecer
			-- ## Designa um conjunto de simbolos e codificações e como eles são representados binariamente
        -- COLLATION = Identifica as regras de escrita e gramática
			-- ## Conjunto de regras para comparar os caracteres em um CHARSET
	-- EXEMPLO CHARSET
		-- Caracter 'A' = 0
		-- Caracter 'B' = 1
		-- Caracter 'a' = 2
		-- Caracter 'b' = 3
        
    -- EXEMPLO COLLATION
		-- Forma de combinação dos caracteres
        -- ABab
        -- Regra de só começar uma palavra com letra maiúscula

# Criando o Banco

-- CREATE DATABASE IF NOT EXISTS mundo
	-- [IF NOT EXISTS] => Esse comando emite um avisa de que ja existe um banco com o mesmo nome 
	-- DEFAULT CHARSET = utf8
    -- DEFAULT COLLATE = utf8_general_ci;

-- SHOW DATABASES; -- Exibe quais foram as configurações desse banco que acabou de ser criado 
-- ALTER DATABASE mundo CHARSET = latin1; -- Podemos mudar o CHARSER de um banco ja criado
-- DROP DATABASE IF EXISTS mundo; -- Exclui um banco da base de dados















