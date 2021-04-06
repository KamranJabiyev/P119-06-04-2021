CREATE TABLE Students(
	Id int identity primary key,
	Name nvarchar(100) not null,
	Surname nvarchar(100),
	Age int check(Age<100),
	Email nvarchar(255) unique
)

INSERT INTO Students
VALUES('Gulbahar','Memmedova',27,'gm@code.edu.az')

select * from Students

INSERT INTO Students (Name,Age,Email)
VALUES('Agha',12,'aaaa@code.edu.az')

SELECT LEN(Name) 'Length',Name FROM Students

SELECT CHARINDEX('@',Email),Email FROM Students

SELECT SUBSTRING(Email,1,3),Email FROM Students 

SELECT SUBSTRING(Email,1,CHARINDEX('@',Email)-1),Email FROM Students 

SELECT SUBSTRING(Email,CHARINDEX('@',Email)+1,LEN(Email)),Email FROM Students 

SELECT SUM(AGE) FROM Students

SELECT AVG(AGE) FROM Students

SELECT MIN(AGE) FROM Students

SELECT MAX(AGE) FROM Students

SELECT * FROM Students
Where Age>(SELECT AVG(AGE) FROM Students)



CREATE TABLE Countries(
	Id int identity primary key,
	CountryName nvarchar(150) not null,
	Population int
)

CREATE TABLE Cities(
	Id int identity primary key,
	CityName nvarchar(150) not null,
	Population int,
	CountryId int REFERENCES Countries(Id)
)

SELECT * FROM Countries
JOIN Cities
ON
Countries.Id=Cities.CountryId


