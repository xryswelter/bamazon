DROP database IF EXISTS bamazon_db;
CREATE database bamazon_db;
USE bamazon_db;
CREATE TABLE inventory(
item_id INTEGER auto_increment not null,
product_name varchar(30) not null,
department varchar(30),
price double(10,4),
stock_quantity int,
primary key (item_id)
);

INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('kitchen sink','appliances',26,350);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('cups, set of 8','cutlerly',45,206);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('kitchen utencils','cutlerly',15,2000);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('oven','appliances',3500,200);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('refrigerator','appliance',50000,7);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('apples per pound','food',1,4000);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('beef 1 pound','food',5,1000000);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('blender','appliances',130,500);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('wooden laddle','cultery',4,3);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('chopsticks','cutlerly',2,12345);