CREATE database Bamazon;

USE Bamazon;

CREATE TABLE `Products` (
`id` INT(111)  unsigned auto_increment not null,
`product_name` VARCHAR(100) NULL,
`department_name` VARCHAR(100) NULL,
`price` DECIMAL(10,4) NULL,
`stock_quantity` INT(111) NULL,
primary key (`id`)
);

--Grocery
INSERT INTO `Products` (`product_name`, `department_name`, `price`, `stock_quantity`) values ("Green Apple", "Grocery", "0.69", "20"); 
INSERT INTO `Products` (`product_name`, `department_name`, `price`, `stock_quantity`) values ("Red Apple", "Grocery", "0.69", "20"); 
INSERT INTO `Products` (`product_name`, `department_name`, `price`, `stock_quantity`) values ("Banana", "Grocery", "0.55", "25"); 
INSERT INTO `Products` (`product_name`, `department_name`, `price`, `stock_quantity`) values ("Grapes", "Grocery", "2.99", "30"); 
INSERT INTO `Products` (`product_name`, `department_name`, `price`, `stock_quantity`) values ("Pears", "Grocery", "0.49", "20"); 

--Electronics
INSERT INTO `Products` (`product_name`, `department_name`, `price`, `stock_quantity`) values ("Keyboard", "Electronics", "19.99", "10");   
INSERT INTO `Products` (`product_name`, `department_name`, `price`, `stock_quantity`) values ("Mouse", "Electronics", "9.99", "10"); 
INSERT INTO `Products` (`product_name`, `department_name`, `price`, `stock_quantity`) values ("Speakers", "Electronics", "49.99", "10"); 
INSERT INTO `Products` (`product_name`, `department_name`, `price`, `stock_quantity`) values ("Charger", "Electronics", "19.99", "10"); 
INSERT INTO `Products` (`product_name`, `department_name`, `price`, `stock_quantity`) values ("Monitor", "Electronics", "119.99", "10"); 