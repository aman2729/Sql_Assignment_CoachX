ASSINGMENT nos - 1
Q1)SQL Query to fetch records that are present in one table but not in another table.
Q2)SQL query to fetch all the employees who are not working on any project.
Q3)SQL query to fetch all the Employees from EmployeeDetails who joined in the Year 2020.
Q4)Fetch all employees from EmployeeDetails who have a salary record in EmployeeSalary.
Q5)Write an SQL query to fetch a project-wise count of employees.
Q6)Fetch employee names and salaries even if the salary value is not present for the employee.
Q7)Write an SQL query to fetch all the Employees who are also managers.
Q8)Write an SQL query to fetch duplicate records from EmployeeDetails.
Q9)Write an SQL query to fetch only odd rows from the table.
Q10)Write a query to find the 3rd highest salary from a table without top or limit keyword.


SOLUTION:-

1)Select * from EmployeeDetails D
  LEFT JOIN EmployeeSalary S
  ON D.EmpId=S.EmpId;

2)select * from EmployeeSalary 
  where Project IS NULL;

3)SELECT * from EmployeeDetails 
  where YEAR(DateOfJoining)=2020;

4)select D.FullName from EmployeeDetails D
  INNER JOIN EmployeeSalary S
  on D.EmpId=S.EmpId
  where S.Salary IS NOT NULL;

5)select count(EmpId) as projectwisecount,Project from EmployeeSalary
  group by Project;

6)select D.FullName,S.Salary from EmployeeDetails D
  INNER JOIN EmployeeSalary S
  on D.EmpId=S.EmpId

7)select FullName from EmployeeDetails
  where ManagerId IS NOT NULL;

8)SELECT * FROM EmployeeDetails 
  GroupBy EmpId
  HAVING COUNT(EmpId)>1;

9)select * from EmployeeDetails where MOD(EmpId,2)<>0;

10)SELECT Salary from EmployeeSalary AS e1
   where 2=(select count(Distinct Salary) from EmployeeSalary AS e2 where e2.Salary>e1.Salary)



ASSINGMENT nos - 2
Ques.1. Write an SQL query to fetch the EmpId and FullName of all the employees working under the Manager with id – ‘986’.
Ques.2. Write an SQL query to fetch the different projects available from the EmployeeSalary table.
Ques.3. Write an SQL query to fetch the count of employees working in project ‘P1’.
Ques.4. Write an SQL query to find the maximum, minimum, and average salary of the employees.
Ques.5. Write an SQL query to find the employee id whose salary lies in the range of 9000 and 15000.
Ques.6. Write an SQL query to fetch those employees who live in Toronto and work under the manager with ManagerId – 321.
Ques.7. Write an SQL query to fetch all the employees who either live in California or work under a manager with ManagerId – 321.
Ques.8. Write an SQL query to fetch all those employees who work on Projects other than P1.
Ques.9. Write an SQL query to display the total salary of each employee adding the Salary with Variable value.
Ques.10. Write an SQL query to fetch the employees whose name begins with any two characters, followed by a text “hn” and ends with any sequence of characters.

OLUTION:-

1)SELECT EmpId,FullName from EmployeeDetails WHERE ManagerId=986;

2)Select Distinct Project from EmployeeSalary;

3)Select count(EmpId) from EmployeeSalary where Project='P1';

4)Select max(salary),min(salary),avg(salary) from EmployeeSalary;

5)select EmpId from EmployeeSalary where salary between 9000 and 15000;

6)select * from EmployeeDetails where City='Toronto' and ManagerId=321;

7)select * from EmployeeDetails where City='California' or ManagerId=321;

8)select * from EmployeeSalary where Project NOT IN('P1');

9)select salary+variable as TotalSalary from Empsal;

10)select * from EmployeeDetails where FullName LIKE '%__hn__%';


ASSINGMENT nos - 3:-

Ques.1 Write an SQL query to fetch all the EmpIds which are present in either of the tables – ‘EmployeeDetails’ and ‘EmployeeSalary’.
Ques.2 Write an SQL query to fetch common records between two tables.
Ques.3. Write an SQL query to fetch records that are present in one table but not in another table.
Ques.4. Write an SQL query to fetch the EmpIds that are present in both the tables –  ‘EmployeeDetails’ and ‘EmployeeSalary.
Ques.5. Write an SQL query to fetch the EmpIds that are present in EmployeeDetails but not in EmployeeSalary.
Ques.6. Write an SQL query to fetch the employee’s full names and replace the space
Ques.7. Write an SQL query to fetch the position of a given character(s) in a field.
Ques.8. Write an SQL query to display both the EmpId and ManagerId together.
Ques.9. Write a query to fetch only the first name(string before space) from the FullName column of the EmployeeDetails table.
Ques.10. Write an SQL query to uppercase the name of the employee and lowercase the city values.

