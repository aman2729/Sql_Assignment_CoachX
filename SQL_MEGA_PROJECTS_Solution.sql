SQL Mega Project:-
Basics and Intermediate 
Project Type(A)

1) Write a query to get all employee detail from "EmployeeDetail" table
2) Write a query to get only "FirstName" column from "EmployeeDetail" table
3) Write a query to get FirstName in upper case as "First Name".
4) Write a query to get LastName in upper case as "Last Name".
5) Write a query for combine FirstName and LastName and display it as "Name" (also include white space between first name & last name)
6) Select employee detail whose name is "Vikas
7) Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.
8) Get all employee detail from EmployeeDetail table whose "LastName" start with latter 'a'.
9. Get all employee details from EmployeeDetail table whose "FirstName" end with 'h'
10.Get all employee detail from EmployeeDetail table whose "FirstName" start with any single character between 'a-p'
11)Get all employee detail from EmployeeDetail table whose "FirstName" not start with any single character between 'a-p'
12)Get all employee detail from EmployeeDetail table whose "Gender" end with 'le' and contain 4 letters. The Underscore(_) Wildcard Character represents any single character
13)Get all employee detail from EmployeeDetail table whose "FirstName" start with 'A' and contain 5 letters
14)Get all employee detail from EmployeeDetail table whose "FirstName" containing '%'. ex:-"Vik%as".
15)Get all unique "Department" from EmployeeDetail table
16)Get the highest "Salary" from EmployeeDetail table.
17)Get the lowest "Salary" from EmployeeDetail table
18)Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013
19)Show "JoiningDate" in "yyyy/mm/dd" format, ex- "2013/02/15"
20)Show only time part of the "JoiningDate"


SOLUTION:-
1) select * from EmployeeDetail;

2)select Firstname from EmployeeDetail;

3)Select Upper(Firstname) as First_Name from EmployeeDetail;

4)Select Upper(Lastname) as Last_Name from EmployeeDetail;

5)select concat(Firstname,' ',Lastname) as Name from EmployeeDetail;

6)select * from EmployeeDetail where Firstname='Vikas';

7)Select * from EmployeeDetail where Firstname LIKE 'a%';

8)Select * from EmployeeDetail where Lastname LIKE 'a%';

9)Select * from EmployeeDetail where Firstname LIKE '%h';

10)SELECT * FROM EmployeeDetail WHERE Firstname like '[a-p]%'

11)SELECT * FROM EmployeeDetail WHERE Firstname like '[^a-p]%'

12)select * from EmployeeDetail where Gender LIKE '__le';

13)select * from EmployeeDetail where Firstname LIKE 'A____';

14)
