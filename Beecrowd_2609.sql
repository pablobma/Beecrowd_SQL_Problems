drop table products;
create table products (
    id numeric(10,0),
    name varchar(255),
    amount numeric(10,0),
    price numeric(10,2),
    id_categories numeric(10,0)
);

drop table categories;
create table categories (
    id numeric(10,0),
    name varchar(255)
);

insert into products(id, name, amount, price, id_categories)
    values(1, 'Two-doors wardrobe', 100, 800, 1);
insert into products(id, name, amount, price, id_categories)
    values(2, 'Dining table', 1000, 560, 3);
insert into products(id, name, amount, price, id_categories)
    values(3, 'Towel holder', 10000, 25.50, 4);
insert into products(id, name, amount, price, id_categories)
    values(4, 'Computer desk', 350, 320.50, 2);
insert into products(id, name, amount, price, id_categories)
    values(5, 'Chair', 3000, 210.64, 4);    
insert into products(id, name, amount, price, id_categories)
    values(6, 'Single bed', 750, 460, 1);  

insert into categories(id, name)
    values(1, 'wood');
insert into categories(id, name)
    values(2, 'luxury'); 
insert into categories(id, name)
    values(3, 'vintage'); 
insert into categories(id, name)
    values(4, 'modern'); 
insert into categories(id, name)
    values(5, 'super luxury'); 
 

select categories.name, sum(products.amount) from categories, products
    group by categories.name, categories.id, products.id_categories
        having categories.id = products.id_categories;

     
 
 
 
 
 
 
    
    
    
    
    