use IPL;
create table Bike_detailse (id int ,name varchar(30) unique,Bike_model varchar(30) not null,company varchar(30) not null,
mainFeatures varchar(30) not null,company_owner varchar(30) not null,
company_ceo varchar(30) not null,company_origin varchar(30) not null,manufacturing_location varchar(30) not null,
showroom_owner varchar(30) not null,lead_engineer varchar(30) not null,showroom_location varchar(30) not null,
shoroom_name varchar(30) not null,showroom_manager varchar(30) not null,petrolOrElectric varchar(30) not null,
mileage int,price bigint,weight bigint ,primary key(id),comfortable boolean,safty boolean);
INSERT INTO Bike_detailse values(1,'Royal Enfield','classic 350','Royal Enfield','Bengalur','uday','akash','mumbai','japan','ajay','yashu','Shreerampura','frinds','sanjay','petrol',40,300000,20,true,true);
INSERT INTO Bike_detailse values(2,'Ktm','KTM 690 Enduro','KTM','Mumbai','akash','uday','bengalur','united','kiran','prakash','peenya','shubha','sanjay','petrol',35,350000,25,true,false);
INSERT INTO Bike_detailse values(3,'Xpulse','xpulse 250','hero','Bengalur','ajay','akash','goa','japan','akash','yathish','mejestic','yoodha','sanjay','petrol',45,250000,15,true,true);
INSERT INTO Bike_detailse values(4,'duke','duke 350','KTM','Bengalur','yashu','uday','hydrabadh','cheena','ajay','aksha','rajajinagar','xworz','seema','eletric',45,350000,21,false,true);
INSERT INTO Bike_detailse values(5,'heo honda','hero 340','Hero','rajajinagar','praveena','prasanna','mumbai','japan','uday','shashi','kuvempu road','goals','kiran','petrol',55,200000,14,true,true);
INSERT INTO Bike_detailse values(6,'Discover','bs4','Bajaj','Bengalur','pkash','akash','shivmogga','bengalur','ajay','yashu','btm','keepre','sanjay','electric',50,150000,20,true,true);
INSERT INTO Bike_detailse values(7,'pulser','pulser bs5','Bajaj','peenya','uday','prasanna','bengalur','japan','ajay','shashi','Mg road','frinds','shodha','petrol',25,220000,20,true,true);
INSERT INTO Bike_detailse values(8,'pulser 220','pulser 220','bajaj','Bengalur','kiran','akash','sp road','mumbai','kiran','uday','shivaginagar','shreee','sanjay','petrol',42,280000,22,true,true);
INSERT INTO Bike_detailse values(9,'RX','RX 100','Enfield','Bengalur','shashi','ajay','goa','america','uday','ashu','market','govinda','arun','eletric',55,140000,25,true,true);
INSERT INTO Bike_detailse values(10,'R15','rormoo','R15','Bengalur','uday','akash','mumbai','japan','ajay','yashu','Shreerampura','frinds','sanjay','petrol',40,300000,20,true,true);
select * from Bike_detailse;

Create table enfeild_detailse (si_no int primary key , name varchar(20), milliage int not null, price bigint, 
 weight int not null, owner_name varchar(20),location varchar(20), showroom_name varchar(20),
 plate_number varchar(20),model_name varchar(20),showroom_location varchar(20), owner_mobile_number bigint,delivary_date varchar(20),manufactring_date varchar(20),
 loanOrCash varchar(20),petrolOrElectric varchar(20),owner_job varchar(20),comfartable boolean,good boolean);
 insert into enfeild_detailse values(1,'classic 350',45,300000,20,'uday','tarikere','bengalur','ka-66-885','classic 350','rajajinagar',8861539422,'22-11-2022','10-1-2022','cash','petrole','software enginear',true,true);
  insert into enfeild_detailse values(2,'Interceptor 650',65,350000,22,'ajay','shivmogga','tarikere','ka-66-851','Interceptor 650','mg road',9546139422,'12-11-2022','22-1-2022','loan','petrole','student',true,true);
 insert into enfeild_detailse values(3,'Himalayan',49,250000,23,'akash','mg road','shiva','ka-66-841','Himalayan','sp road',9874539422,'21-11-2022','10-2-2022','cash','petrole','former',true,true);
 insert into enfeild_detailse values(4,'Bullet 350',48,260000,30,'sanju','kr market','goa','ka-66-964','Bullet 350','kr market',6545539422,'20-11-2022','10-5-2022','loan','electric','bussinesss',true,true);
 insert into enfeild_detailse values(5,' Continental GT 650',44,320000,21,'shashi','peenya','market','ka-66-625',' Continental GT 650','peenya',9856539422,'23-11-2022','11-5-2022','cash','electric','software enginear',true,true);
 insert into enfeild_detailse values(6,'classic 350',42,340000,26,'arun','nagasandra','bengalur','ka-66-125','classic 350','jayanagar',2364539422,'24-11-2022','20-1-2022','loan','petrole','hardware enginear',true,true);
 insert into enfeild_detailse values(7,' Thunderbird X 350',40,360000,24,'prassanth','dasarahalli','shivmogga','ka-66-965',' Thunderbird X 350','vijayanagar',9871539422,'25-11-2022','22-4-2022','loan','electric','cite engineer',true,true);
 insert into enfeild_detailse values(8,'hunter 350',35,340000,25,'praveena','stage2','tarikere','ka-66-785','hunter 350','shanthinagar',9661539422,'26-11-2022','10-2-2022','cash','petrole','student',true,true);
 insert into enfeild_detailse values(9,'meteroa 350',55,380000,27,'karthik','mahalashmi','mumbai','ka-66-255','classic 350','jc road',8661539422,'27-11-2022','10-4-2022','loan','electric','software enginear',true,true);
 insert into enfeild_detailse values(10,'Himalayan 350',43,3200000,28,'ashu','btm','bengalur','ka-66-485','Himalayan 350','market',7861539422,'28-11-2022','1-1-2022','loan','petrole','it',true,true);
