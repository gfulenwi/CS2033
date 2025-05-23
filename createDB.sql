
DROP DATABASE IF EXISTS prodDB;
CREATE DATABASE prodDB;

use prodDB;
drop user if exists 'cs2033user'@'localhost';

create user 'cs2033user'@'localhost' identified by 'cs2033pass';
grant all on prodDB.* to 'cs2033user'@'localhost';





CREATE TABLE products (
  productID        INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryID       INT(11)        NOT NULL,
  productCode      VARCHAR(10)    NOT NULL   UNIQUE,
  productName      VARCHAR(255)   NOT NULL,
  listPrice        DECIMAL(10,2)  NOT NULL,
  PRIMARY KEY (productID)
)engine=innodb;

CREATE TABLE orders (
  orderID        INT(11)        NOT NULL   AUTO_INCREMENT,
  customerID     INT            NOT NULL,
  orderDate      DATETIME       NOT NULL,
  orderSum       INT            NOT NULL,
  PRIMARY KEY (orderID)
) engine=innodb;


INSERT INTO products VALUES
(1, 1, 'strat', 'Fender Stratocaster', '699.00'),
(2, 1, 'les_paul', 'Gibson Les Paul', '1199.00'),
(3, 1, 'sg', 'Gibson SG', '2517.00'),
(4, 1, 'fg700s', 'Yamaha FG700S', '489.99'),
(5, 1, 'washburn', 'Washburn D10S', '299.00'),
(6, 1, 'rodriguez', 'Rodriguez Caballero 11', '415.00'),
(7, 2, 'precision', 'Fender Precision', '799.99'),
(8, 2, 'hofner', 'Hofner Icon', '499.99'),
(9, 3, 'ludwig', 'Ludwig 5-piece Drum Set with Cymbals', '699.99'),
(10, 3, 'tama', 'Tama 5-Piece Drum Set with Cymbals', '799.99');