SOLUTION:-

1)select D.EmpId from EmployeeDetails D
  INNER JOIN EmployeeSalary S
  ON D.EmpId=S.EmpId;

2)Select * from EmployeeDetails D
  INNER JOIN EmployeeSalary S
  ON D.EmpId=S.EmpId;

3)Select * from EmployeeDetails D
  LEFT JOIN EmployeeSalary S
  ON D.EmpId=S.EmpId;

4)Select EmpId from EmployeeDetails
  UNION
  Select EmpId from EmployeeSalary

5)Select EmpId from EmployeeDetails
  INTERSECT
  Select EmpId from EmployeeSalary

6)SELECT TRIM(FullName) from EmployeeDetails;

7)SELECT CHARINDEX('a',FullName);

8)SELECT CONCAT(EmpId,' ',ManagerId) from EmployeeSalary;

9)

10)Select Upper(FullName) as FullName, Lower(City) as City from EmployeeSalary



ASSINGMENT nos - 4

Ques.1. Write an SQL query to find the count of the total occurrences of a particular character – ‘n’ in the FullName field.
Ques.2. Write an SQL query to update the employee names by removing leading and trailing spaces.
Ques.3. Fetch all the employees who are not working on any project.
Ques.4. Write an SQL query to fetch employee names having a salary greater than or equal to 5000 and less than or equal to 10000.
Ques.5. Write an SQL query to find the current date-time.
Ques.6. Write an SQL query to fetch all the Employee details from the EmployeeDetails table who joined in the Year 2020.
Ques.7. Write an SQL query to fetch all employee records from the EmployeeDetails table who have a salary record in the EmployeeSalary table.
Ques.8. Write an SQL query to fetch the project-wise count of employees sorted by project’s count in descending order.
Ques.9. Write a query to fetch employee names and salary records. Display the employee details even if the salary record is not present for the employee.
Ques.10. Write an SQL query to join 3 tables.


SOLUTION:-

1)
2)Select TRIM(FullName) from EmployeeDetails;

3)Select D.FullName from EmployeeDetails D
  INNER JOIN EmployeeSalary S
  On D.EmpId=S.EmpId 
  where S.Project IS NULL;

4)Select D.FullName from EmployeeDetails D
  INNER JOIN EmployeeSalary S
  On D.EmpId=S.EmpId 
  where S.Salary >=5000 AND S.Salary <=5000 IS NULL;

5)select CURRENT_TIMESTAMP;

6)Select * from EmployeeDetails where Year(DateOfJoining)=2020;

7)Select D.EmpId,D.FullName,D.ManagerId,D.DateOfJoining,D.City from EmployeeDetails D
  INNER JOIN EmployeeSalary S
  On D.EmpId=S.EmpId 
  where S.Salary IS NOT NULL;

8)select count(Project) as project-wise count from EmployeeSalary
  group by Project 
  order by project-wise count desc;

9)Select D.FullName,S.Salary from EmployeeDetails D
  INNER JOIN EmployeeSalary S
  On D.EmpId=S.EmpId 

10)Select D.FullName from EmployeeDetails D
  INNER JOIN EmployeeSalary S
  On D.EmpId=S.EmpId 
  INNER JOIN EmployeeTable T
  On T.EmpId=S.EmpId;


Advanced ASSINGMENT 

