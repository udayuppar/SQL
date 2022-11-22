CREATE DATABASE dETAILSE;
USE dETAILSE;
CREATE TABLE dETAILSE(SL_NO INT,STUDENT_NAME varchar(20),STUDENT_USN varchar(20),STUDENT_AGE int,STUDENT_BRANCH varchar(20),STUDENT_COLLAGE varchar(20),STUDENT_ID varchar(20),STUDENT_ROLL_NUMBER INT,BANK_NAME varchar(20),MOBILE_NUMBER long default'X-workz');
INSERT INTO  dETAILSE VALUE(1,'Uday','4JN18ME074',22,'MECHANICAL','JNNCE','uday012',50,'Bank of Baroda',8861539422);
INSERT INTO  dETAILSE VALUE(2,'Vittal','4JN18ME075',22,'MECHANICAL','JNNCE','vittal013',51,'SBI',8853451232);
INSERT INTO  dETAILSE VALUE(3,'Tarun','4JN18ME076',23,'MECHANICAL','JNNCE','tarun013',52,'karnataka',9874451232);
INSERT INTO  dETAILSE VALUE(4,'Sandeep','4JN18ME077',24,'MECHANICAL','JNNCE','sanddep013',53,'SBI',9632451232);
INSERT INTO  dETAILSE VALUE(5,'Abhi','4JN18ME078',22,'MECHANICAL','JNNCE','abhi013',54,'cenara',8853451232);
INSERT INTO  dETAILSE VALUE(6,'Punith','4JN18ME079',23,'ISE','JNNCE','punith013',55,'SBI',9512451232);
INSERT INTO  dETAILSE VALUE(7,'Ajay','4JN18ME080',22,'CIVIL','JNNCE','ajay013',56,'kotek',8853451232);
INSERT INTO  dETAILSE VALUE(8,'Akash','4JN18ME081',23,'MECHANICAL','JNNCE','ajay013',57,'SBI',8853451232);
INSERT INTO  dETAILSE VALUE(9,'Sanju','4JN18ME082',22,'MECHANICAL','JNNCE','vittal013',58,'karnatak',9874451232);
INSERT INTO  dETAILSE VALUE(10,'Kiran','4JN18ME083',23,'CIVIL','JNNCE','kiran013',59,'SBI',6243451232);
INSERT INTO  dETAILSE VALUE(11,'Vittal','4JN18ME075',25,'MECHANICAL','JNNCE','vittal013',60,'SBI',8853451232);
SELECT * FROM dETAILSE WHERE SL_NO=9;
SELECT STUDENT_NAME FROM dETAILSE WHERE STUDENT_NAME='Akash';

Alter table dETAILSE add column student_location varchar(20);
alter table dETAILSE rename column STUDENT_USN to usn;
alter table dETAILSE rename column usn to STUDENT_USN;

delete from dETAILSE where SL_NO=1; 
delete from dETAILSE where STUDENT_NAME='Tarun';
update  dETAILSE set STUDENT_NAME='Uday' where SL_NO=5;
rollback;

select * from dETAILSE;
drop table dETAILSE;

CREATE TABLE movies(id int,movie_name varchar(20), ticket_price int,location varchar(20),hero varchar(20),bugget bigint);
INSERT INTO movies values(1,'Kantara',100,'Navarang','Rishabshetty',500);
INSERT INTO movies values(2,'KGF',200,'Orian mall','Yash',600);
INSERT INTO movies values(3,'Galipata 2',300,'PVR','Ganesh',800);
INSERT INTO movies values(4,'Charlie 777',400,'Lulu mall','Rakshith shetty',500);
drop table movies;
select * from movies;


ALTER TABLE movies ADD COLUMN director varchar(20) default 'Shubham';

/* DML:
Systex for update
UPDATE table_name SET coloum_name='value' WHERE condition;*/

UPDATE movies SET location='xyz' WHERE id=1;


