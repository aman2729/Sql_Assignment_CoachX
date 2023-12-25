Task 1:-
1.Create University Database give any University name you want
2. Under this University Create four tables and each table should have following three Column named as:-
	A. College_Table
		College_ID(PK)
		College_Name
		College_Area

	B. Department_Table
		Dept_ID(PK)
		Dept_Name
		Dept_Facility

	C. Professor_Table
		Professor_ID(PK)
		Professor_Name
		Professor_Subject
	D. Student_Table
		Student_ID(PK)
		Student_Name
		Student_Stream

3. Apply foreign key on Department key from College_table
4. Apply foreign Key on Student_Table from Professor_Table
5. Insert atleast 10 Records in each table

SOLUTION:-

1)CREATE DATABASE UNIVERSITY;

2)CREATE TABLE College_table
(College_ID int PRIMARY KEY,
 College_Name VARCHAR(20),
 College_Area VARCHAR(20),
 )

 CREATE TABLE Department_Table
 (Dept_ID INT PRIMARY KEY,
 Dept_Name VARCHAR(20),
 Dept_Facility VARCHAR(20)
 )

 CREATE TABLE Professor_Table
 (Professor_ID INT PRIMARY KEY,
  Professor_Name VARCHAR(20) ,
  Professor_Subject VARCHAR(20)
 )

CREATE TABLE Student_Table
(Student_ID INT PRIMARY KEY,
 Student_Name VARCHAR(20),
Student_Stream VARCHAR(20)
)

Task 2:-
1.	Give the information of College_ID and College_name from College_Table
2.	Show  Top 5 rows from Student table.
3.	What is the name of  professor  whose ID  is 5
4.	Convert the name of the Professor into Upper case 
5.	Show me the names of those students whose name is start with a
6.	Give the name of those colleges whose end with a
7.	 Add one Salary Column in Professor_Table
8.	Add one Contact Column in Student_table
9.	Find the total Salary of Professor 
10.	Change datatype of any one column of any one Table

SOLUTION:-

1)Select College_ID,College_name from College_Table;

2)select TOP 5 * FROM Student_table;

3)select Professor_name from Professor_table
  where Professor_ID=5;

4)Select UPPER(Profeesor_name) from Professor_table;

5)select Student_name from Student_table
  where Student_name LIKE 'a%';

6)select College_Name from College_table
  where College_Name LIKE '%a';

7)Alter table Professor_table
  Add salary int;

8)Alter table Student_table
  Add Contact varchar(15);

9)Select sum(salary) from Professor_table;

10)Alter table Student_table
   ALTER COLUMN contact varchar(20);


Task 3:-
1.	Show first 5 records from Students table and Professor table Combine
2.	Apply Inner join on all 4 tables together
3.	Show Some null values from Department table and Professor table.
4.	Create a View from College Table  and give those records whose college name starts with C
5.	Create Stored Procedure  of Professor table whatever customer ID will be given by user it should show whole records of it.
6.	Rename the College_Table to College_Tables_Data .


SOLUTION:-

1)Select TOP 5* FROM Student_table S
  INNER JOIN Professor_table P
  on P.professor_ID=S.Student_ID;

2)Select * FROM College_table C
  INNER JOIN Department_table D
  on C.college_ID=D.Department_ID
  INNER JOIN Professor_table P
  ON P.professor_ID=D.department_ID
  INNER JOIN Student_table S
  ON S.Student_ID=P.professor_ID

3)SELECT * FROM Professor_Table P LEFT JOIN Department_table D
  ON P.professor_ID=D.department_ID 

4)Create view [start_C]
  AS 
  SELECT * FROM College_table where College_Name LIKE 'C%';

5)CREATE Procedure getdetails
     @customer_id int
  AS
  BEGIN
    SELECT * FROM Professor_table
    where Professor_ID=@customer_id
  END

6)EXEC sp_rename 'College_TABLE' ,'College_Tables_Data';