Q1)Write a query to fetch the EmpFname from the EmployeeInfo table in the upper case and use the ALIAS name as EmpName.
Q2)Write a query to fetch the number of employees working in the department ‘HR’.
Q3)Write a query to get the current date.
Q4)Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.
Q5)Write a query to fetch only the place name(string before brackets) from the Address column of EmployeeInfo table.
Q6)Write a query to create a new table that consists of data and structure copied from the other table.
Q7)Write q query to find all the employees whose salary is between 50000 to 100000.
Q8)Write a query to find the names of employees that begin with ‘S’
Q9)Write a query to fetch top N records.
Q10)Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name and the last name must be separated with space.
Q11. Write a query find number of employees whose DOB is between 02/05/1970 to 31/12/1975 and are grouped according to gender
Q12. Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in descending order and Department in the ascending order.
Q13. Write a query to fetch details of employees whose EmpLname ends with an alphabet ‘A’ and contains five alphabets.
Q14. Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the EmployeeInfo table.
Q15. Write a query to fetch details of employees with the address as “DELHI(DEL)”.
Q16. Write a query to fetch all employees who also hold the managerial position.
Q17. Write a query to fetch the department-wise count of employees sorted by department’s count in ascending order.
Q18. Write a query to calculate the even and odd records from a table.
Q19. Write a SQL query to retrieve employee details from EmployeeInfo table who have a date of joining in the EmployeePosition table.
Q20. Write a query to retrieve two minimum and maximum salaries from the EmployeePosition table.
Q21. Write a query to find the Nth highest salary from the table without using TOP/limit keyword.
Q22. Write a query to retrieve duplicate records from a table.
Q23. Write a query to retrieve the list of employees working in the same department.
Q24. Write a query to retrieve the last 3 records from the EmployeeInfo table.
Q25. Write a query to find the third-highest salary from the EmpPosition table.
Q26. Write a query to display the first and the last record from the EmployeeInfo table.
Q27. Write a query to add email validation to your database
Q28. Write a query to retrieve Departments who have less than 2 employees working in it.
Q29. Write a query to retrieve EmpPostion along with total salaries paid for each of them
Q30. Write a query to fetch 50% records from the EmployeeInfo table.

SOLUTION:-

1)Select UPPER(EmpFname) as EmpName from EmployeeInfo table

2)select count(Department) from EmployeeInfo table
  group by Department
  Having Department="HR";

3)SELECT CURDATE();

4)select SUBSTRING(EmpLname,1,4) from EmployeeInfo table;

5)SELECT SUBSTRING(Address, 1, CHARINDEX('(',Address)) FROM EmployeeInfo;

6)CREATE TABLE New_table AS Select * from old_table;

7)Select * from EmployeePosition Table where Salary Between 50000 and 100000;

8)Select EmpFname From EmployeeInfo table where EmpFname LIKE 'S%';

9)select TOP 3 * From EmployeeInfo table;

10)Select CONCAT(EmpFname,' ',EmpLname) as FullName from EmployeeInfo table;

11)Select Count(P.DateOfJoining) from EmployeePosition table AS P
   INNER JOIN EmployeeInfo table AS I
   ON P.EmpId=I.EmpId
   WHERE DateOfJoining BETWEEN 02/05/1970 and 31/12/1975
   group by I.Gender;

12)select * from EmployeeInfo Table
   ORDER BY EmpLname DESC,Department ASC;

13)Select EmpLname from EmployeeInfo Table where EmpLname LIKE '____A%';

14)SELECT * FROM EmployeeInfo table where EmpFname NOT IN('Sanjay','Sonia');

15)Select * from EmployeeInfo table where Address='Delhi(DEL');

16)Select * from EmployeePosition table AS P
   INNER JOIN EmployeeInfo table AS I
   ON P.EmpId=I.EmpId
   WHERE EmpPosition='Manager';
   
17)select count(Department) as Department_wise_count from EmployeeInfo table
   group by Department
   order by count(Department) DESC;

18)select * from EmployeeInfo table
   where MOD(EmpId,2)=0;
   
   select * from EmployeeInfo table
   where MOD(EmpId,2)<>0;


19)Select * from EmployeePosition table AS P
   INNER JOIN EmployeeInfo table AS I
   ON P.EmpId=I.EmpId
   WHERE DateOfJoining IS NOT NULL;

20)SELECT Salary from EmployeePosition table
   order by salary DESC
   LIMIT 2;

   SELECT Salary from EmployeePosition table
   order by salary ASC
   LIMIT 2;

21)SELECT salary from EmployeeInfo table e1
   WHERE N-1=
   (SELECT count(DISTINCT salary) from employeeInfo table e2
    where e2.Salary>e1.Salary);

22)Select id,count(id) from table_name groupby having count(id)>1;

23)

24) (Select * from EmployeeInfo table ORDER BY EmpId DESC LIMIT 3)
     ORDER BY EmpId ASC;

25)SELECT * FROM EmployeePosition table e1 where 2=
  (select count(Distinct salary) e2 where e2.salary>e1.salary;

26) select * from employeeinfo table LIMIT 1;
    select * from employeeinfo table order by EmpId desc LIMIT 1

27)select * from table_name where email LIKE '%@gmail.com';

28)select Department,count(Department) from EmployeeInfo table
   group by Department
   having count(Department) <2;

29)Select EmpPosition,SUM(salary) from EmployeePosition table
   group by salary;

30)Select TOP 50% from EmployeeInfo table;   
   