SELECT * FROM movies;
select * from movies group by id;
select max(id) from movies group by id;
select min(ticket_price) from movies group by ticket_price;
select avg(bugget) from movies group by bugget;
select sum(SL_NO) from movies group by STUDENT_AGE;

CREATE TABLE  movies_dup AS SELECT * FROM movies;
SELECT * FROM movies_dup;
SELECT * FROM movies WHERE director='ajay' AND id=2;
SELECT * FROM movies WHERE director='santu' AND id=8;

SELECT * FROM movies WHERE director='ajay' OR id=2;
SELECT * FROM movies WHERE id=1 OR id=2 OR id=3;
SELECT * FROM movies WHERE id in(1,2,3);

SELECT * FROM movies WHERE id not in(1,2,3);

SELECT * FROM dETAILSE WHERE SL_NO between 6 and 10;
SELECT * FROM movies ORDER BY id desc;

SELECT COUNT(*) AS no_of_rows FROM movies;
SELECT count(*) FROM dETAILSE;
SELECT SUM(STUDENT_AGE) FROM  dETAILSE;
SELECT MAX(STUDENT_AGE) FROM dETAILSE;
SELECT MIN(STUDENT_AGE) FROM dETAILSE;
SELECT AVG(STUDENT_AGE) FROM dETAILSE;

/*Like */
SELECT * FROM movies WHERE location LIKE 'L%'; 
SELECT * FROM movies WHERE location LIKE 'O%'; 
SELECT movie_name FROM movies WHERE movie_name LIKE 'K%';  /*starting letter*/
SELECT movie_name FROM movies WHERE movie_name LIKE '%a';  /*ending letter*/
SELECT movie_name FROM movies WHERE movie_name LIKE '%t%';/* between or middle letter t*/
SELECT movie_name FROM movies WHERE movie_name LIKE 'c%r%'; /*starting c and middle letter r*/
SELECT movie_name FROM movies WHERE movie_name between 'c' AND 'R';

SELECT UPPER(movie_name)FROM movies;
SELECT LOWER(movie_name)FROM movies; 
SELECT CONCAT(movie_name,location) as together FROM movies;

SELECT INSTR('UDAY','A') AS position;
SELECT INSTR('AJAY' , 'A') AS position;
 SELECT SUBSTR ('BENGALORE',4,4) AS substring;
SELECT SUBSTR(movie_name,3,4)AS movies;
SELECT * FROM movies;

CREATE TABLE t20worldcup(id int not null,team_name varchar(20) not null, opponent varchar(20),vennu varchar(20),captain varchar(20));
SELECT * FROM t20worldcup;
INSERT INTO t20worldcup VALUES(1,'India','Pakisthan','Sedney','Virat');
INSERT INTO t20worldcup (id,team_name,opponent,vennu,captain) VALUES(2,'Newzeeland','south africa','sydne','kane');


CREATE TABLE Wordcup2022(id int not null,team_name varchar(20) unique, opponent varchar(20),vennu varchar(20),captain varchar(20));
SELECT * FROM Wordcup2022;
INSERT INTO Wordcup2022 VALUES(1,'India','pakisthan','sidney','rohit');
INSERT INTO Wordcup2022 VALUES(2,null,'pakisthan','sidney','rohit');

CREATE TABLE Olympics(id  int not null, games_name varchar(20) unique,no_of_medals int unique,country varchar(20) unique,no_of_players int not null);
INSERT INTO Olympics VALUES(1,'Swimming',10,'India',20);
INSERT INTO Olympics VALUES(1,null,15,'srilanka',20);
INSERT INTO Olympics VALUES(2,'Shoting',12,'USE',10);
INSERT INTO Olympics VALUES(3,'Cricket',null,null,10);

CREATE TABLE serials(id int  not null unique,name varchar(20) unique,chanels varchar(20), no_of_episode int ,check(no_of_episode>=1000));
SELECT * FROM serials;
INSERT INTO serials values(1,'Agnisakshi','Colourskannada',1036);
INSERT INTO serials values(2,'kamali','zeekannada',600);

