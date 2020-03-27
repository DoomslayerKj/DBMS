
create database order_process;
use order_process;

create table customer(cust_no int primary key auto_increment,cname varchar(20),city varchar(28));
create table order1(order_no int primary key,odate date,cust_no int,ord_amt int,foreign key(cust_no) references customer(cust_no));
create table item(item_no int primary key,unit_price int);
create table order1_item(order_no int,item_no int primary key,qty int,foreign key(order_no) references order1(order_no),foreign key(item_no) references item(item_no) on delete cascade);
create table warehouse( warehouse_no int primary key,city varchar(28));
create table shipment(order_no int primary key,ship_date date,warehouse_no int,foreign key(order_no) references order1(order_no));
alter table order1_item drop foreign key item_no ;
insert into customer(cname,city) values ("varad","bangalore"),("varadss","bangalore"),("hardwell","mysore"),("diplo","mumbai"),("doomslayer","mysore");
select * from customer;

insert into order1(order_no,odate,cust_no,ord_amt) values ("463","2020-03-17",5,666);
select * from order1;

insert into item(item_no,unit_price) values (11,5),(22,666),(33,6300),(44,2300),(55,666),(66,7370),(77,7300),(88,400);
select * from item;

insert into order1_item(order_no,item_no,qty) values (123,11,1),(435,22,1),(441,33,2),(444,44,2),(445,55,1),(485,66,1);
select * from order1_item;

insert into warehouse(warehouse_no ,city) values (50,"bangalore"),(51,"bangalore"),(52,"mysore"),(53,"mumbai"),(54,"mysore");
select * from warehouse;

insert into shipment(order_no,ship_date,warehouse_no) values (123,'2020-03-30',50),(435,'2020-03-31',51),(441,'2020-03-30',52),(444,'2020-03-28',53),(445,'2020-03-27',54),(485,'2020-03-27',54);
select * from shipment;

select cname,count(order_no) as no_of_orders,avg(ord_amt) as avg_amt from customer c,order1 o where c.cust_no=o.cust_no group by c.cust_no;
select city,order_no from shipment s join warehouse w on s.warehouse_no=w.warehouse_no group by s.warehouse_no ;
delete from item where item_no=10;



