DROP TABLE customers;
CREATE TABLE customers (
    id NUMERIC(10,0),
    name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR (255)
);

INSERT INTO customers VALUES 
(1, 'Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
(2, 'Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
(3, 'Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
(4, 'Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana'),
(5, 'João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
(6, 'Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');


DROP TABLE locations;
CREATE TABLE locations (
    id NUMERIC(10,0),
    locations_date DATE,
    id_customers NUMERIC(10,0)
);
INSERT INTO locations VALUES
(1, '2016-10-09', 3);
INSERT INTO locations VALUES
(2, '2016-09-02', 1),
(3, '2016-08-02', 4),
(4, '2016-09-02', 2),
(5, '2016-03-02', 6),
(6, '2016-04-04', 4);


/* SELECT customers.id, customers.name FROM customers, locations
EXCEPT
SELECT customers.id, customers.name FROM customers, locations
WHERE customers.id = locations.id_customers; */

SELECT customers.id, customers.name FROM customers 
WHERE NOT EXISTS
(SELECT id_customers FROM locations
WHERE id_customers = customers.id);