SELECT * FROM movies;

/*use to avoid duplicate values*/
SELECT distinct(movie_name)FROM movies;

USE dETAILSE;

CREATE TABLE genaralstores(id int primary key,name varchar(20) unique,items varbinary(20) unique,
price int not null,location varchar(20));
SELECT * FROM genaralstores;
INSERT INTO genaralstores VALUES(1,'raj','soop',50,'rajajinagar'); 
INSERT INTO genaralstores VALUES(1,'kishna','shampoo',25,'mejestic'); 
INSERT INTO genaralstores VALUES(3,'ram','fairandlouly',10,'mg road');

select * from genaralstores group by id;
select max(id) from genaralstores group by id;
select min(ticket_price) from genaralstores group by ticket_price;
select avg(price) from genaralstores group by price;
select sum(SL_NO) from genaralstores group by STUDENT_AGE;

CREATE TABLE salon(id int, name varchar(20),address varchar(20), style_type varchar(20),price int,primary key (id,price));
INSERT INTO saloon values(1,'as','smg','normal',500);
INSERT INTO saloon values(2,'abc','tarikere','spike',700);
SELECT * FROM saloon;

select * from salon group by id;
select max(id) from salon group by id;
select min(price) from salon group by price;
select avg(price) from salon group by price;
select sum(id) from salon group by id;

CREATE TABLE  bank(b_id int primary key, b_name varchar(20) unique,location varchar(20),maneger varchar(20));
INSERT INTO bank values(101,'HDFC','BTM','vinoda');
INSERT INTO bank values(102,'SBI','rajajinagar','afreen');
INSERT INTO bank values(103,'BOB','MG road','pooja');
INSERT INTO bank values(104,'SBM','SP road','uday');
SELECT * FROM bank;

CREATE TABLE customer (id int not null, c_name varchar(20) unique, b_id int,acc_type varchar(20),foreign key(b_id) references bank (b_id));
INSERT INTO customer values(1,'Shubham',101,'saving');
INSERT INTO customer values(2,'kavitha',102,'current');
INSERT INTO customer values(3,'shashi',102,'current');
SELECT * FROM customer;

CREATE TABLE  election (id int primary key auto_increment,name varchar(20), party_name varchar(20));
INSERT INTO election (name,party_name) values ('   shubham','   AAP');
INSERT INTO election (name,party_name) values ('  akash','bjp');
INSERT INTO election (name,party_name) values ('ajay   ','    congress');
INSERT INTO election (name,party_name) values ('sanju   ','krs');
INSERT INTO election (name,party_name) values ('   lokesh','   AAP');
INSERT INTO election (name,party_name) values ('uday','janata');

SELECT * FROM election;

ALTER TABLE election ADD unique name_uni(name);


/*syntex for adding not null constraint to existing coloum
ALTER TABLE table_name MODIFY COLumn column_name datatype constraint;*/
ALTER TABLE election modify column party_name varchar(20) not null;
desc election;
 SELECT * from election;
 SELECT length(name) from election;
  SELECT LTRIM(name) from election;
  SELECT RTRIM(name) from election;
 
