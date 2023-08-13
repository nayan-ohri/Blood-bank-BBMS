create table BB_Manager
(M_id int NOT NULL,
mName varchar(30) Not Null,
m_phNo number(11),constraint Mid_pk primary key(M_id)
);
desc BB_Manager;
select * from BB_Manager

create table Blood_Donor 
(bd_ID int primary key,
bd_name varchar(30) not null,
bd_age varchar(3),
bd_sex varchar(6),
bd_Bgroup varchar(10),
bd_reg_date date,
reco_ID int ,
City_ID int,
constraint CID_fk foreign key(City_ID) references City(City_ID),
constraint reco_fk foreign key(reco_ID) references Recording_Staff(reco_ID)
);
DESC Blood_Donor


create table BloodSpecimen
(
specimen_number int primary key,
b_group varchar(10) not null,
status int,
dfind_ID int not null,
M_id int ,
constraint M_fk foreign key(M_id) references BB_Manager(M_id)
);
desc BloodSpecimen;
select * from BloodSpecimen

create table DiseaseFinder
(dfind_ID int not null,
dfind_name varchar(30) not null,
dfind_Phno number(12),
constraint dfind_IDpk primary key(dfind_ID)
);
desc DiseaseFinder;
select * from DiseaseFinder

create table Recipient
(reci_ID int primary key, 
reci_name varchar(30) Not null,
reci_age number(3),
reci_Bgrp varchar(3),
reci_Bqnty float,
reco_ID int not null,
City_ID int,
M_id int ,
constraint City_fk foreign key(City_ID) references City(City_ID),
constraint recoID_fk foreign key(reco_ID) references Recording_Staff(reco_ID),
constraint MID_fk foreign key(M_id) references BB_Manager(M_id)
);
desc Recipient;
alter table Recipient
add reci_sex varchar(6) ;
alter table Recipient
ADD reci_reg_date date;
select * from Recipient


create table Recording_Staff
(reco_ID int   ,
reco_Name varchar(30) not null,
reco_phNo number(12),
constraint recoID_pk primary key(reco_ID)
);
desc Recording_Staff;
select * from Recording_Staff

create table Hospital_Info_1
(hosp_ID int primary key,
hosp_name varchar(40) not null,
City_ID int, M_id int not null,
constraint CityID_fk foreign key(City_ID) references City(City_ID)
);
desc Hospital_Info_1;

create table Hospital_Info_2
(hosp_ID int ,
hosp_name varchar(40) not null,
hosp_needed_Bgrp varchar(10),
hosp_needed_qnty int,
primary key(hosp_ID,hosp_needed_Bgrp)
);
desc Hospital_Info_2;

create table City
(
City_ID int not null,
City_Name varchar(30) not null,
constraint CityID_pk primary key(City_ID)
);
desc City;


INSERT into Recipient VALUES(10001,'Mark',25,'B+',1.5,101212,1100,101,'M','17-12-2005');
INSERT into Recipient VALUES(10002,'Dan',60,'A+',1,101312,1100,102,'M','16-12-2015');
INSERT into Recipient VALUES(10003,'Steve',35,'AB+',0.5,101312,1200,102,'M','17-10-2015');
INSERT into Recipient VALUES(10004,'Parker',66,'B+',1,101212,1300,104,'M','17-11-2016');
INSERT into Recipient VALUES(10005,'Jason',53,'B-',1,101412,1400,105,'M','17-04-2015');
INSERT into Recipient VALUES(10006,'Preetham',45,'O+',1.5,101512,1500,105,'M','17-12-2015');
INSERT into Recipient VALUES(10007,'Swetha',22,'AB-',1,101212,1500,101,'F','17-05-2-15');
INSERT into Recipient VALUES(10008,'Swathi',25,'B+',2,101412,1300,103,'F','14-12-2015');
INSERT into Recipient VALUES(10009,'Lance',30,'A+',1.5,101312,1100,104,'M','16-02-2015')
INSERT into Recipient VALUES(10010,'Marsh',25,'AB+',3.5,101212,1200,107,'M','17-10-2016');
select * from Recipient

INSERT into Hospital_Info_1 VALUES(1,'MayoClinic',1100,101);
INSERT into Hospital_Info_1 VALUES(2,'CleavelandClinic',1200,103);
INSERT into Hospital_Info_1 VALUES(3,'NYU',1300,103);
INSERT into Hospital_Info_1 VALUES(4,'Baylor',1400,104);
INSERT into Hospital_Info_1 VALUES(5,'Charlton',1800,103);
INSERT into Hospital_Info_1 VALUES (6,'Greenoaks',1300,106);
INSERT into Hospital_Info_1 VALUES (7,'Forestpark',1300,102);
INSERT into Hospital_Info_1 VALUES (8,'Parkland',1200,106);
INSERT into Hospital_Info_1 VALUES (9,'Pinecreek',1500,109);
INSERT INTO Hospital_Info_1 values(10,'WalnutHill',1700,105);
select * from Hospital_Info_1

