USE  COUNRTY_INFORMATION;
CREATE TABLE bus_depo_detailse(depo_id int primary key,depo_name varchar(20) unique, 
location varchar(20) unique,n0_of_plotforms int ,minister_name varchar(20),
no_of_drivers int ,no_of_conducter int not null,helpline_number bigint,total_no_Of_bus int ,
no_of_workers int);
DROP table bus_depo_detailse;
INSERT INTO bus_depo_detailse VALUES(1,'Kaveri','Rajajinagar',25,'uday',50,60,8861539422,70,80);
INSERT INTO bus_depo_detailse VALUES(2,'Ganga','BTM',25,'ajay',20,25,9845639422,50,60);
INSERT INTO bus_depo_detailse VALUES(3,'krishna','Mejestic',22,'akash',5,10,6961539411,21,25);
INSERT INTO bus_depo_detailse VALUES(4,'uday','kanakpura',30,'sanju',20,25,9845539422,30,24);
INSERT INTO bus_depo_detailse VALUES(5,'Rama','Yashwanthpur',35,'kiran',27,45,6545539422,50,70);
INSERT INTO bus_depo_detailse VALUES(6,'Raj','S P road',30,'praveen',40,60,8745539422,69,58);
INSERT INTO bus_depo_detailse VALUES(7,'Seetha','jayanagar',25,'Prasanna',56,60,9636939422,70,80);
INSERT INTO bus_depo_detailse VALUES(8,'shashi','vijaynagar',25,'Santhu',50,55,8861539656,70,55);
INSERT INTO bus_depo_detailse VALUES(9,'Bheema','Vijaya',30,'avinash',45,65,8861539422,25,32);
INSERT INTO bus_depo_detailse VALUES(10,'Ganesha','peenya',25,'Sandeep',80,60,9745539422,70,50);
SELECT * FROM bus_depo_detailse;









SELECT LTRIM(bus_name) from bus_detailse;
  
SELECT RTRIM(bus_name) from bus_detailse;
DROP TABLE bus_detailse;


CREATE TABLE bus_detailse(id int not null,bus_name varchar(20) unique,depo_id int primary key ,starting_point varchar(20),
ending_point varchar(20),no_of_stops int ,driver_name varchar(20) unique,conducter_name varchar(20),
no_of_passenger int not null,foreign key(depo_id) references bus_depo_detailse(depo_id));


SELECT * FROM bus_detailse;
DROP  table bus_detailse;
INSERT INTO bus_detailse VALUES(101,'     Thunga',   1,'  nagasandra', 'Gruhalakshmi louyot   ',5   ,'  uday','  sandeep',50   );
INSERT INTO bus_detailse VALUES(102,'   Ganga',2    ,'    nagasandra', 'Gruhalakshmi louyot    ',    8,'akash    ','   sandeep',45   );
INSERT INTO bus_detailse VALUES(103,'thunga 2   ',    3,'    shashi', 'lakshmi    ',  6,'Shashi   ','   akash',   50);
INSERT INTO bus_detailse VALUES(104,'    Yamuna',4   ,'    peenya', 'nagasandra   ',   5,'sandeep    ','     akash',61    );
INSERT INTO bus_detailse VALUES(105,'Kaveri     ',     5,'   M G road', 'louyot    ',   4,'ajay  ','    sandeep',    50);
INSERT INTO bus_detailse VALUES(   106,'    Seetha',6   ,'   B H road', 'louyot     ',2    ,'   santhu','    uday',50    );
INSERT INTO bus_detailse VALUES(107     ,'  Ram',7    ,'      mejestic', '      peenya',4    ,'    seena','ajay    ',57);
INSERT INTO bus_detailse VALUES(   108,'Raj    ',8   ,'BTM   ', '    Gruhalakshmi    ',   4,'praveen    ','    sandeep',50);
INSERT INTO bus_detailse VALUES(109,'   Asha',9   ,'     ribg road', '     louyot',7       ,'    sumil','   uday',40   );
INSERT INTO bus_detailse VALUES(110,'     Thunga 3',10,'   K R puram', 'louyot',8,'    prasanna','ajay   ',20);

SELECT LTRIM(bus_name) from bus_detailse;
SELECT LTRIM(starting_point) from bus_detailse;
SELECT LTRIM(id) from bus_detailse;
SELECT LTRIM(ending_point) from bus_detailse;
SELECT LTRIM(no_of_stops) from bus_detailse;
SELECT LTRIM(driver_name) from bus_detailse;
SELECT LTRIM(conducter_name) from bus_detailse;
SELECT LTRIM(no_of_passenger) from bus_detailse;
SELECT LTRIM(starting_point) from bus_detailse;

  
SELECT RTRIM(bus_name) from bus_detailse;
SELECT RTRIM(starting_point) from bus_detailse;
SELECT RTRIM(id) from bus_detailse;
SELECT RTRIM(ending_point) from bus_detailse;
SELECT RTRIM(bus_name) from bus_detailse;
SELECT RTRIM(no_of_stops) from bus_detailse;
SELECT RTRIM(driver_name) from bus_detailse;
SELECT RTRIM(conducter_name) from bus_detailse;
SELECT RTRIM(no_of_passenger) from bus_detailse;
SELECT RTRIM(starting_point) from bus_detailse;