USE dETAILSE;
CREATE TABLE dETAILSE(SL_NO INT,STUDENT_NAME varchar(20),STUDENT_USN varchar(20),STUDENT_AGE int,STUDENT_BRANCH varchar(20),STUDENT_COLLAGE varchar(20),STUDENT_ID varchar(20),STUDENT_ROLL_NUMBER INT,BANK_NAME varchar(20),MOBILE_NUMBER long );
INSERT INTO  dETAILSE VALUE(1,'Uday','4JN18ME074',22,'MECHANICAL','JNNCE','uday012',50,'Bank of Baroda',8861539422);
INSERT INTO  dETAILSE VALUE(1,'Uday','4JN18ME074',22,'MECHANICAL','JNNCE','vittal013',51,'SBI',8853451232);
INSERT INTO  dETAILSE VALUE(4,'Tarun','4JN18ME077',23,'MECHANICAL','JNNCE','tarun013',52,'karnataka',9874451232);
INSERT INTO  dETAILSE VALUE(4,'Tarun','4JN18ME077',23,'MECHANICAL','JNNCE','sanddep013',53,'SBI',9632451232);
INSERT INTO  dETAILSE VALUE(5,'Abhi','4JN18ME078',22,'MECHANICAL','JNNCE','abhi013',54,'cenara',8853451232);
INSERT INTO  dETAILSE VALUE(6,'Punith','4JN18ME079',23,'ISE','JNNCE','punith013',55,'SBI',9512451232);
INSERT INTO  dETAILSE VALUE(7,'Ajay','4JN18ME080',22,'CIVIL','JNNCE','ajay013',56,'kotek',8853451232);
INSERT INTO  dETAILSE VALUE(7,'Ajay','4JN18ME080',23,'MECHANICAL','JNNCE','ajay013',57,'SBI',8853451232);
INSERT INTO  dETAILSE VALUE(10,'Kiran','4JN18ME082',23,'MECHANICAL','JNNCE','vittal013',58,'karnatak',9874451232);
INSERT INTO  dETAILSE VALUE(10,'Kiran','4JN18ME083',23,'CIVIL','JNNCE','kiran013',59,'SBI',6243451232);
select * from dETAILSE;

select * from dETAILSE group by SL_NO;
select * from dETAILSE group by STUDENT_NAME;
select * from dETAILSE group by STUDENT_USN;
select * from dETAILSE group by STUDENT_AGE;
select * from dETAILSE group by STUDENT_BRANCH;

select max(SL_NO) from dETAILSE group by SL_NO;
select min(STUDENT_AGE) from dETAILSE group by STUDENT_AGE;
select avg(SL_NO) from dETAILSE group by SL_NO;
select sum(STUDENT_AGE) from dETAILSE group by STUDENT_AGE;

select reverse(STUDENT_NAME) from dETAILSE;

//*'xworkz':*/

lpad(String ,15,Stringtobeadded);
select LPAD('xworkz',10,'A');
select lpad('uday',10,'A');
select LPAD('xworkz',4,'A');

select RPAD('xworkz',10,'A');
select RPAD('xworkz',4,'A');

USE dETAILSE;
check;

CREATE TABLE fooditems(id int not null,Restorent_name varchar(20) ,food_name varchar(20),quantity int,price int,check(price>=45 AND price <=200));
insert into fooditems values(1,'vidhyatri bhavan','doose',2,150);
insert into fooditems values(2,' bhavan','edly',5,60);
insert into fooditems values(3,'savi sagar','poori',2,50);
select * from fooditems;

lock;
lock table fooditems read;
insert into  fooditems values(4,'shubham','chapathi',5,120);
UPDATE fooditems SET Restorent_name='xyz' WHERE id=1;
delete from fooditems where id=1;
unlock tables;

 limit;
select * from fooditems limit 2;
select * from  fooditems order by id desc limit 2;
select * from fooditems limit 2;
select * from  fooditems order by Restorent_name desc limit 2;

GREATEST;

select greatest(2,45,15,36,98,45,85,99,25);

DATEDIFF:

select  datediff('2022-12-30','2022-12-10');

dayname;

select dayname('2022-10-6');

dayyear

makedate:

USE dETAILSE;
select makedate(2019,200);
select makedate(2019,365);
select makedate(2022,1);
select makedate(2022,100);

FORMAT;
select format(56456.58461,2);
select format(6545121.258455,5);


DATE_ADD:

Select date_add('2022-11-03',interval 5 day);
Select date_add('2022-11-03',interval -5 day);

