create database sessions03_bt2;
use sessions03_bt2;
create table category(
category_Id int primary key auto_increment,
category_Name varchar(100) not null unique,
category_Statuss tinyint(1) default 1
);
create table product(
product_Id int primary key auto_increment,
product_Name varchar(200) unique not null,
product_Price double check(product_Price>0),
sale_price double,
check(sale_price>0 and sale_price < product_Price),
category_Id int,
 foreign key(category_Id) references category(category_Id) 
);
insert into category(category_Name,category_Statuss) values('áo',1),('quần',0);
insert into product(product_Name,product_Price,sale_price,category_Id) values
('ao thun',200,100,1),
('áo gió',300,250,1),
('quần bò',400,250,2),
('quần đùi',500,250,2),
('áo khoác',700,250,1),
('áo len',900,250,1);
select * from product;
select * from category;
update category set category_Name ='áo update' where category_Id=1;
update product set product_Price =product_Price*2 where  category_Id = 1;
delete from product where product_Price<500;
select*from product order by product_Price asc;
select*from product where product_Name like '%áo%';
select*from product where product_Price>100;
select*from product where product_Price between 100 and 500;
insert into product(product_Name,product_Price,sale_price,category_Id) values
('ao dài',200,190,1),
('áo ngắn',300,250,1),
('quần thun',400,350,2),
('quần gió',500,450,2),
('áo sơ mi',700,250,1),
('áo phông',900,250,1);
select *from product order by sale_price desc  limit 5;