select * from enfeild_detailse;


SELECT name FROM enfeild_detailse WHERE si_no=4;
SELECT name ,si_no FROM enfeild_detailse WHERE si_no BETWEEN 5 AND 8;
SELECT name ,si_no FROM enfeild_detailse WHERE si_no NOT IN (1,6);
SELECT name ,si_no FROM enfeild_detailse WHERE si_no =6 AND sports=0;
SELECT name ,si_no FROM enfeild_detailse WHERE si_no =1 OR  si_no=2;
                        
SELECT ltrim(owner_name)FROM enfeild_detailse;
SELECT rtrim(owner_name)FROM enfeild_detailse;

SELECT SUM(milliage) FROM enfeild_detailse;
SELECT AVG(price) FROM enfeild_detailse;
SELECT MAX(weight) FROM enfeild_detailse;
SELECT MIN(milliage) FROM enfeild_detailse;
SELECT COUNT(price) FROM enfeild_detailse;

SELECT owner_name FROM enfeild_detailse group by name;
SELECT owner_name FROM enfeild_detailse group by name having name=1;

SELECT owner_name FROM enfeild_detailse order by owner_name;
SELECT owner_name FROM enfeild_detailse order by owner_name desc ;

SELECT id ,si_no FROM Bike_detailse inner join enfeild_detailse WHERE id=si_no;
SELECT id ,si_no FROM Bike_detailse left join enfeild_detailse on id=si_no;
SELECT id ,si_no FROM Bike_detailse right join enfeild_detailse on id=si_no;
SELECT id ,si_no FROM Bike_detailse,enfeild_detailse;

SELECT owner_name FROM enfeild_detailse WHERE si_no IN (SELECT si_no FROM location WHERE si_no=10);



SELECT lpad("uday" ,10 ,"bangalore");
SELECT rpad("arun" ,20 ,"bangalore");

SELECT instr("bangalore","l") as position;
SELECT substr("Bangalore",5,7);
SELECT length("rajajinagar")as length;

SELECT REPLACE("dell laptop", "dell", "lenovo") as replacing;
SELECT POSITION("n" IN "shashankkb7@.com") AS positioning;
SELECT MID("mobilephone", 6, 4) AS middle;
SELECT REVERSE("rajajinagar");

SELECT owner_name FROM  enfeild_detailse WHERE name like "u%";
SELECT owner_name FROM  enfeild_detailse WHERE name between  "u"and "d";
SELECT upper(owner_name) FROM enfeild_detailse;
SELECT lower(owner_name) FROM enfeild_detailse;
SELECT upper(owner_name) FROM enfeild_detailse WHERE si_no=6 ;
SELECT lower(owner_name) FROM enfeild_detailse WHERE si_no=1 ;

SELECT datediff("2022/10/15" , "2025/11/05")as diffrence;
SELECT makedate(2019,21);

SELECT date("2020/11/10");
SELECT dayname("2022/01/26")as day;

SELECT date_add("2020/11/15 ,09:10:05" ,interval 20 day) as intervals;
SELECT date_add("2020/11/15 ,09:10:05" ,interval 11 month) as intervals;
SELECT date_add("2020/11/15 ,09:10:05" ,interval 28 quarter) as intervals;
SELECT date_add("2020/11/15 ,09:10:05" ,interval 14 week) as intervals;
SELECT date_add("2020/11/15 ,09:10:05" ,interval 40 second) as intervals;
SELECT date_add("2020/11/15 ,09:10:05" ,interval 70 hour) as intervals;
SELECT date_add("2020/11/15 ,09:10:05" ,interval 70 minute) as intervals;

SELECT date_add("2020/11/15 ,09:10:05" ,interval -20 day) as intervals;
SELECT date_add("2020/11/15 ,09:10:05" ,interval -11 month) as intervals;
SELECT date_add("2020/11/15 ,09:10:05" ,interval -28 quarter) as intervals;
SELECT date_add("2020/11/15 ,09:10:05" ,interval -14 week) as intervals;
SELECT date_add("2020/11/15 ,09:10:05" ,interval -40 second) as intervals;
SELECT date_add("2020/11/15 ,09:10:05" ,interval -70 hour) as intervals;
SELECT date_add("2020/11/15 ,09:10:05" ,interval -70 minute) as intervals;


SELECT greatest(8,10,72,12,25,73,65)as greatest;
 
 
 
 
 
 
 
 
 
 
 
 