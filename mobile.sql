CREATE DATABASE mOBILE;
USE mOBILE;
CREATE TABLE mOBILE(SI_NO int, MOBILE_NAME varchar(20),PRICE int, SERIES varchar(20),CAMARA int, MOBILE_STORAGE varchar(20),RAM int,COLOUR varchar(20),BATTARY varchar(20),PROCESSOR varchar(20));
INSERT INTO mOBILE values(1,'Redmi',20000,'Redmi note 5 pro',50,'64 GB',6,'Black','33W','Snapdragon 680');
INSERT INTO mOBILE values(2,'Vivo',30000,'vivo 21 pro',40,'128 GB',6,'blue','44W','Snapdragon 680');
INSERT INTO mOBILE values(3,'Oppo',35000,'Oppo 10a',60,'64 GB',8,'White','52W','Mediatek 6765');
INSERT INTO mOBILE values(4,'Samsang',25000,'Samsong 11A',35,'32 GB',4,'White','60W','MTK D900');
INSERT INTO mOBILE values(5,'Realme',30000,'Reamle 10',55,'64 GB',8,'blue','70W','Snapdragon 680');
INSERT INTO mOBILE values(6,'Lenova',28000,'lenova 6a',32,'24 GB',4,'block','35W','Mediatek 6765');
INSERT INTO mOBILE values(7,'One plus',44000,'One plus norze 2',108,'128 GB',8,'sky blue','88W','Snapdragon 8+');
INSERT INTO mOBILE values(8,'poco',25000,'poco 2',35,'64 GB',4,'blue','52W','MTK D900');
INSERT INTO mOBILE values(9,'jio',20000,'jio 2a',20,'32 GB',4,'white','32W','MTK D522');
INSERT INTO mOBILE values(10,'Iphone',80000,'Iphone 14',50,'64 GB',12,'Grean','108W','Apple A16 Bionic');

UPDATE mOBILE SET SERIES='Redmi note 10' WHERE SI_NO=1;
UPDATE mOBILE SET SERIES='Redmi note 10',PRICE=30000 WHERE SI_NO=1;
UPDATE mOBILE SET SERIES='Redmi 2A',CAMARA=108 WHERE SI_NO=1;
UPDATE mOBILE SET SERIES='Redmi note 10',BATTARY=44W WHERE SI_NO=1;
UPDATE mOBILE SET SERIES='Redmi note 10' WHERE SI_NO=1;
UPDATE mOBILE SET SERIES='Redmi note 10' WHERE SI_NO=1;
UPDATE mOBILE SET SERIES='Redmi note 10' WHERE SI_NO=1;
UPDATE mOBILE SET SERIES='Redmi note 10' WHERE SI_NO=1;


SELECT * FROM mOBILE;