INSERT into Hospital_Info_2 VALUES(1,'MayoClinic','A+',20);
INSERT into Hospital_Info_2 VALUES (1,'MayoClinic','AB+',0);
INSERT into Hospital_Info_2 VALUES(1,'MayoClinic','A-',40);
INSERT into Hospital_Info_2 VALUES(1,'MayoClinic','B-',10);
INSERT into Hospital_Info_2 VALUES (1,'MayoClinic','AB-',20);
 INSERT into Hospital_Info_2 VALUES(2,'CleavelandClinic','A+',40);
INSERT into Hospital_Info_2 VALUES (2,'CleavelandClinic','AB+',20);
INSERT into Hospital_Info_2 VALUES (2,'CleavelandClinic','A-',10);
INSERT into Hospital_Info_2 VALUES(2,'CleavelandClinic','B-',30);
INSERT into Hospital_Info_2 VALUES (2,'CleavelandClinic','B+',0);
INSERT into Hospital_Info_2 VALUES (2,'CleavelandClinic','AB-',10);
 INSERT into Hospital_Info_2 VALUES(3,'NYU','A+',0);
INSERT into Hospital_Info_2 VALUES (3,'NYU','AB+',0);
 INSERT into Hospital_Info_2 VALUES(3,'NYU','A-',0);
 INSERT into Hospital_Info_2 VALUES(3,'NYU','B-',20);
INSERT into Hospital_Info_2 VALUES (3,'NYU','B+',10);
INSERT into Hospital_Info_2 VALUES(3,'NYU','AB-',0);
INSERT into Hospital_Info_2 VALUES(4,'Baylor','A+',10);
INSERT into Hospital_Info_2 VALUES (5,'Charlton','B+',30);
INSERT into Hospital_Info_2 VALUES (4,'Baylor','A-',40);
 INSERT into Hospital_Info_2 VALUES(7,'Forestpark','B-',40);
 INSERT into Hospital_Info_2 VALUES(8,'Parkland','B+',10);
 INSERT into Hospital_Info_2 VALUES(9,'Pinecreek','AB-',20);
 select * from Hospital_Info_2
 
 INSERT into DiseaseFinder VALUES(11,'Peter',4693804223);
 INSERT into DiseaseFinder VALUES(12,'Park',4693804223);
 INSERT into DiseaseFinder VALUES(13,'Jerry',4693804223);
 INSERT into DiseaseFinder VALUES(14,'Mark',4693804223);
 INSERT into DiseaseFinder VALUES(15,'Monika',4693804223);
 INSERT into DiseaseFinder VALUES(16,'Ram',4693804123);
 INSERT into DiseaseFinder VALUES(17,'Swathi',4693804223);
 INSERT into DiseaseFinder VALUES(18,'Gautham',4693804323);
 INSERT into DiseaseFinder VALUES(19,'Ashwin',4693804423);
 INSERT into DiseaseFinder VALUES(20,'Yash',4693804523);
 select * from DiseaseFinder
 
  INSERT into City VALUES(1100,'Chicago');
 INSERT into City VALUES(1200,'Austin');
 INSERT into City VALUES(1300,'Irving');
 INSERT into City VALUES(1400,'Houston');
 INSERT into City VALUES(1500,'Richardson');
 INSERT into City VALUES(1600,'Plano');
 INSERT into City VALUES(1700,'Frisco');
 INSERT into City VALUES(1800,'Arlington');
 INSERT into City VALUES(1900,'San Antonio');
 INSERT into City VALUES(2000,'Tyler');
 Select * from City
 
INSERT into Blood_Donor VALUES(150221,'Mark',25,'M','B+','2015-12-17',101212,1100);
INSERT into Blood_Donor VALUES(160011,'Abdul',35,'F','A+','2016-11-22',101212,1100);
INSERT into Blood_Donor VALUES(160101,'Smith',22,'M','O+','2016-01-04',101312,1200);
INSERT into Blood_Donor VALUES(150011,'Pat',29,'M','O+','2015-07-19',101412,1300);
INSERT into Blood_Donor VALUES(150021,'Shyam',42,'F','A-','2015-12-24',101412,1300);
INSERT into Blood_Donor VALUES(150121,'Dan',44,'M','AB+','2015-08-28',101212,1200);
INSERT into Blood_Donor VALUES(160031,'Mike',33,'F','AB-','2016-02-06',101212,1400);
INSERT into Blood_Donor VALUES(160301,'Elisa',31,'F','AB+','2016-09-10',101312,1200);
INSERT into Blood_Donor VALUES(160091,'Carrol',24,'M','B-','2016-10-15',101312,1500);
INSERT into Blood_Donor VALUES(160401,'Mark',29,'M','O-','2016-12-17',101212,1200);
select * from Blood_Donor

