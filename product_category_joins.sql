CREATE TABLE products (
    productid INT PRIMARY KEY,
    productname VARCHAR(255),
    categoryid INT
);

CREATE TABLE categories (
    categoryid INT PRIMARY KEY,
    categoryname VARCHAR(255)
);

-- Inserting data into products
INSERT INTO products (productid, productname, categoryid) 
VALUES 
(1, 'Laptop', 1),
(2, 'Smartphone', 2),
(3, 'Tablet', 1),
(4, 'Camera', NULL); -- No category

-- Inserting data into categories
INSERT INTO categories (categoryid, categoryname) 
VALUES 
(1, 'Electronics'),
(2, 'Mobile Devices'),
(3, 'Accessories');

-- Inner Join
SELECT products.productid, products.productname, categories.categoryname 
FROM products 
INNER JOIN categories ON products.categoryid = categories.categoryid;

-- Left Join (or Left Outer Join)
SELECT products.productid, products.productname, categories.categoryname 
FROM products 
LEFT JOIN categories ON products.categoryid = categories.categoryid;

-- Right Join (or Right Outer Join)
SELECT products.productid, products.productname, categories.categoryname 
FROM products 
RIGHT JOIN categories ON products.categoryid = categories.categoryid;

-- Full Join (or Full Outer Join)
SELECT products.productid, products.productname, categories.categoryname 
FROM products 
LEFT JOIN categories ON products.categoryid = categories.categoryid
UNION
SELECT products.productid, products.productname, categories.categoryname 
FROM products 
RIGHT JOIN categories ON products.categoryid = categories.categoryid;

-- Cross Join
SELECT products.productid, products.productname, categories.categoryname 
FROM products 
CROSS JOIN categories;
