CREATE TABLE Departments (

 

    DepartmentsID INT NOT NULL PRIMARY KEY IDENTITY,
    Building INT NOT NULL CHECK(Building >= 1 AND Building <= 5),
    Financing MONEY NOT NULL DEFAULT 0,
    Floor INT NOT NULL CHECK(Floor <= 1),
    Name NVARCHAR(100) NOT NULL UNIQUE

 

);

 

CREATE TABLE Diseases (

 

    DiseasesID INT NOT NULL PRIMARY KEY IDENTITY,
    Name NVARCHAR(100) NOT NULL UNIQUE,
    Severity INT NOT NULL CHECK(Severity >= 1) DEFAULT 0

 

);

 


CREATE TABLE Doctors (

 

    DoctorID INT NOT NULL PRIMARY KEY IDENTITY,
    Name NVARCHAR(max) NOT NULL,
    Surname NVARCHAR(max) NOT NULL,
    Phone CHAR(10) NOT NULL,
    Premium money NOT NULL CHECK(Premium > 0) DEFAULT 0,
    Salary money NOT NULL CHECK(Salary > 0) DEFAULT 0

 

);

 

CREATE TABLE Examinations (
    ExaminationsID INT NOT NULL PRIMARY KEY IDENTITY,

 

    DayOfWeek INT NOT NULL CHECK(DayOfWeek >= 1 and DayOfWeek <= 7),
    StartTime time NOT NULL CHECK(StartTime > '8:00:00' and StartTime < '18:00:00'),
    EndTime time NOT NULL,

 

    Name NVARCHAR(100) NOT NULL UNIQUE

 

);

 

CREATE TABLE Wards (

 

    WardID INT NOT NULL PRIMARY KEY IDENTITY,
    Building INT NOT NULL CHECK(Building >= 1 AND Building <= 5),
    Financing MONEY NOT NULL DEFAULT 0,
    Floor INT NOT NULL CHECK(Floor <= 1),
    Name NVARCHAR(100) NOT NULL UNIQUE

 

);

 


--#1
--SELECT * 
--FROM Wards;

 

--#2
--SELECT Surname, Phone
--FROM Doctors;

 

--#3
--SELECT DISTINCT Floor
--FROM Wards;

 

--#4
--SELECT Name AS 'Name Of Diseases' , Severity AS 'Name Of Severity' 
--FROM Diseases;

 

--#6
--SELECT Name
--FROM Departments
--WHERE (Building = 5) AND (Financing < 30000);

 

--#7
--SELECT Name
--FROM Departments
--WHERE (Building = 3) AND Financing BETWEEN 12000 AND 15000;

 

--#8
--SELECT Name
--FROM Wards
--WHERE (Building = 4 or Building = 5) AND (Floor = 1);

 

--#9
--SELECT Name, Building, Financing
--FROM Departments
--WHERE (Building = 3 or Building = 6) AND (Building < 11000 or Building > 25000);

 

--#10
--SELECT Surname
--FROM Doctors
--WHERE Salary + Premium = 1500;

 

--#11
--SELECT Surname
--FROM Doctors
--WHERE Salary / 2 > Premium * 3;

 

--#12
--SELECT Name
--FROM Examinations
--WHERE DAYOFWEEK IN (1,2,3) 
--    AND StartTime >= '12:00:00' 
--    AND EndTime <= '15:00:00';

 

--#13
--SELECT Name
--FROM Departments
--WHERE Building = 1 OR Building = 3 OR Building = 8 OR Building = 10;

 

--#14
--SELECT Name
--FROM Diseases
--WHERE Severity > 2;

 

--#15
--SELECT Name
--FROM Departments
--WHERE Building NOT IN (1, 3);

 

--#16
--SELECT Name
--FROM Departments
--WHERE Building = 1 OR Building = 3;

 

--#17
--SELECT Surname
--FROM Doctors
--WHERE Surname LIKE 'N%'