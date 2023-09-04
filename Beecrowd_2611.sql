CREATE TABLE movies (
    id NUMERIC(10,0),
    name VARCHAR(255),
    id_genres NUMERIC(10,0)
);

CREATE TABLE genres (
    id NUMERIC(10,0),
    description VARCHAR(255)
);


INSERT INTO movies(id, name, id_genres)
    VALUES(1, 'Batman', 3);
INSERT INTO movies(id, name, id_genres)
    VALUES(2, 'The Battle of the Dark River', 3);
INSERT INTO movies(id, name, id_genres)
    VALUES(3, 'White Duck', 1);
INSERT INTO movies(id, name, id_genres)
    VALUES(4, 'Breaking Barriers', 4);
INSERT INTO movies(id, name, id_genres)
    VALUES(5, 'The Two Hours', 2);

SELECT * FROM movies;


INSERT INTO genres(id, description)
    VALUES(1, 'Animation');
INSERT INTO genres(id, description)
    VALUES(2, 'Horror');
INSERT INTO genres(id, description)
    VALUES(3, 'Action');
INSERT INTO genres(id, description)
    VALUES(4, 'Drama');    
INSERT INTO genres(id, description)
    VALUES(5, 'Comedy');    
    
SELECT * FROM genres;


SELECT movies.id, movies.name FROM movies, genres
    WHERE movies.id_genres = genres.id
    AND genres.description = 'Action';










    
    
    






