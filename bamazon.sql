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
Values('athame','weapons',26,350);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('bone of lesser saint','ingredients',1200,206);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('mistletoe','weapons',5,2000);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('tears of a fish','ingredients',200,200);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('roots of a mountain','ingredients',50000,7);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('sound of a cat step','ingredients',500,4);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('sins of a child','ingredients',10000,1000000);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('book of the dead','tattoos',20,500);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('gae bolg','weapons',1400,3);
INSERT INTO inventory(product_name,department_name,price,stock_quantity)
Values('ash spear','weapons',2000,1);