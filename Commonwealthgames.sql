CREATE DATABASE GAMES;
USE GAMES;

CREATE TABLE Commonwealthgames( primary key  (id,team_total_points),id int not null ,game_name varchar(20) not null unique,no_of_players  int not null unique
,country_participited varchar(20)not null,no_of_medals int not null unique,captain_name varchar(20)not null unique,
penalty_point int not null unique,bonus_points int not null unique,sponser varchar(20)not null unique,vennue varchar(20),
team_rank int not null unique,team_total_points int not null, player_ranking int not null unique,winner_team varchar(20)not null unique,
runners_team varchar(20) not null unique,semi_final_team varchar(20)not null unique,
refree_name varchar(20)not null unique,host_country varchar(20) not null unique,qualifier_team_winner varchar(20),qualifier_team_runner varchar(20),game_type varchar(20)) ;
INSERT INTO Commonwealthgames VALUES(1,'BASKETBALL',10,'India',20,'Vishesh Bhriguvanshi',20,25,'INMB','delhi',1,20,5,'India','pakistan','India','madhan','india','India','pakistan','international');
INSERT INTO Commonwealthgames VALUES(2,'Shooting',11,'pakistan',21,'virat kohli',30,24,'THSDH','Bengalur',10,21,10,'pakistan','india','pakistan','uday','pakistan','pakistan','India','national');
INSERT INTO Commonwealthgames VALUES(3,'vollyball',12,'england',22,'Rohit sharma',29,30,'MKUFM','kolkata',2,22,15,'england','west indies','england','shashi','england','england','west indies','ordinary');
INSERT INTO Commonwealthgames VALUES(4,'cricket',13,'astrelia',23,'kl rahul',31,23,',JDFJ','hydrabad',11,23,11,'west indies','england','west indies','ajay','west indies','west indies','england','international');
INSERT INTO Commonwealthgames VALUES(5,'Swimming',14,'south africa',24,'Surya',28,31,'NKJDF','gujarath',3,24,6,'Astrelia','newzeland','Astrelia','akash','Astrelia','Astrelia','newzeland','national');
INSERT INTO Commonwealthgames VALUES(6,'tennies',15,'west indies',25,'Hardik pandya',32,22,'JDKF','patna',12,25,7,'newzeland','Astrelia','newzeland','kiran','newzeland','newzeland','Astrelia','international');
INSERT INTO Commonwealthgames VALUES(7,'football',16,'nedherland',30,'Ms Dhooni',27,32,'HDKF','tamilnaadu',4,26,8,'south africa','bangladesh','south africa','praven','south africa','south africa','south africa','national');
INSERT INTO Commonwealthgames VALUES(8,'chess',27,'shrilanka',32,'Rishab panth',33,21,'DKJH','kerala',13,27,9,'bangladesh','south africa','bangladesh','prasanna','bangladesh','bangladesh','nedharland','international');
INSERT INTO Commonwealthgames VALUES(9,'keram',26,'newzeland',31,'Dinesh karthik',26,33,'KSDJH','madyapradesh',5,28,20,'nedharland','scotland','nedharland','sanjay','nedharland','nedharland','scotland','ordinary');
INSERT INTO Commonwealthgames VALUES(10,'handball',25,'UAE',33,'Ab devilliars',34,20,'KSDKU','goa',14,29,21,'scotland','nedharland','scotland','mani','scotland','scotland','UAE','international');
INSERT INTO Commonwealthgames VALUES(11,'throball',24,'bangladesh',34,'Arshadeep sing',25,34,'JKUDF','hariyana',6,30,22,'UAE','United state','UAE','santhosh','UAE','UAE','United state','national');
INSERT INTO Commonwealthgames VALUES(12,'cycling',23,'united state',26,'Boombra',35,26,'NDKJ','pune',15,31,23,'United state','UAE','United state','sandeep','United state','United state','zembambe','international');
INSERT INTO Commonwealthgames VALUES(13,'gymnastic',22,'zembambe',27,'Bhriguvanshi',24,35,'KDFKUG','kashmir',7,32,24,'zembambe','namibia','zembambe','avinash','zembambe','zembambe','namibia','national');
INSERT INTO Commonwealthgames VALUES(14,'boxing',21,'scotland',28,'Vishesh',36,27,'DFKJD','telangana',18,40,26,'namibia','zembambe','namibia','namdhan','namibia','namibia','cheena','international');
INSERT INTO Commonwealthgames VALUES(15,'hocky',20,'china',29,'uday',23,28,'KKJJB','maharastra',8,36,30,'cheena','america','cheena','prakash','cheena','cheena','america','national');


drop table Commonwealthgames;
select * from Commonwealthgames;
select * from Commonwealthgames group by no_of_players;
select * from Commonwealthgames group by no_of_medals;

select LPAD('BASKETBALL',10,'B');
select LPAD('cricket',4,'N');

select RPAD('BASKETBALL',10,'B');
select RPAD('cricket',4,'N');

select max(no_of_players) from Commonwealthgames group by no_of_players;
select max(no_of_medals) from Commonwealthgames group by no_of_medals;

select min(no_of_players) from Commonwealthgames group by no_of_players;
select min(no_of_medals) from Commonwealthgames group by no_of_medals;

select avg(no_of_players) from Commonwealthgames group by no_of_players;
select avg(no_of_medals) from Commonwealthgames group by no_of_medals;

select sum(no_of_players) from Commonwealthgames group by no_of_players;
select sum(no_of_medals) from Commonwealthgames group by no_of_medals;

SELECT game_name FROM Commonwealthgames WHERE game_name LIKE 'K%';  /*starting letter*/
SELECT captain_name FROM Commonwealthgames WHERE captain_name LIKE '%a';
SELECT country_participited FROM Commonwealthgames WHERE country_participited LIKE '%d%';
SELECT game_name FROM Commonwealthgames WHERE game_name LIKE 'K%r%';

SELECT * FROM Commonwealthgames WHERE id in(1,2,3);
SELECT * FROM Commonwealthgames WHERE id in(5,6,7);
SELECT * FROM Commonwealthgames WHERE id in(1,5,3,9);
SELECT * FROM Commonwealthgames WHERE id in(5,1,7,11);

SELECT * FROM Commonwealthgames WHERE id between 6 and 10;
SELECT * FROM Commonwealthgames WHERE id between 1 and 5;
SELECT * FROM Commonwealthgames WHERE id between 2 and 10;
SELECT * FROM Commonwealthgames WHERE id between 3 and 5;

SELECT * FROM Commonwealthgames ORDER BY id desc;
SELECT * FROM Commonwealthgames ORDER BY no_of_players desc;
SELECT * FROM Commonwealthgames ORDER BY no_of_medals desc;
SELECT * FROM Commonwealthgames ORDER BY game_name desc;

select reverse(game_name) from Commonwealthgames;
select reverse(country_participited) from Commonwealthgames;
select reverse(captain_name) from Commonwealthgames;
select reverse(vennue) from Commonwealthgames;

 