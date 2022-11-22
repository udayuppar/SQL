CREATE DATABASE CONTINENTS;
USE CONTINENTS;
CREATE TABLE continents_detailse(SL_no int not null,Continent_name varchar(20),no_of_countryes int,population bigint,area double,density int,world_population_share varchar(20),check (density>=0 AND density<=120));
INSERT INTO continents_detailse values(1  ,'   Asia',48 ,  4733336791,31033131   ,  105,'  41.84%');
INSERT INTO continents_detailse values(   2,'   Africa',54  ,   1415393070,29645895  ,  45,'17.84%  ');
INSERT INTO continents_detailse values(3  ,'    Europe',25  ,  44748697349,25463131  ,  34,'  9.59%');
INSERT INTO continents_detailse values(   4,'North America   ',   23,374160656   ,   65423131,28  ,'7.06%  ');
INSERT INTO continents_detailse values(5   ,'   South America',13  ,   439040799,31032131   ,  105,'5.53%  ');
INSERT INTO continents_detailse values(   6,'Austrelia  ',25  ,  25890773 ,32145631  ,5  ,'  0.55%');
INSERT INTO continents_detailse values(7   ,'  Antarctica',0  ,  0,137203131  ,  1,' 0.00%');
INSERT INTO continents_detailse values(   6,'Austrelia  ',25  ,  25890773 ,32145631  ,5  ,'  0.55%');
INSERT INTO continents_detailse values(7   ,'  Antarctica',0  ,  0,137203131  ,  1,' 0.00%');

SELECT * FROM continents_detailse;
drop table continents_detailse;

/*Lock*/
lock table continents_detailse read;

UPDATE continents_detailse SET Continent_name='xyz' WHERE SL_no=1;
delete from continents_detailse where SL_no=1;

unlock tables;

/*Group by*/
select * from continents_detailse group by SL_no;
select * from continents_detailse group by Continent_name;
select * from continents_detailse group by no_of_countryes;
select * from continents_detailse group by population;
select * from continents_detailse group by area;

/*LTRIM*/
SELECT LTRIM(SL_no) from continents_detailse;
SELECT LTRIM(Continent_name) from continents_detailse;
SELECT LTRIM(no_of_countryes) from continents_detailse;
SELECT LTRIM(population) from continents_detailse;
SELECT LTRIM(area) from continents_detailse;

/*RTRIM*/
SELECT RTRIM(SL_no) from continents_detailse;
SELECT RTRIM(Continent_name) from continents_detailse;
SELECT RTRIM(no_of_countryes) from continents_detailse;
SELECT RTRIM(population) from continents_detailse;
SELECT RTRIM(area) from continents_detailse;

/*max*/
select max(SL_no) from continents_detailse group by SL_no;
select max(no_of_countryes) from continents_detailse group by no_of_countryes;
select max(population) from continents_detailse group by population;
select max(area) from continents_detailse group by area;
select max(density) from continents_detailse group by density;

/*min*/
select min(SL_no) from continents_detailse group by SL_no;
select min(no_of_countryes) from continents_detailse group by no_of_countryes;
select min(population) from continents_detailse group by population;
select min(area) from continents_detailse group by area;
select min(density) from continents_detailse group by density;

/*sum*/
select sum(SL_no) from continents_detailse group by SL_no;
select sum(no_of_countryes) from continents_detailse group by no_of_countryes;
select sum(population) from continents_detailse group by population;
select sum(area) from continents_detailse group by area;
select sum(density) from continents_detailse group by density;

/*avg*/
select avg(SL_no) from continents_detailse group by SL_no;
select avg(no_of_countryes) from continents_detailse group by no_of_countryes;
select avg(population) from continents_detailse group by population;
select avg(area) from continents_detailse group by area;
select avg(density) from continents_detailse group by density;




/*LPAD*/
select LPAD('Asia',8,'B');
select LPAD('Africa',10,'S');
select LPAD('Europe',8,'C');
select LPAD('Austrelia',4,'B');
SELECT LPAD('Antarctica', 6, 'B');

/*RPAD*/
select RPAD('Asia',8,'B');
select RPAD('Africa',4,'B');
select RPAD('Europe',8,'C');
select RPAD('Austrelia',4,'B');
select RPAD('Antarctica',12,'R');

/*String reverse*/
select reverse(Continent_name) from continents_detailse;

/*limits*/
select * from continents_detailse limit 2;
select * from continents_detailse limit 4;
select * from  continents_detailse order by SL_no desc limit 2;
select * from  continents_detailse order by Continent_name desc limit 5;
select * from  continents_detailse order by id desc limit 3;

/*Greatest*/
select greatest(2,45,15,36,98,45,85,99,25);
select greatest(2,25,15,10,25,45,1,2,25);
select greatest(25,45,5,3,98,5,80,60);
select greatest(28,4,55,136,98,15,45,99,87);
select greatest(22,145,115,136,98,445,185,92,25);

/*day name*/
select dayname('2022-1-6');
select dayname('2022-8-17');
select dayname('2022-10-6');
select dayname('2022-11-8');
select dayname('2022-12-2');

/*date difference*/
select  datediff('2022-12-01','2022-11-10');
select  datediff('2022-2-11','2021-11-10');
select  datediff('2022-12-01','2022-1-10');
select  datediff('2022-12-01','2022-5-1');
select  datediff('2022-12-01','2022-8-20');

/*day of year*/
select dayofyear('2022-12-01');
select dayofyear('2022-02-08');
select dayofyear('2022-8-11');
select dayofyear('2022-7-25');
select dayofyear('2022-01-05');





