CREATE TABLE customers (
    id NUMERIC,
    name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255),
    state CHAR(2),
    credit_limit NUMERIC(10,2)
);


INSERT INTO customers (id, name, street, city, state, credit_limit)
    VALUES (1, 'Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 
    'Porto Alegre', 'RS', 700.00);
INSERT INTO customers (id, name, street, city, state, credit_limit)
    VALUES (2, 'Antonio Carlos Mamel', 'Av. Pinheiros', 
    'Belo Horizonte', 'MG', 3500.50);
INSERT INTO customers (id, name, street, city, state, credit_limit)
    VALUES (3, 'Luiza Augusta Mhor', 'Rua Salto Grande', 
    'Niteroi', 'RJ', 4000.00)
INSERT INTO customers (id, name, street, city, state, credit_limit)
    VALUES (4, 'Jane Ester', 'Av 7 de setembro', 
    'Erechim', 'RS', 800.00);
INSERT INTO customers (id, name, street, city, state, credit_limit)
    VALUES (5, 'Marcos Antônio dos Santos', 'Av Farrapos', 
    'Porto Alegre', 'RS', 4250.25);

SELECT name FROM customers
    WHERE UPPER(state) = 'RS';

SELECT name, street FROM customers
    WHERE city = 'Porto Alegre';