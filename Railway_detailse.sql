USE GAMES;
CREATE TABLE Railway_station (id int not null,station_name varchar(20) unique,no_of_platforms int not null,
starting_point varchar(20) unique,ending_point varchar(20) unique,train_no int unique not null,
no_of_employes int not null,location varchar(20),no_of_shops int ,no_of_stops int not null,
TT_name varchar(20) unique);
INSERT INTO Railway_station VALUES(1,'KSR Bengalur',10,'KSR Bengalur','Shivmogga',1000,52,'Mejestic',21,8,'Uday');
INSERT INTO Railway_station VALUES(2,'Shivmogga',15,'Shivmogga','Tarikere',1001,45,'Sheshadripuram',25,10,'Shashi');
INSERT INTO Railway_station VALUES(3,'Goa',19,'Goa','Yashwanthpura',1002,48,'panaji',29,12,'Sanjay');
INSERT INTO Railway_station VALUES(4,'Birur',18,'Birur','Hubli',1003,43,'Shivani',30,20,'Vittal');
INSERT INTO Railway_station VALUES(5,'Tumkur',25,'Tumkur','Birur',1004,55,'VV puram',32,18,'Sandeep');
INSERT INTO Railway_station VALUES(6,'Tarikere',22,'Tarikere','Talguppa',1006,58,'MG road',28,13,'Nataraj');
INSERT INTO Railway_station VALUES(7,'Mysur',26,'Mysur','varnashi',1007,49,'pales road',18,5,'Tarun');
INSERT INTO Railway_station VALUES(8,'Talguppa',30,'Talguppa','Mysur',1008,38,'jooga',16,9,'kiran');
INSERT INTO Railway_station VALUES(9,'Mandya',8,'Mandya','Maddur',1009,32,'kr circle',8,22,'prasanna');
INSERT INTO Railway_station VALUES(10,'Tamilnaadu',6,'tamilnadu','Andrapradesh',1010,22,'chennai',12,25,'akash');

select * from Railway_station;

CREATE TABLE Platform_detailse(id int not null,train_no int unique not null,station_name varchar(20),
platform_name varchar(20) unique,arrival_time varchar(20) ,departure_time varchar(20),no_of_workers int not null,
no_of_TVs int not null,hotel_name varchar(20) unique,no_of_waiting_rooms int not null,driver_name varchar(20) unique);
INSERT INTO Platform_detailse VALUES(1,1000,'kSR bengalur','1A','6:00','6:05',10,2,'appu hotel',3,'ajay');
INSERT INTO Platform_detailse VALUES(2,1001,'Tumkur','2A','7:20','7:30',8,1,'Malnad hotel',6,'prasanna');
INSERT INTO Platform_detailse VALUES(3,1002,'Tipatur','2B','8:00','8:05',15,6,'vidyatri bhavan',9,'sanju');
INSERT INTO Platform_detailse VALUES(4,1003,'Arsikere','1B','8:35','8:45',4,5,'sihi thindhi',4,'abhi');
INSERT INTO Platform_detailse VALUES(5,1004,'kadur','3A','9:30','9:35',18,10,'sahandri',8,'suhas');
INSERT INTO Platform_detailse VALUES(6,1006,'Birur','4A','9:45','9:55',11,9,'savi sagar',12,'Shrisam');
INSERT INTO Platform_detailse VALUES(7,1007,'Tarikere','5A','10:45','10:50',9,15,'hotel aramane',2,'niraj');
INSERT INTO Platform_detailse VALUES(8,1008,'Badravathi','6A','11:00','11:15',16,8,'alankar hotel',5,'arun');
INSERT INTO Platform_detailse VALUES(9,1009,'Machenahalli','7A','12:00','12:30',1,14,'Ruchi hotel',15,'akash');
INSERT INTO Platform_detailse VALUES(10,1010,'Shivmogga','7B','1:30','2:00',5,20,'testy food',18,'looki');

select * from Platform_detailse;
drop table Platform_detailse;

CREATE TABLE Train_detailse(id int not null,train_name varchar(20) unique,train_no int unique not null,passenger_name varchar(23) unique,
passenger_age int not null,starting_point varchar(20) unique,ending_point varchar(20) unique,platform_name varchar(20) unique,
no_of_bogies int not null,AC_alloted_pas_name varchar(20) unique,helplline_num bigint not null);
INSERT INTO Train_detailse VALUES(1,'Shathabdhi express',1000,'Uday',22,'yashwanthpur','Tarikere','1A',12,'Sunil',8861539422);
INSERT INTO Train_detailse VALUES(2,'Hampi express',1001,'Akshar',23,'KSR bengalur','Shivmogga','2A',10,'Ajay',8861545123);
INSERT INTO Train_detailse VALUES(3,'Mysur express',1002,'Omkar',20,'Thumkur','kadur','2B',8,'sanju',9845139422);
INSERT INTO Train_detailse VALUES(4,'Yashwanthpur express',1003,'lokesh',25,'Arsikere','Hasan','1B',7,'Suhas',9511539422);
INSERT INTO Train_detailse VALUES(5,'basava express',1004,'Krishna',28,'Hasan','sakalespura','3A',13,'Surya',6311539422);
INSERT INTO Train_detailse VALUES(6,'RaniChenama express',1006,'Bheem',26,'Chikkamagalur','Darmastala','4A',15,'hitesh',7861539422);
INSERT INTO Train_detailse VALUES(7,'goa express',1007,'Ram',23,'Birur','Hubli','5A',18,'yashu',9874539422);
INSERT INTO Train_detailse VALUES(8,'Shiradi express',1008,'Ganesha',19,'Ajjanpura','Harihara','6A',11,'Sachin',8861537744);
INSERT INTO Train_detailse VALUES(9,'talguppa express',1009,'Shiva',18,'Mandya','Mysur','7A',17,'Barath',8861539425);
INSERT INTO Train_detailse VALUES(10,'mandya express',1010,'Ravi',16,'Goa','Maddur','7B',16,'Raghu',886153842);


select * from Train_detailse;
drop table Train_detailse;

select * from Railway_station;
select * from Platform_detailse;
select * from Train_detailse;

select station_name from Railway_station where train_no = (select train_no from Platform_detailse where platform_name='1A');
select location from Railway_station where train_no = (select train_no from Platform_detailse where platform_name='2A');
select train_name from Train_detailse where platform_name=(select platform_name from Platform_detailse where driver_name='ajay');
select train_name from Train_detailse where platform_name=(select platform_name from Platform_detailse where driver_name='prasanna');
select passenger_name from Train_detailse where platform_name=(select platform_name from Platform_detailse where arrival_time='6:00');



/*inner join*/
select Railway_station.id,Train_detailse.id from Railway_station INNER join Train_detailse on Railway_station.id=Train_detailse.id;

/*left join*/
select Railway_station.id,Train_detailse.id from Railway_station left outer join Train_detailse on Railway_station.id=Train_detailse.id;

/*right join*/
select Railway_station.id,Train_detailse.id from Railway_station right outer join Train_detailse on Railway_station.id=Train_detailse.id;


