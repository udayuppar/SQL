CREATE DATABASE COUNRTY_INFORMATION;
USE  COUNRTY_INFORMATION;
CREATE TABLE  COUNRTY_INFORMATION (SI_NO INT not null,STATE_NAME varchar(20) unique ,CHIFE_MINISTER_NAME varchar(20) unique,NO_OF_AIRPORT INT not null,NO_OF_CRIKECT_STADIUM INT,CAPITAL_NAME varchar(20),NO_OF_DISTRICT INT,
 NO_OF_TALUK INT,NO_OF_HOBLIES INT,NO_OF_VILLAGES INT ,NO_OF_ENGINEERING_COLLOGE INT ,NO_OF_MEDICAL_COLLAGE INT,POPULATION varchar(20),STATE_LUNGUAGE varchar(20),STATE_ANIMAL varchar(20),STATE_BIRD varchar(20),
 STATE_FLOWER varchar(20),STATE_TREE varchar(20),STATE_FRUIT varchar(20),FOUNDED_ON int);
INSERT INTO COUNRTY_INFORMATION VALUES(1,'Karnataka','Basavaraj bommay',8,18,'Bengalur',31,176,747,27481,542,19,'6.41 cr','kannada','Indian Elephant','Indian roller','Lotus','Indian sandalwood','Mango',1956);
INSERT INTO COUNRTY_INFORMATION VALUES(1,null,'Muthuvel',10,15,'Chennai',28,165,720,27200,520,10,'6.5 cr','Tamil','Nilgiri tahr','CHaryanvi','Flame lily','Asian palmyra palm','Jackfruit',1960);
INSERT INTO COUNRTY_INFORMATION VALUES(3,'Andra pradesh',null,6,20,'Amaravati',26,160,770,27700,580,10,'6.2 cr','Telugu','Blackbuck','Indian roller','Water lilies','Indian sandalwood','Neem Tree',1936);
INSERT INTO COUNRTY_INFORMATION VALUES(3,null,'Pinarayi Vijayan',12,25,'Thiruvananthapuram',25,145,700,2654,520,15,'6.0 cr','Malyalum','Indian Elephant','Great hornbill','Lotus','Coconut','Jackfruit',1970);
INSERT INTO COUNRTY_INFORMATION VALUES(5,'Maharashtra','Manohar Joshi',6,10,'Mumbai',35,150,780,27900,500,11,'6.75 cr','Marathi','squirrel','green pigeon','Pride of India','Indian sandalwood','orange',1920);
INSERT INTO COUNRTY_INFORMATION VALUES(6,'Goa',null,6,10,'panaji',20,120,500,2251,200,9,'5.1 cr','Konkani','Indian Elephant','Indian roller','Palash','Terminalia elliptica','pinapal',1980);
INSERT INTO COUNRTY_INFORMATION VALUES(1,null,null,10,30,'New delhi',32,198,800,29845,600,25,'7.90 cr','hindi','Nilgai','House sparrow','Medicago sativa','Delonix regia','Mango',1920);
INSERT INTO COUNRTY_INFORMATION VALUES(8,'Rajasthan','Shri ashok',20,10,'Jaipur',25,150,701,26995,450,25,'5.9 cr','Hindi','Indian Elephant','Indian roller','Lotus','neem','dates',1900);
INSERT INTO COUNRTY_INFORMATION VALUES(9,null,'Manohar Lal Khatta',10,25,'Chandigarh',25,120,705,26954,502,15,'6.91 cr','Haryanvi','Blockbuck','Haryanvi','Lotus','Sacred fig','apple',1936);
INSERT INTO COUNRTY_INFORMATION VALUES(0,'Gujarat',null,10,12,'Gandhinagar',26,132,650,25862,502,19,'6.41 cr','Gujarathi','Indian Elephant','Water lilies','Lotus','Coconut','Mango',1932);
SELECT * FROM COUNRTY_INFORMATION;
