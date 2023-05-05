### >>>>> LIVRO TEXTO - UNIDADE 2 PAG 55 <<<<<

# MANIPULAÇÃO DE DADOS => CONJUNTO D.M.L 
	# COMANDOS PARA MANIPULAÇÃO DE DADOS
		-- INSERT, UPDATE, DELETE
			-- INSERT = Inserir dados
			-- UPDATE = Atualizar dados 
			-- DELETE = Apagar dados 
        
###############################################################################################################################################
-- INSERT
	-- Adiciona nova linhas ou registro numa tabela existente
    -- SINTAX
								   -- ADIÇÃO OPCIONAL DE VALORES   	
		## INSERT INTO nome_tabela (col1, col2) VALUES (15, 2);
			-- VALUES (15) = campo col1
            -- VALUES (2)  = campo col2
            
								   -- ADIÇÃO OPCIONAL DE VALORES 
        ## INSERT INTO nome_tabela (col1, col2) VALUES (15, 2),(1,3);
			-- Será inserido novas linha para as colunas col1 e col2
			-- VALUES (1) = campo col1
            -- VALUES (3) = campo col2
					
								   -- ADIÇÃO OPCIONAL DE VALORES 	
		## INSERT INTO nome_tabela (a, b, c) VALUES (1,2,3),(4,5,6),(7,8,9);
			-- Inserindo Multiplas linhas 
			-- VALUES (1,2,3) = campo a
			-- VALUES (4,5,6) = campo b
			-- VALUES (7,8,9) = campo c
        
        
CREATE DATABASE tele_aula_2;

USE tele_aula_2;

CREATE TABLE IF NOT EXISTS convidado (
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL DEFAULT '',
	nascimento DATE,
	estudante ENUM('Não', 'Sim') NOT NULL DEFAULT 'Não'
);

INSERT INTO convidado (nome, nascimento, estudante) VALUES('Marcos Lenilson', '1986-05-16', 'SIM');
INSERT INTO convidado (nome, nascimento, estudante) VALUES('Janayna Duarte', NULL, 'SIM');
	-- O id não foi especificado devido ser AUTO_INCREMENT
        
        
###############################################################################################################################################        
-- UPDATE   
	-- Atualiza as colunas de linhas existentes na tabela com novos valores
-- SET 
	-- Indica quais colunas modificar e os valores que devem ser fornecidos
	
## OBS:  UPDATE e SET tem que ser usados JUNTOS 

-- CLAUSULA WHERE = Condições que identificam quais linhas devem ser atualizada
UPDATE convidado
	SET estudante = 'Sim'
	WHERE nome = 'Lebrencio Grulher'
	AND nascimento = '1990-07-08';
    
-- CLAUSULAS ORDER BY e LIMIT
UPDATE convidado
	SET estudante = 'Sim'
	WHERE nascimento < '1990-07-08'
    ORDER BY nome -- Ordernados pos nome 
	LIMIT 10; -- Somente os 10 primeiros registros 
   
-- O UPDATE pode ser usado para várias tabelas ao mesmo tempo 

###############################################################################################################################################   
-- DELETE
	-- É uma instrução DML que exclui linhas de uma tabela
    -- O uso é semelhante à UPDATE
	-- SINTAX

DELETE FROM convidado
	WHERE estudante = 'SIM'
    ORDER BY nome 
    LIMIT 10;





















