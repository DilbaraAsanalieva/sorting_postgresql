CREATE TABLE products(
    id SERIAL PRIMARY KEY ,
    productName VARCHAR(30) NOT NULL ,
    manufacturer VARCHAR(20) NOT NULL ,
    productCount INT DEFAULT 0,
    price NUMERIC

);
INSERT INTO products(productName, manufacturer,productCount, price)
VALUES ('iPhone X', 'Apple', 2, 71000),
       ('iPhone 8', 'Apple', 3, 56000),
       ('Galaxy S9', 'Samsung', 6, 56000),
       ('Galaxy S8 Plus', 'Samsung', 2, 46000),
       ('Desire 12', 'HTC', 3, 26000);


SELECT  products FROM products WHERE manufacturer = 'Apple' OR manufacturer = 'Samsung';--1st

SELECT * FROM products WHERE manufacturer = 'Apple' OR price >75000; --2

DROP TABLE products;