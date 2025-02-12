CREATE TABLE `protype`.`customer` (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

INSERT INTO `protype`.`customer` (first_name, last_name) VALUES ('John', 'Doe');
INSERT INTO `protype`.`customer` (first_name, last_name) VALUES ('Jane', 'Smith');

SELECT * FROM `protype`.`customer`;

SELECT * FROM protype.customer;
SELECT first_name, last_name FROM protype.customer where customer_id = 1;


CREATE TABLE `protype`.`product` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(50) NOT NULL,
    price VARCHAR(50) NOT NULL
);

INSERT INTO `protype`.`product` (name, description, price) VALUES ('Apple', 'A juicy red apple', 0.50);
INSERT INTO `protype`.`product` (name, description, price) VALUES ('Banana', 'A ripe yellow banana', 0.30);
INSERT INTO `protype`.`product` (name, description, price) VALUES ('Orange', 'A sweet orange orange', 0.60);
INSERT INTO `protype`.`product` (name, description, price) VALUES ('Strawberry', 'A fresh strawberry', 0.20);
INSERT INTO `protype`.`product` (name, description, price) VALUES ('Mango', 'A tropical mango', 1.00);

SELECT * FROM `protype`.`product`;
