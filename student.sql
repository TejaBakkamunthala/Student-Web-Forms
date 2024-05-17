USE WEBFORMS

CREATE DATABASE WEBFORMS

CREATE TABLE StudentForm(
StudentId int primary key,
Name varchar(30),
Images varchar(30),
Gender varchar(10),
Email varchar(30),
PhoneNumber varchar(15),
Address varchar(100),
DateOfJOining date,
branches varchar(30));


SELECT * FROM StudentForm


create or alter procedure DetailsByDateOfJoining(
@DateOfJoining1 date,
@DateOfJoining2 date)
AS
BEGIN
SELECT* FROM StudentForm WHERE DateOfJOining BETWEEN @DateOfJoining1 AND @DateOfJoining2 ;
end;


create OR alter procedure DetailsByFirstLetterAndMale(
@StudentNamee VARCHAR(20),
@Genderr VARCHAR(20))
AS
BEGIN
 select * from StudentForm WHERE Name LIKE @StudentNamee + '%' AND Gender = @Genderr;
END;

EXEC DetailsByFirstLetterAndMale 'S','Male';



--create OR alter procedure DetailsByFirstLetterAndMale(
--@StudentName CHAR(1),
--@Gender VARCHAR(20))
--AS
--BEGIN
-- select * from StudentForm where Left (Name,1)=@StudentName AND Gender = @Gender;
--END;

EXEC DetailsByFirstLetterAndMale 'S','Male';


create or alter procedure DetailsByFisrtLetterNameAndBranches(
@StudentName varchar(40),
@Branches varchar(50))
as 
begin
select * from StudentForm where Name like  @StudentName + '%' AND branches=@Branches;
end;

exec DetailsByFisrtLetterNameAndBranches 'S','Computer Science Engineering' ;


CREATE OR ALTER PROCEDURE DetailsByLastLetterNameAndBranches(
@StudentName varchar(30),
@Branches VARCHAR(50))
AS
BEGIN
SELECT * FROM StudentForm WHERE NAME LIKE  '%'+ @StudentName AND Branches=@Branches;
END

EXEC DetailsByLastLetterNameAndBranches @StudentName = 'a', @Branches = 'Computer Science Engineering'

EXEC DetailsByLastLetterNameAndBranches 'j','Civil Engineering';

CREATE OR ALTER PROCEDURE DetailsConatainsLetterNameAndBranches(
@StudentName varchar(30),
@Branches VARCHAR(50))
AS
BEGIN
SELECT * FROM StudentForm WHERE NAME LIKE  '%'+ @StudentName+'%' AND Branches=@Branches;
END

EXEC DetailsConatainsLetterNameAndBranches @StudentName = 'a', @Branches = 'Mechanical Engineering'

CREATE OR ALTER PROC Student_Registration(
@StudentId int,
@Name varchar(30),
@Images varchar(30),
@Gender varchar(10),
@Email varchar(30),
@PhoneNumber varchar(15),
@Address varchar(15),
@DateOfJoining date,
@branches varchar(30))
As
Begin
INSERT INTO StudentForm(StudentId,Name,Images,Gender,Email,PhoneNumber,Address,DateOfJoining,branches)
VALUES(@StudentId,@Name,@Images,@Gender,@Email,@PhoneNumber,@Address,@DateOfJoining,@branches)
END


EXEC Student_Registration 1,'Teja','tej.jpg','Male','teja@gmail.com','123456789','Vaviletpadu,Zarugumalli Mandalam,Praksam Dst,Andhra Pradesh','01-01-2023','Computer Science Engineering';

CREATE OR ALTER  PROC GETALLSTUDENTS
AS
BEGIN 
SELECT * FROM StudentForm
END

EXECUTE GETALLSTUDENTS;


CREATE OR ALTER PROC UPDATE_STUDENT(
@StudentId int,
@Name varchar(30),
@Images varchar(30),
@Gender varchar(10),
@Email varchar(30),
@PhoneNumber varchar(15),
@Address varchar(15),
@DateOfJoining date,
@branches varchar(30))
AS
BEGIN
UPDATE StudentForm SET Name=@Name,Images=@Images,Gender=@Gender,Email=@Email,PhoneNumber=@PhoneNumber,Address=@Address,DateOfJOining=@DateOfJoining,branches=@branches
where StudentId=@StudentId;
END;


CREATE OR ALTER PROC Delete_Student_By_Id
@StudentId INT
AS
BEGIN
DELETE  FROM StudentForm WHERE StudentId=@StudentId;
END


CREATE OR ALTER PROC SELECT_STUDENT
@StudentId INT
AS
BEGIN
SELECT *  FROM StudentForm WHERE StudentId=@StudentId;
END


--LOGIN
create  or alter proc Login_procedure
@StudentId int,
@Name varchar(50)
as
begin
select * from StudentForm where (StudentId=@StudentId and Name=@Name); 
end


create or alter procedure StudentUpdateByName(
@Name varchar(50))
as
begin
select * from StudentForm where Name=@Name;
end




CREATE OR ALTER  PROCEDURE UpdateStudentByStudentId(
@StudentId int)
AS
BEGIN
SELECT *FROM StudentForm WHERE StudentId=@StudentId;
END;




create or alter proc searchByIdAndName(
@StudentId int,
@Name varchar(50))
AS
BEGIN 
SELECT * FROM StudentForm WHERE StudentId=@StudentId AND Name=@Name
END;


CREATE OR ALTER PROCEDURE SortedListOfStudents
AS
BEGIN
SELECT * FROM StudentForm ORDER BY Name ASC;
END;


