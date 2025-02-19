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

UPDATE `protype`.`product` SET name = 'Red Apple', description = 'A Washington apple', price= '1.50'   WHERE id = 1;

SELECT * FROM `protype`.`product`;
