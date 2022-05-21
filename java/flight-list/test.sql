use EFN;

CREATE TABLE EFOFFR
(
AIRLOGO VARCHAR(20) NOT NULL,
DEPT VARCHAR(10) NOT NULL,
ARRV VARCHAR(10) NOT NULL,
COST INT NOT NULL, CHECK(COST>=0),
DISCOUNT INT NOT NULL, CHECK(DISCOUNT>0),
DEADLINE VARCHAR(30) NOT NULL
);

INSERT INTO EFOFFR
VALUES
("spicejet.gif","bangalore","newdelhi",8500,20,"Nov 7, 2019 00:00:00"),
("indigo.gif","chennai","mumbai",7500,15,"Nov 7, 2019 00:00:00"),
("airindia.gif","kolkata","chennai",7500,10,"Nov 7, 2019 00:00:00"),
("airasia.gif","newdelhi","bangalore",9000,15,"Nov 7, 2019 00:00:00")
;

CREATE TABLE EFFLIT
(
AIRLOGO VARCHAR(20) NOT NULL,
AIRLINE VARCHAR(10) NOT NULL,

DEPT VARCHAR(10) NOT NULL,
ARRV VARCHAR(10) NOT NULL,


FLIGHTDATE INT NOT NULL, CHECK((FLIGHTDATE>=0) AND (FLIGHTDATE<=31)),

LBOUND INT NOT NULL, CHECK(LBOUND>=0),
UBOUND INT NOT NULL, CHECK(UBOUND>=0),

COST INT NOT NULL, CHECK(COST>=0),
LEG INT NOT NULL, CHECK(LEG>=0)
);

INSERT INTO EFFLIT
VALUES
("airindia.gif","airindia","kolkata","chennai",6,7,12,8500,2),
("spicejet.gif","spicejet","kolkata","chennai",6,23,1,7500,1),
("airasia.gif","airasia","kolkata","chennai",6,17,19,8000,1),

("spicejet.gif","spicejet","kolkata","mumbai",6,8,13,8500,2),
("airindia.gif","airindia","kolkata","mumbai",6,20,22,7500,1),
("indigo.gif","indigo","kolkata","mumbai",6,3,5,8000,1),

("airindia.gif","airindia","mumbai","kolkata",6,7,12,8500,2),
("spicejet.gif","spicejet","mumbai","kolkata",6,23,1,7500,1),
("airasia.gif","airasia","mumbai","kolkata",6,17,19,8000,1),

("spicejet.gif","spicejet","mumbai","chennai",6,8,13,8500,2),
("airindia.gif","airindia","mumbai","chennai",6,20,22,7500,1),
("indigo.gif","indigo","mumbai","chennai",6,3,5,8000,1),

("airindia.gif","airindia","chennai","mumbai",6,7,12,8500,2),
("spicejet.gif","spicejet","chennai","mumbai",6,23,1,7500,1),
("indigo.gif","indigo","chennai","mumbai",6,17,19,8000,1),

("spicejet.gif","spicejet","chennai","kolkata",6,8,13,8500,2),
("airindia.gif","airindia","chennai","kolkata",6,20,22,7500,1),
("airasia.gif","airasia","chennai","kolkata",6,3,5,8000,1),



("airindia.gif","airindia","kolkata","chennai",7,7,12,8500,2),
("spicejet.gif","spicejet","kolkata","chennai",7,23,1,7500,1),
("airasia.gif","airasia","kolkata","chennai",7,17,19,8000,1),

("spicejet.gif","spicejet","kolkata","mumbai",7,8,13,8500,2),
("airindia.gif","airindia","kolkata","mumbai",7,20,22,7500,1),
("indigo.gif","indigo","kolkata","mumbai",7,3,5,8000,1),

("airindia.gif","airindia","mumbai","kolkata",7,7,12,8500,2),
("spicejet.gif","spicejet","mumbai","kolkata",7,23,1,7500,1),
("airasia.gif","airasia","mumbai","kolkata",7,17,19,8000,1),

("spicejet.gif","spicejet","mumbai","chennai",7,8,13,8500,2),
("airindia.gif","airindia","mumbai","chennai",7,20,22,7500,1),
("indigo.gif","indigo","mumbai","chennai",7,3,5,8000,1),

("airindia.gif","airindia","chennai","mumbai",7,7,12,8500,2),
("spicejet.gif","spicejet","chennai","mumbai",7,23,1,7500,1),
("indigo.gif","indigo","chennai","mumbai",7,17,19,8000,1),

("spicejet.gif","spicejet","chennai","kolkata",7,8,13,8500,2),
("airindia.gif","airindia","chennai","kolkata",7,20,22,7500,1),
("airasia.gif","airasia","chennai","kolkata",7,3,5,8000,1),



("airindia.gif","airindia","kolkata","chennai",8,7,12,8500,2),
("spicejet.gif","spicejet","kolkata","chennai",8,23,1,7500,1),
("airasia.gif","airasia","kolkata","chennai",8,17,19,8000,1),

("spicejet.gif","spicejet","kolkata","mumbai",8,8,13,8500,2),
("airindia.gif","airindia","kolkata","mumbai",8,20,22,7500,1),
("indigo.gif","indigo","kolkata","mumbai",8,3,5,8000,1),

("airindia.gif","airindia","mumbai","kolkata",8,7,12,8500,2),
("spicejet.gif","spicejet","mumbai","kolkata",8,23,1,7500,1),
("airasia.gif","airasia","mumbai","kolkata",8,17,19,8000,1),

("spicejet.gif","spicejet","mumbai","chennai",8,8,13,8500,2),
("airindia.gif","airindia","mumbai","chennai",8,20,22,7500,1),
("indigo.gif","indigo","mumbai","chennai",8,3,5,8000,1),

("airindia.gif","airindia","chennai","mumbai",8,7,12,8500,2),
("spicejet.gif","spicejet","chennai","mumbai",8,23,1,7500,1),
("indigo.gif","indigo","chennai","mumbai",8,17,19,8000,1),

("spicejet.gif","spicejet","chennai","kolkata",8,8,13,8500,2),
("airindia.gif","airindia","chennai","kolkata",8,20,22,7500,1),
("airasia.gif","airasia","chennai","kolkata",8,3,5,8000,1)
;
