### >>>>> LIVRO TEXTO - UNIDADE 2 PAG 73 <<<<<
### >>>>> CONTEUDO WEB CW2 - UNIDADE 2 SEÇÃO 2 <<<<<

# ALTERAÇÃO DE TABELAS E CONSTRAINTS => CONJUNTO D.D.L = LINGUAGEM DE DEFINOÇÃO DE DADOS 
	# COMANDOS PARA ALTERAÇÃO DE DADOS
		-- ALTER TABLE é um comando que altera a estrutura de uma tabela e não os dados
			-- Pode adicionar ou excluir colunas
            -- Criar ou destruir índices
            -- Alterar os tipos de coluna existentes ou renomear colunas ou a própria tabela
            -- Pode alterar características, como o mecanismo de armazenamento usado para a tabela ou o comentário da tabela.
		
        -- CLAUSULAS ADD, ALTER, DROP e CHANGE => são permitidas em uma única instrução ALTER TABLE, separadas por vírgulas.
			-- ADD = Adiciona uma nova coluna na tabela
            -- ALTER = Alterar o tipo de dados de uma coluna em uma tabela
            -- DROP = Excluir uma coluna em uma tabela
            -- CHANGE = Renomeia uma coluna e alterar sua definição ou ambos. Esse comando tem mais capacidade que MODIFY ou RENAME COLUMN, mas às custas de conveniência para algumas operações. 
		
		
		-- CLAUSULAS CHANGE, MODIFY, RENAME COLUMN e ALTER       
            -- CHANGE = Renomeia uma coluna e alterar sua definição ou ambos. Esse comando tem mais capacidade que MODIFY ou RENAME COLUMN, mas às custas de conveniência para algumas operações. 
				-- FIRST = Adiciona a coluna na primeira posição da tabela
                -- AFTER = Adiciona a coluna apos a coluna especificada
            -- ALTER = Alterar o tipo de dados de uma coluna em uma tabela
            -- MODIFY = É mais conveniente para alterar a definição sem alterar o nome por que requer o nome da coluna apenas uma vez.
            -- RENAME COLUMN = pode alterar o nome de uma coluna, mas não sua definição, sendo um comando mais conveniente do que CHANGE para renomear uma coluna sem alterar sua definição pois exige apenas os nomes antigos e novos.


### >>>>> LIVRO TEXTO - UNIDADE 2 PAG 78 <<<<<    

		-- USANDO RESTRIÇÕES (CONSTRAINTS)
			-- São usadas para especificar regras para os dados em uma tabela.
            -- As restrições são usadas para limitar o tipo de dados que podem entrar em uma tabela. 
            -- Isso garante a precisão e a confiabilidade dos dados na tabela. 
            -- Se houver alguma violação entre a restrição e a ação de dados, a ação será abortada.
			-- Posso usar mais de um atributo como PRIMARY KEY	
            
            -- EXEMPLO
            
			-- Especificando o campo “id” como PRIMARY KEY e sem poder conter valores nulos
            
#            CREATE TABLE pessoa(
#				id int NOT NULL PRIMARY KEY,
#				nome varchar(255) NOT NULL,
#				sobrenome varchar(255),
#				idade int
#			);

			-- Primeiro deve-se retirar a chave primária declarada:
            
#            ALTER TABLE pessoa
#				DROP PRIMARY KEY;

			-- Após isso será necessário a nomeação de uma restrição PRIMARY KEY e para defini-la em várias colunas (CHAVE COMPOSTA)
            -- ADD CONSTRAINT = Adicionando uma restrição
            -- Obrigatoriamente deve-se por um nome para a restrição
            -- A PRIMARY KEY será atribuida para as colunas id e sobrenome
            
#			 ALTER TABLE pessoa
# 			    ADD CONSTRAINT PK_pessoa PRIMARY KEY (id, sobrenome);
            
            
        -- USANDO RESTRIÇÕES COM FOREIGN KEY (CHAVE ESTRANGEIRA)
			-- O MySQL suporta chaves estrangeiras, que permitem a referência cruzada de dados relacionados entre tabelas e restrições de chaves estrangeiras, o que ajuda a manter consistentes esses dados dispersos.
        
        -- EXEMPLO DE SINTAXE
			-- ADD CONSTRAINT = Adicionando uma restrição
            -- CONSTRAINT [símbolo] = Se não for especificado um nome da restrição, o SGBD especifica automaticamente
            -- FOREIGN KEY = Chave estrangeira
            -- (index_col_nome, ...) = Qual é o atributo que será a chave estrangeira na tabela
            -- REFERENCES = Obrigatorio
            -- tbl_nome = Nome da tabela
            -- (index_col_nome, ...) = Atribui qual chave primária de OUTRA tabela que será referencia para a FOREIGN KEY
            
# 			ALTER TABLE tbl_nome(
#   			ADD [CONSTRAINT [símbolo]] FOREIGN KEY [index_nome] (index_col_nome, ...)
# 	 			REFERENCES tbl_nome (index_col_nome, ...)
#	 			[ON DELETE referências]
#	 			[ON UPDATE referências]

			-- Qualificadores que são utilizados com as CLAUSULAS ON DELETE e ON UPDATE
				-- referências: RESTRICT | CASCADE | SET NULL | NO ACTION			
				-- CASCADE = Exclui ou atualiza a linha da tabela pai e exclui ou atualiza automaticamente as linhas correspondentes da tabela filha
				-- SET NULL = Exclui ou atualiza a linha da tabela pai e define como NULL a(as) coluna(as) de chave estrangeira na tabela filha 
                -- RESTRICT = Rejeita a operação de exclusão ou atualização da tabela pai. Especificar RESTRICT (ou NO ACTION) é o mesmo que omitir a cláusula ON DELETE ou ON UPDATE.
                
                
USE tele_aula_2;

CREATE TABLE pai(
   id INT NOT NULL,
   nome VARCHAR (50),
   PRIMARY KEY (ID)
);
CREATE TABLE filha(
   id INT PRIMARY KEY,
   parente_id INT,
   nome VARCHAR(50)
);

ALTER TABLE filha
	ADD CONSTRAINT FK_parente -- FK_parente = Nome da chave estrangeira
    FOREIGN KEY (parente_id)
    REFERENCES pai(id);


ALTER TABLE filha
	DROP FOREIGN KEY FK_parente;


SELECT * FROM pai;
SELECT * FROM filha;


        
        
        
                   