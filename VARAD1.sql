create table personvar (driver_id varchar(10),name varchar(20),address varchar(30),primary key(driver_id));


create table carvar(reg_num varchar(10),model varchar(10),year int,primary key(reg_num));

create table accidentvar(report_num int,accident_date date,location varchar(20),primary key(report_num));


create table ownsvar(driver_id varchar(10),reg_num varchar(10),primary key(driver_id,reg_num),foreign key(driver_id) references personvar(driver_id),foreign key(reg_num) references carvar(reg_num));clear screen;



create table participatedvar(driver_id varchar(10), reg_num varchar(10),report_num int, damage_amount int,primary key(driver_id,reg_num,report_num),foreign key(driver_id) references personvar(driver_id),foreign key(reg_num) references carvar(reg_num),foreign key(report_num) references accidentvar(report_num));



 insert into personvar values('1234','VARAD','BMSCE1');
 insert into personvar values('1122','VAISHNAV','BMSCE2');
  insert into personvar values('1233','KRISHNA','BMSCE3');
  
   insert into carvar values('KA04MW1233','INNOVA', '2015');
 insert into carvar values('KA03MM345','I20', '2016');
  insert into carvar values('KA03EW236','FORTUNER','2017' );
  
  COMMIT
  
  insert into accidentvar values('11','04-jan-2019','Mysore road');
  insert into accidentvar values('21','04-jan-2029','banglore road');
  insert into accidentvar values('22','05-jan-2022','hubli road');
  commit



   insert into ownsvar values ('1234','KA04MW1233');
   insert into ownsvar values ('1122','KA03MM345');
   insert into ownsvar values ('1233','KA03EW236');
   
   clear screen
   
insert into participatedvar values('1233','KRISHNA','11','2500');
desc PARTICIPATEDVAR   
   
   
          select * from ownsvar

      
