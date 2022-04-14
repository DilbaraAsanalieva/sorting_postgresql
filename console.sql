CREATE TABLE products (
      id SERIAL PRIMARY KEY,
      productName VARCHAR(30) NOT NULL,
      manufacturer VARCHAR(20) NOT NULL,
      productCount INTEGER DEFAULT 0,
      price NUMERIC
);

INSERT INTO products  (productName, manufacturer, productCount, price)
VALUES ('iPhone X', 'Apple', 2, 71000),
       ('iPhone 8', 'Apple', 3, 56000),
       ('Galaxy S9', 'Samsung', 6, 56000),
       ('Galaxy S8 Plus', 'Samsung', 2, 46000),
       ('Desire 12', 'HTC', 3, 26000);

SELECT  * FROM products WHERE price = 56000;
SELECT  * FROM products WHERE manufacturer = 'Samsung';
SELECT  * FROM products WHERE manufacturer = 'Samsung' AND price > 50000;
SELECT  * FROM products WHERE manufacturer = 'Samsung' OR manufacturer = 'Apple';

SELECT *  FROM products WHERE productName LIKE '_Phone%';

SELECT manufacturer  FROM products;
SELECT DISTINCT manufacturer  FROM products ; --Uniq

SELECT * FROM products ORDER BY  productCount; --growing sorting

SELECT productName, manufacturer FROM products ORDER BY manufacturer DESC; --by descending --по убыванию

SELECT productName,price, manufacturer FROM products ORDER BY manufacturer ASC, productName DESC ;

SELECT * FROM products ORDER BY productName LIMIT 2; --ASTYN KESET ANAN OWONU ALYP BERET
SELECT * FROM products ORDER BY productName LIMIT ALL OFFSET 2;--ASTYN ALYP,KALGAN BAARYN CHYGARAT

SELECT * FROM products WHERE manufacturer IN ('Samsung','HTC'); --ALL SAMSUNG AND HTC

SELECT SUM(productCount) FROM products;

SELECT AVG(price) AS average_price FROM products;

SELECT MIN(price) FROM products;
SELECT MAX(price) FROM products;

SELECT COUNT(*) AS product_count,
       SUM(price) AS sum,
        MIN(price) AS minimum,
        MAX(price) AS maximum,
       AVG(price) AS average
FROM products; --AS TABLE

SELECT manufacturer, COUNT(*) AS model_count
FROM products
GROUP BY manufacturer
HAVING COUNT(*) > 1;

