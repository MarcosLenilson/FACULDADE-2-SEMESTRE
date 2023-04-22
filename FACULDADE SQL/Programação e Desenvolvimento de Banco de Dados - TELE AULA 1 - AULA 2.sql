# Estrutura básica das consultas SQL
-- SELECT – identificação dos campos desejados numa consulta.
-- FROM – lista as tabelas que deverão ser lidas.
-- WHERE – consiste em expressões lógicas envolvendo os campos das tabelas da cláusula FROM.


# A cláusula SELECT
-- SELECT Name FROM city; -- **** Consulta simples
-- SELECT Name, Population FROM city WHERE Population < 10000; -- **** Consulta precisa
-- SELECT * FROM city; -- **** Consulta imprecisa

# A cláusula FROM

-- “Encontre todas os nomes e população das cidades e línguas do seu país”:
-- SELECT city.Name, city.Population, countrylanguage.Language FROM city, country, countrylanguage
-- WHERE city.CountryCode = Country.code AND country.Code = countrylanguage.CountryCode

-- “Encontre todas os nomes e população das cidades e dos países que falem Português”:
-- SELECT city.Name, city.Population, countrylanguage.Language FROM city, country, countrylanguage
-- WHERE city.CountryCode = Country.code AND country.Code = countrylanguage.CountryCode AND countrylanguage.Language = 'Portuguese'

# Operação de renomeação e variáveis do registro
# A cláusula AS não é permanente a mudanças é somente no resultado da consulta

-- SELECT name, Population AS PopulacaoDaCidade FROM city

-- “Encontre todas os nomes e população das cidades e línguas do seu país”:

SELECT C.name, P.population, L.language 
FROM city AS C, country AS P, countrylanguage AS L
WHERE C.CountryCode = P.Code AND P.Code = L.CountryCode