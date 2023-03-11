create database DBMS;

use DBMS;


create table emp_reg5(
id varchar(20) primary key,
fname varchar(20),
lname varchar(20),
email varchar(20),
age varchar(20),
phone int,
adhaar int,
s_date varchar(50));
select * from emp_reg5;
delete from emp_reg5 where fname="a";


drop table c_reg;


create table emp_info(
id varchar(20),
hno int,
hname varchar(20),
sname varchar(20),
state varchar(20),
city varchar(20),
pincode int,
foreign key(id) references emp_reg5(id));

create table emp_photo(
id varchar(20),
photo longblob,
foreign key(id) references emp_reg5(id));

select * from emp_photo;
delete from emp_photo where id="E220001";



create table c_reg2(
id varchar(20) primary key,
fname varchar(20),
lname varchar(20),
age int,
phone int,
adhaar int,
reg_date varchar(50));



create table c_info1(
id varchar(20),
hno int,
hname varchar(20),
sname varchar(20),
state varchar(20),
city varchar(20),
pincode int,
foreign key(id) references c_reg2(id));

create table c_photo(
id varchar(20),
about varchar(100),
photo longblob,
foreign key(id) references c_reg2(id));

select * from c_photo;

select * from c_reg2;



create table pdt_reg2(
pid varchar(20) primary key,
id varchar(20),
p_name varchar(20),
p_type varchar(20),
quantity int,
price int,

s_date varchar(50),
foreign key(id) references c_reg2(id));

select * from pdt_reg2;

DELETE FROM pdt_reg2 where pid = "P220002";

create table p_photo(
id varchar(20),
photo longblob,
foreign key(id) references pdt_reg2(pid));

select * from p_photo;

create table pdt_desc(
id varchar(20),
des  varchar(100),
foreign key(id) references pdt_reg2(pid));
select * from pdt_desc; 

insert into pdt_desc values("P220001","AAA");

select photo from p_photo A, pdt_reg2 B where A.id = B.pid;