INSERT into BloodSpecimen VALUES(1001, 'B+', 1,11,101);
INSERT into BloodSpecimen VALUES(1002, 'O+', 1,12,102);
INSERT into BloodSpecimen VALUES(1003, 'AB+', 1,11,102);
INSERT into BloodSpecimen VALUES(1004, 'O-', 1,13,103);
INSERT into BloodSpecimen VALUES(1005, 'A+', 0,14,101);
INSERT into BloodSpecimen VALUES(1006, 'A-', 1,13,104);
INSERT into BloodSpecimen VALUES(1007, 'AB-', 1,15,104);
INSERT into BloodSpecimen VALUES(1008, 'AB-', 0,11,105);
INSERT into BloodSpecimen VALUES(1009, 'B+', 1,13,105);
INSERT into BloodSpecimen VALUES(1010, 'O+', 0,12,105);
INSERT into BloodSpecimen VALUES(1011, 'O+', 1,13,103);
INSERT into BloodSpecimen VALUES(1012, 'O-', 1,14,102);
INSERT into BloodSpecimen VALUES(1013, 'B-', 1,14,102);
INSERT into BloodSpecimen VALUES(1014, 'AB+', 0,15,101);
select * from BloodSpecimen

INSERT into BB_Manager VALUES(101,'Nayan', 4645459671);
INSERT into BB_Manager VALUES(102,'Jack', 4693959671);
INSERT into BB_Manager VALUES(103,'Peter', 4693959601);
INSERT into BB_Manager VALUES (104,'Mark', 4693959677);
INSERT into BB_Manager VALUES (105,'Jason', 4693957671);
INSERT into BB_Manager VALUES(106,'Steve', 4694959671);
INSERT into BB_Manager VALUES (107,'Jason', 4695959671);
INSERT into BB_Manager VALUES (108,'Stella', 4663959671);
INSERT into BB_Manager VALUES(109,'Monika', 4673959671);
INSERT into BB_Manager VALUES(110,'John', 4693859671);
select * from BB_Manager
 
INSERT into Recording_Staff VALUES(101212,'Walcot',4045806553);
INSERT into Recording_Staff VALUES(101312,'Henry',4045806553);
INSERT into Recording_Staff VALUES(101412,'Silva',4045806553);
INSERT into Recording_Staff VALUES(101512,'Adrian',4045806553);
INSERT into Recording_Staff VALUES(101612,'Mark',4045806553);
INSERT into Recording_Staff VALUES(101712,'Abdul',4045816553);
INSERT into Recording_Staff VALUES(101812,'Jerry',4045826553);
INSERT into Recording_Staff VALUES(101912,'Tim',4045836553);
INSERT into Recording_Staff VALUES(101012,'Lekha',4044846553);
INSERT into Recording_Staff VALUES(101112,'Mark',4045856553);
select * from Recording_Staff

create view Blood_Recipient_SameBgrp;
AS
select Blood_Donor.bd_name, Recipient.reci_name,reco_Name from Recording_Staff
inner join Blood_Donor on Recording_Staff.reco_ID=Blood_Donor.reco_ID
inner join Recipient on Recording_Staff.reco_ID=Recipient.reco_ID
where Blood_Donor.bd_Bgroup=Recipient .reci.Bgrp and
Blood_Donor.bg_reg_date =Recipient.reci_reg_date;

Select * from Blood_Recipient_SameBgrp;

select specimen_number.b_group from BloodSpecimen,DiseaseFinder
where BloodSpecimen.dfind_ID=DiseaseFinder.dfind_ID and
dfind_name='Mark' and status=1;


select bd_ID,bd_name,reci_ID,reci_name from Blood_Donor,Recipient
where bd_Bgroup=reci_Bgrp AND Blood_Donor.City_ID=Recipient.City_ID;


select hosp_ID,hosp_name ,City_ID ,Hospital_Info_1.M_id from Hospital_Info_1,BB_Manager
where BB_Manager.M_id = Hospital_Info_1.M_id and BB_Manager.M_id = 103;