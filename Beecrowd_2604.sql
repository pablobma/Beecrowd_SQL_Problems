CREATE TABLE products(
    id NUMERIC(10,0),
    name VARCHAR(255),
    amount NUMERIC(10,0),
    price NUMERIC(10,2)
);

SELECT * FROM products;

INSERT INTO products(id, name, amount, price)
    VALUES(1, 'Two-door wardrobe', 100, 80);
INSERT INTO products(id, name, amount, price)
    VALUES(2, 'Dining table', 1000, 560);
INSERT INTO products(id, name, amount, price)
    VALUES(3, 'Towel holder', 10000, 5.50);
INSERT INTO products(id, name, amount, price)
    VALUES(4, 'Computer desk', 350, 100);
INSERT INTO products(id, name, amount, price)
    VALUES(5, 'Chair', 3000, 210.64);
INSERT INTO products(id, name, amount, price)
    VALUES(6, 'Single bed', 750, 99);   

SELECT id, name FROM products
    WHERE price < 10 OR price > 100;
