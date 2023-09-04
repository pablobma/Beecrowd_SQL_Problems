SELECT * FROM products;
SELECT * FROM providers;
SELECT * FROM categories;
INSERT INTO categories VALUES
(1, 'Super Luxury'),
(2, 'Imported'),
(3, 'Tech'),
(4, 'Vintage'),
(5, 'Supreme');


SELECT products.name, providers.name, categories.name FROM
products, providers, categories
WHERE products.id_providers = providers.id AND products.id_categories = categories.id
AND providers.name = 'Sansul SA'AND categories.name = 'Imported';