Select date_add('2022-11-03 09:15:20',interval 10 minute);
Select date_add('2022-11-03 09:15:20',interval 10 year);
Select date_add('2022-11-03 09:15:20',interval 1 quarter);/*1 quarter =3 mounts*/
Select date_add('2022-11-03 09:15:20',interval 1 week);
Select date_add('2022-11-03 09:15:20',interval 5 second);
Select date_add('2022-11-03 09:15:20',interval -5 second);
Select date_add('2022-11-03 09:15:20',interval 5 hour);

Select date_add('2022-05-02 09:15:20',interval 10 second);
Select date_add('2022-06-03 09:15:20',interval -5 second);
Select date_add('2022-04-12 09:15:20',interval 20 minute);
Select date_add('2022-02-25 09:15:20',interval -20 minute);
Select date_add('2022-09-16 09:15:20',interval 20 hour);
Select date_add('2022-10-03 09:15:20',interval 20 hour);
Select date_add('2022-11-09',interval 20 day);
Select date_add('2022-11-01',interval -20 day);
Select date_add('2022-11-29 09:15:20',interval 5 week);
Select date_add('2022-11-18 09:15:20',interval 5 week);
Select date_add('2022-11-16 09:15:20',interval 10 month);
Select date_add('2022-11-17 09:15:20',interval -10 month);
Select date_add('2022-2-20 09:15:20',interval 5 quarter);
Select date_add('2022-5-21 09:15:20',interval -5 quarter);
Select date_add('2022-1-22 09:15:20',interval 10 year);
Select date_add('2022-12-23 09:15:20',interval -10 year);

set operators:
1.union
2.union all
USE dETAILSE;
CREATE TABLE a (id int);
insert into a value(1),(2),(5),(4),(6),(2),(1),(3),(4),(8),(9),(11),(12),(15);
select * from a;
USE dETAILSE;
create table b(id int);
insert into b value(1),(7),(10),(12),(4),(13),(14),(15);
select * from b
UNION 
select * from a
union 
select * from b order by(id);
select * from a
union  all   /* print all the data*/
select * from b order by(id);

create table metro (id int,m_name varchar(20),source varchar(20),dest varchar(20), ticket int);
select * from metro;
insert into metro values(1,'namma metro','nagasandra','mejestric',20);
insert into metro values(2,'nimma metro','jp nagar','yashwanthpur',30);
insert into metro values(3,'jo metro','nagasandra','sp road',25);
insert into metro values(4,'shubham metro','shrerampura','mejestric',29);
insert into metro values(5,'sash metro','shivmogga','bengalur',21);
insert into metro values(6,'uday metro','peenya','kunempu',35);
insert into metro values(7,'akash metro','yashwanthpur','rajajinagar',40);
insert into metro values(8,'arun metro','kengeri','mejestric',38);
insert into metro values(9,'kiran metro','peenya 2','kr market',15);
insert into metro values(10,'praveen metro','jc road','sp road',24);
insert into metro values(11,'praveen metro','jc road','sp road',24);


create table train(id int,name varchar(20),train_no int,source varchar(20),dest varchar(20));
insert into train values(1,' jan Shathabdhi',25415,'bengalur','shivmogga');
insert into train values(2,'Golgumbaz',45415,'tarikere','Birur');
insert into train values(3,' Hambi',36415,'bengalur','Hospet');
insert into train values(4,' talguppa express',12115,'thumkur','shivmogga');
insert into train values(5,'Mongur express',65415,'delhi','hydrabad');
insert into train values(6,'local',98715,'shivmogga','tarikere');
insert into train values(7,'varnasi',45412,'bengalur','mumbai');
insert into train values(8,' yashwanthpur',415,'megistic','thumkur');
insert into train values(9,' Mysur express',98115,'Mysur','shivmogga');
insert into train values(10,'Bagalkot express',95115,'hubli','hydrabad');
select * from train;
drop table train;
USE dETAILSE;
SELECT id,m_name from metro
union
select id,name from train;

SELECT id,m_name from metro
union all
select id,name from train;

select * from a;
select * from b;

