################################# >>>>> SUBCONSULTAS EM BANCO DE DADOS <<<<< #################################
		  ################################# LIVRO TEXTO PAG 137 #################################
	    ################################ CW3 - UNIDADE 3 SEÇÂO 03 #################################
        
## Permite cinstruir consultas anhinhadas, utilizando o resultado de outra consulta.        
        
## SUBCONSULTAS   
	-- Uma subconsulta é uma expressão em SQL, composta por SELECT-FROM-WHERE, que é aninhada dentro de outra consulta, permitindo fazer comparações entre os conjuntos de dados.
    -- UTILIZA-SE os comandos IN e NOT IN
    
## COMPARAÇÕES DE CONJUNTOS
	-- A sintaxe SQL permite o desenvolvimento de subconsultas aninhadas em que é possível fazer a comparação entre conjuntos de dados, utilizando-se condições (WHERE).
	-- A clausula SOME indica a subconsulta e não uma condição simples
    
		-- = WHERE campo = condição WHERE campo = some (SELECT)
		-- ≠ WHERE campo <> condição WHERE campo <> some (SELECT)
		-- > WHERE campo > condição WHERE campo > some (SELECT)
		-- ≥ WHERE campo >= condição WHERE campo >= some (SELECT)
		-- < WHERE campo < condição WHERE campo < some (SELECT)
		-- ≤ WHERE campo <= condição WHERE campo <= some (SELECT)

######################################## SITUAÇÃO PROBLEMA ########################################
USE supergames;
SELECT * FROM localizacao;
SELECT * FROM jogo;

-- 1) Para inserir os novos títulos: 
INSERT jogo 
	VALUES 
    (0, "Super Driver", 205.00, 2),
	(0, "Neo", 100.00, 2),
	(0, "Max Joe", 120.00, 3),
	(0, "N. New", 199.00, 4);

-- 2) Para alterar o valor dos jogos em promoção:
UPDATE jogo 
	SET valor = valor * 0.5 
    WHERE cod = 6;

SELECT * FROM jogo;    
    
-- 3) Para desenvolver uma tabela para inserir os jogos em promoção:
CREATE TABLE promocao(
	Promo INT(3) PRIMARY KEY AUTO_INCREMENT,
	Cod_Jogo INT(3) NOT NULL,
	FOREIGN KEY (Cod_Jogo) REFERENCES Jogo(Cod)
);

-- 4) Para inserir os jogos na tabela promoção:
INSERT promocao 
VALUES (0, 5),
	(0, 6);

SELECT * FROM promocao;  

-- 5) Para o primeiro filtro, selecionar os jogos em promoção:
SELECT jogo.nome AS "Título", jogo.valor AS "Preço", localizacao.secao AS "Seção"
	FROM jogo INNER JOIN localizacao 
	ON localizacao.Id = jogo.localizacao_Id
	WHERE jogo.COD IN (SELECT Cod_Jogo FROM promocao);


-- 6) Para o segundo filtro, selecionar os jogosque NÃO estão em promoção:
SELECT jogo.nome AS "Título", jogo.valor AS "Preço"
	FROM jogo
	WHERE jogo.COD NOT IN (SELECT Cod_Jogo FROM promocao);

-- 7) Selecionar o jogo mais barato utilizando subconsultas e funções de agregação:
SELECT nome AS "Mais Barato"
	FROM jogo
    WHERE valor = SOME(SELECT MIN(valor) FROM jogo);
    
    SELECT MIN(valor) FROM jogo;

