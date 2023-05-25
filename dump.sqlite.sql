-- TABLE
CREATE TABLE airports 
(
  id int PRIMARY KEY,
  name varchar(30) not null
);
Insert Into airports
Values
(1111,'Paris'),
(2222,'Liez'),
(3333, 'Loo'),
(4444, 'Saratov');
CREATE TABLE baggage
(
  weight int not null,
  pasid int REFERENCES passangers(id)
);
Insert Into baggage
Values
(3,1),
(1,2),
(4,3),
(10,5);
CREATE TABLE commander
(
  id int PRIMARY KEY,
  name varchar(60) not null,
  exp int NOT null,
  age int not NULL
);
Insert Into commander
Values
(1,'CA name', 10, 35),
(2,'CB name',12,40),
(3,'CC name',5,28),
(4,'CD name',10,37);
CREATE TABLE departure
(
  id PRIMARY KEY,
  flight int REFERENCES flights(id),
  deptime int not null,
  plane int REFERENCES planes(id),
  ticketid int REFERENCES tickets(id)
);
Insert Into departure
Values
(44,456,8.00,1,143),
(90,789,17.00,2,156),
(56,87,18.00,3,555),
(7,100,10.00,4,867),
(45,455,8.00,1,908);
CREATE TABLE flights
(
  id int PRIMARY KEY,
  num int not null,
  airdepart int REFERENCES airports(id),
  airarriv int REFERENCES airports(id),
  flytime int not null
);
Insert Into flights
Values
(456,11,1111,3333,10),
(789,23,2222,1111,13),
(100,12,4444,2222,5),
(87,44,3333,4444,7);
CREATE TABLE passangers
(
  id int PRIMARY KEY,
  name varchar(60) not null,
  doc int not null,
  ticketid int REFERENCES tickets(id)
);
Insert Into passangers
Values
(1,'A name',6789,143),
(2,'B name',4312,156),
(3,'C name',4678,555),
(4,'D name',9403,867),
(5,	'Iname',	7004,	908);
CREATE TABLE planes
(
  id int PRIMARY key,
  type varchar(20) not null,
  seats int not null,
  rabge int not null,
  com int REFERENCES commander(id)
);
Insert Into planes
Values
(1,	'boing',	100,	4000,	1),
(2,	'plane',	20,	500,	2),
(3,	'boing',	100	,4000,	3),
(4,	'boing',	100,	4000,	4);

CREATE TABLE tickets
(
  id int PRIMARY KEY,
  seat int NOT NULL,
  price int NOT NULL,
  depid int REFERENCES departure(id),
  flightsid int REFERENCES flights(id)
);
Insert Into tickets
Values
(143,	23,	1000,	44	,456),
(156,	45,	650,	90	,789),
(555,	36,	650,	56	,100),
(867,	66,	500,	7	,87),
(908,	46,	1000,	44	,456);

 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
