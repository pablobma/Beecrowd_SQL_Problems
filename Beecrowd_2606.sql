drop table products;
create table products(
    id numeric(10,0),
    name varchar(255),
    amount numeric(10,0),
    price numeric(10,2),
    id_categories numeric(10,0)
);

drop table categories;
create table categories(
    id numeric(10,0),
    name varchar(255)
);

insert into products(id, name, amount, price, id_categories)
    values(1, 'Lampshade', 100, 800, 4);
insert into products(id, name, amount, price, id_categories)
    values(2, '	Table for painting', 1000, 560, 9);
insert into products(id, name, amount, price, id_categories)
    values(3, 'Notebook desk', 10000, 25.50, 9);
insert into products(id, name, amount, price, id_categories)
    values(4, 'Computer desk', 350, 320.50, 6);
insert into products(id, name, amount, price, id_categories)
    values(5, 'Chair', 3000, 210.64, 9);
insert into products(id, name, amount, price, id_categories)
    values(6, '	Home alarm', 750, 460, 4);


INSERT INTO categories(id, name)
    VALUES(1, 'old stock');
INSERT INTO categories(id, name)
    VALUES(2, 'new stock');
INSERT INTO categories(id, name)
    VALUES(3, 'modern');
INSERT INTO categories(id, name)
    VALUES(4, 'commercial');
INSERT INTO categories(id, name)
    VALUES(5, 'recyclable');
INSERT INTO categories(id, name)
    VALUES(6, 'executive');
INSERT INTO categories(id, name)
    VALUES(7, 'superior');
INSERT INTO categories(id, name)
    VALUES(8, 'wood');
INSERT INTO categories(id, name)
    VALUES(9, 'super luxury');
INSERT INTO categories(id, name)
    VALUES(10, 'vintage');


select products.id, products.name from products, categories
    where id_categories = categories.id and categories.name like 'super%';













 