/* syntex for inner joints
select table1_name.column_name,table2_name.column_name from table1
inner join table2 on tablename1.columnname=table2.columnname;*/

select * from a;
select * from b;

select a.id,b.id from a inner join b on a.id=b.id;
select a.id as tablea,b.id as tableb from a inner join b on a.id=b.id;

select name,train_no from train;
select m_name,source from metro;
select  train.name,train.train_no,metro.m_name,metro.source from train inner join metro on train.id=metro.id;

/*left join*/
select a.id as tablea,b.id as tableb from a left outer join b on a.id=b.id;
select  train.name,train.train_no,metro.m_name,metro.source from train left outer join metro on train.id=metro.id;


/*right join*/
select a.id as tablea,b.id as tableb from a right outer join b on a.id=b.id;
select  train.name,train.train_no,metro.m_name,metro.source from train right outer join metro on train.id=metro.id;

/*cross joins*/
select * from train;
select * from metro;

SELECT train.name,metro.m_name from train,metro;


CREATE  TABLE mobile1(id_no int, mobile_name varchar(20));
INSERT INTO mobile1 VALUES(1,'Redmi');
INSERT INTO mobile1 VALUES(2,'vivo');
INSERT INTO mobile1 VALUES(1,'realme');
INSERT INTO mobile1 VALUES(3,'Redmi');
INSERT INTO mobile1 VALUES(5,'vivo');
Select * FROM mobile1;
drop table mobile1;
CREATE TABLE mobile2(id_no int,mobile_name varchar(20));
INSERT INTO mobile2 VALUES(2,'IPHONE');
INSERT INTO mobile2 VALUES(1,'one plus');
INSERT INTO mobile2 VALUES(2,'poko');
INSERT INTO mobile2 VALUES(3,'samsung');
INSERT INTO mobile2 VALUES(4,'oppo');
SELECT * FROM mobile2;
DROP table mobile2;
UPDATE mobile2 set mobile_name='redmi' where id_no=1; 



SELECT mobile1.id_no,mobile2.id_no FROM mobile1 INNER join mobile2 on mobile1.id_no=mobile2.id_no;
SELECT mobile1.mobile_name,mobile2.mobile_name FROM mobile1 INNER join mobile2 on mobile1.mobile_name=mobile2.mobile_name;

select id_no,mobile_name from mobile1;
select id_no,mobile_name from mobile2;

select mobile1.id_no,mobile1.mobile_name,mobile2.id_no,mobile2.mobile_name from mobile1 inner join mobile2 on mobile1.id_no=mobile2.id_no;
select mobile1.id_no,mobile1.mobile_name,mobile2.id_no,mobile2.mobile_name from mobile1 inner join mobile2 on mobile1.mobile_name=mobile2.mobile_name;

select mobile1.id_no,mobile2.id_no from mobile1 left outer join mobile2 on mobile1.id_no=mobile2.id_no;
select mobile1.mobile_name,mobile2.mobile_name from mobile1 left outer join mobile2 on mobile1.mobile_name=mobile2.mobile_name;

select mobile1.id_no,mobile1.mobile_name,mobile2.id_no,mobile2.mobile_name from mobile1 left outer join mobile2 on mobile1.mobile_name=mobile2.mobile_name;


select mobile1.id_no,mobile2.id_no from mobile1 right outer join mobile2 on mobile1.id_no=mobile2.id_no;
select mobile1.mobile_name,mobile2.mobile_name from mobile1 right outer join mobile2 on mobile1.mobile_name=mobile2.mobile_name;

select mobile1.id_no,mobile1.mobile_name,mobile2.id_no,mobile2.mobile_name from mobile1 right outer join mobile2 on mobile1.mobile_name=mobile2.mobile_name;

