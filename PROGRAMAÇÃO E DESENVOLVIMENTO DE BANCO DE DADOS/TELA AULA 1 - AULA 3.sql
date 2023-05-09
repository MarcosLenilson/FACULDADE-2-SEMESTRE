USE world;
SHOW Tables;
SHOW COLUMNS FROM country;


-- SELECT Name
-- FROM city
-- WHERE Name LIKE 'sor%';

-- SELECT Name, Population
-- FROM city
-- WHERE Name LIKE 'sor%';

 SELECT city.name, city.Population, country.name
 FROM city, country
 WHERE city.name LIKE 'sor%' AND city.CountryCode = Country.code;