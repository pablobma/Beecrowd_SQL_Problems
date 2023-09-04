DROP TABLE movies;
CREATE TABLE movies (
    id NUMERIC(10,0),
    name VARCHAR(255),
    id_prices NUMERIC(10,0)
);

INSERT INTO movies(id, name, id_prices)
    VALUES(1, 'Batman', 3);
INSERT INTO movies(id, name, id_prices)
    VALUES(2, 'The Battle of the Dark River', 3);
INSERT INTO movies(id, name, id_prices)
    VALUES(3, 'White Duck', 5);
INSERT INTO movies(id, name, id_prices)
    VALUES(4, 'Breaking Barriers', 4);
INSERT INTO movies(id, name, id_prices)
    VALUES(5, 'The Two Hours', 2);

SELECT * FROM movies;


CREATE TABLE prices (
    id NUMERIC(10,0),
    categorie VARCHAR(255),
    value NUMERIC(10,2)
);

INSERT INTO prices(id, categorie, value)
    VALUES(1, 'Releases', 3.50);
INSERT INTO prices(id, categorie, value)
    VALUES(2, 'Bronze Seal', 2.00);
INSERT INTO prices(id, categorie, value)
    VALUES(3, 'Silver Seal', 2.50);
INSERT INTO prices(id, categorie, value)
    VALUES(4, 'Gold Seal', 3.00);
INSERT INTO prices(id, categorie, value)
    VALUES(5, 'Promotion', 1.50);
    
SELECT * FROM prices;


SELECT movies.id, movies.name FROM movies, prices
    WHERE prices.id = movies.id_prices
    AND prices.value < 2.00;