USE dETAILSE;
Create table  bank_user_detailse(id int,bank_id int not null,bank_name varchar(20),place varchar(20), no_of_cust int not null,bank_total_detailse bigint);
insert into bank_user_detailse values(8,408,'SWISS','electroniccity',128,906478);
insert into bank_user_detailse values(9,409,'Corporation','Banashankari',150,235798);
insert into bank_user_detailse values(2,402,'HDFC','Rajajinagar',200,600000);
insert into bank_user_detailse values(3,403,'ICICI','jp nagar',250,380000);
insert into bank_user_detailse values(10,410,'SBI','Mejestic',286,922657);
insert into bank_user_detailse values(1,401,'SBI','BTM',300,500000);
insert into bank_user_detailse values(6,406,'SBI','Basavangudi',326,935698);
insert into bank_user_detailse values(4,404,'AXIS','Jayanagar',498,784788);
insert into bank_user_detailse values(7,407,'BARODA','Kormangala',547,903674);
insert into bank_user_detailse values(5,405,'UNION','Vijayanagar',788,936546);
select * from bank_user_detailse;

Create table loan_detailse(id int not null,loan_type varchar(20),cust_id int not null,loan_amount bigint,b_id int not null unique);
insert into loan_detailse values(1,'AgricultureLone',201,237378,401);
insert into loan_detailse values(2,'PersonalLone',207,327873,406);
insert into loan_detailse values(3,'EducationLoan',210,374734,409);
insert into loan_detailse values(4,'BusinessLone',209,898485,410);
insert into loan_detailse values(5,'FormalLoan',202,874378,402);
insert into loan_detailse values(6,'AgricultureLone',206,567783,403);
insert into loan_detailse values(7,'AgricultureLone',204,983893,404);
insert into loan_detailse values(8,'EducationLoan',203,289834,405);
insert into loan_detailse values(9,'GoldLoan',205,499056,408);
insert into loan_detailse values(10,'BusinessLone',208,689384,411);
drop table loan_detailse;
select * from loan_detailse order by id asc;
select * from loan_detailse;

  CREATE TABLE customer_details(id int not null, cust_name varchar(30) not null,b_id int not null,c_location varchar(25) not null,c_balance int not null,cust_id int not null);

INSERT INTO customer_details VALUES(1,'Shashank',401,'Rajajinagar',3000,201);
INSERT INTO customer_details VALUES(3,'Srisham',403,'Rajajinagar',2994,202);
INSERT INTO customer_details VALUES(4,'Nataraj',404,'Banashankari',7548,203);
INSERT INTO customer_details VALUES(5,'Neeraj',405,'Kormangala',8735,301);
INSERT INTO customer_details VALUES(6,'Ravi',403,'Kengeri',9377,304);
INSERT INTO customer_details VALUES(7,'Akshay',403,'Micolayout',3264,204);
INSERT INTO customer_details VALUES(8,'Shubham',401,'Jaynagar',8366,209);
INSERT INTO customer_details VALUES(9,'Uday',403,'Jpnagar',9874,305);
INSERT INTO customer_details VALUES(10,'Arun',411,'Yeshvanthpur',8473,303);
INSERT INTO customer_details VALUES(11,'Sanjay',413,'BTM',8655,401);
Drop table customer_details;


SELECT * FROM customer_details;
select * from loan_detailse;
select * from bank_user_detailse;

SUBQUERIES;

select bank_name from bank_user_detailse where bank_id = (select b_id from customer_details where cust_id=201);

select bank_name from bank_user_detailse where bank_id =(select b_id from customer_details where cust_id=202);

select bank_name from bank_user_detailse where bank_id =(select b_id from customer_details where cust_id=301);
select bank_name from bank_user_detailse where bank_id in(select b_id from customer_details where cust_id in (202,301));

select bank_name from bank_user_detailse where bank_id = (select b_id from loan_detailse where cust_id=202);
select place from bank_user_detailse where bank_id = (select b_id from loan_detailse where cust_id=202);
select no_of_cust from bank_user_detailse where bank_id = (select b_id from loan_detailse where cust_id=202);

select loan_type from loan_detailse where cust_id=(select cust_id from customer_details where cust_name='Akshay');


