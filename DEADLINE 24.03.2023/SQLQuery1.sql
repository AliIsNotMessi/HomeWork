CREATE TABLE Groups (
  GroupID INT PRIMARY KEY NOT NULL IDENTITY,
  GroupName VARCHAR(10) NOT NULL UNIQUE,
  GroupRating INT NOT NULL,
  CourseYear INT NOT NULL
);

 

CREATE TABLE Departments(
    DepartmentsID INT NOT NULL PRIMARY KEY IDENTITY,
    Financing money NOT NULL CHECK(Financing > 0) DEFAULT 0,
    DepartmentsName NVARCHAR(100) NOT NULL UNIQUE
);

 

CREATE TABLE Faculties(
    FacultiesID INT PRIMARY KEY IDENTITY,
    FacultiesName NVARCHAR(100) NOT NULL UNIQUE,
);

 

CREATE TABLE Teachers (
  TeacherID INT PRIMARY KEY IDENTITY,
  EmploymentDate DATE NOT NULL CHECK(EmploymentDate > '1990-01-01'),
  FirstName VARCHAR(max) NOT NULL,
  LastName VARCHAR(max) NOT NULL,
  Premium money NOT NULL CHECK(Premium > 0) DEFAULT 0,
  Salary money CHECK(Salary >= 0)
);

