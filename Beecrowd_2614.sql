DROP TABLE customers;
CREATE TABLE customers (
    id NUMERIC(10,0),
    name VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255)
);

INSERT INTO customers VALUES
(1, 'Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
(2, 'Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia')


CREATE TABLE rentals (
    id NUMERIC(10,0),
    rentals_date DATE,
    id_customers NUMERIC(10,0)
);

INSERT INTO rentals VALUES
(1, '2016-09-10', 3);
INSERT INTO rentals VALUES
(2, '2016-02-09', 1);

SELECT * FROM rentals;

SELECT customers.name, rentals.rentals_date FROM customers, rentals
WHERE customers.id = rentals.id_customers AND
rentals.rentals_date >= '2016-09-01' AND
rentals.rentals_Date <= '2016-09-30';
