Q1) Create   Database Name as Order_Stores_Data 
Q2) Create two Table names as Orders_Table and Stores_Table
Q3) Insert All records present here in the Orders_table and Stores_Table.
Q3) Make Order_Id  Column as Primary Key.
Q4) Add one Column Name  as Store_Names and insert the records given above in Stores table.
Q5) Make Stored_Id as a Foreign Key with reference too Orders_Table 
Q6) Update the missing  records in the Order_item Column in Order_table missing records are given in this sheet
Q7) Update the missing records in the PromoInterval Column in Stores Table.
Q8) Rename the column name  of Assortment to Store_Nos in Stores_Table.
Q9) Rename the column name  of Order_Item to Item_name  and Rep Column as Customers_name in Orders_Table.
Q10) Sort the Unit Cost of Orders_table in Descding order and Total column in Ascending order.
Q11) Convert Customers_name to Cus_Name  and find how many  Cus_Name in each region.
Q12) Find the sum of Total_Price Column and Unit Cost  in Orders_Table 
Q13) Show me OrderDate  , Unit Cost  , StoreType and Year in One table and names that table as Order_Stores_Table.
Q14)  Give me Order_Item  and Region whose Order_Id is 4 , 5, 6 ,9
Q15) Show me year  whose ComptetitionDistance is 29910  , 310 , 3160
Q16)  Give me that Item_name whose  Total_Price is greater than 200 and less than 400
Q17) Rename the CompetitionDistance as CD and find the total CD in Stores_Table.
Q18) What is the Total Count of Stores_Type and CD columns
Q19) Apply the Cross Join in  Orders_Table and Stores_Table.
Q20) DROP both the databases



SOLUTION:-
1)CREATE DATABASE Order_Stores_Data;

2)Create table Orders_Table
(OrderDate DATE,
 Region VARCHAR(20),
 Rep VARCHAR(20),
 Order_Item VARCHAR(20) NULL,
 Units INT,
 Unit_Cost DECIMAL(10,2),
 Total_Price DECIMAL(10,2),
 Order_Id INT
 );

CREATE TABLE Stores_Table
(Store_Id int,
 StoreType VARCHAR(20),
 Assortment	int,
 CompetitionDistance int,	
 Months	int,
 Years	int,
 PromoInterval VARCHAR(20)
 );

3) INSERT INTO Orders_Table(OrderDate,Region,Rep,Order_Item,Units,Unit_Cost,Total_Price,Order_Id)
 VALUES
  ('1-6-21','East','Aruna','Pencil',95,1.99,189.05,1),
  ('1-23-21'	,'Central',	'Kivell'	,'Eraser',	50,	 19.99 ,999.50 ,2),
  ('2-9-21','Central','Ganesh',NULL, 36,4.99,179.64,3),
  ('2-26-21'	,'Central',	'Payal',NULL	,27	, 19.99, 	 539.73 	,4),
  ('3-15-21','West'	,'Sorvino',NULL	,56	 ,2.99 ,167.44 	,5),
  ('4-1-21'	,'East'	,'Hitesh'	,'Pencil'	,60,	 4.99 ,	 299.40, 	6),
  ('4-18-21'	,'Central',	'Akshita',NULL	,	75	, 1.99 	, 149.25 	,7),
  ('5-5-21',	'Central',	'Ruchika',	'Books',	90	, 4.99, 	 449.10 	,8),
  ('5-22-21',	'West',	'Surbhi',NULL		,32	 ,1.99 	 ,63.68 	,9),
  ('6-8-21'	,'East',	'Jones',	'Suitcase',	60,	 8.99, 	 539.40 ,	10)


INSERT INTO Stores_Table(Store_Id,StoreType,Assortment,CompetitionDistance,Months,Years,PromoInterval)
VALUES
(1,'c',31,1270,9,2008,'Jan'),
(2,'a',32,570,11,2007,'Feb'),
(3,'a',34,14130,12,2006,'Mar'),
(4,'c',28,620,9,2009,NULL),
(5,'a',30,29910,4,2015,'May'),
(6,'a',26,310,12,2013,'June'),
(7,'a',38,24000,4,2013,NULL),
(8,'a',35,7520,10,2014,'Aug'),
(9,'a',44,2030,8,2000,NULL),
(10,'a',15,3160,9,2009,'Oct')


4)ALTER TABLE Orders_Table
ALTER COLUMN Order_id int NOT NULL;

ALTER TABLE Orders_Table
ADD PRIMARY KEY(Order_Id);

5)ALTER TABLE Stores_Table
  ADD FOREIGN KEY(Store_Id) REFERENCES Orders_Table(Order_Id);

6)UPDATE Orders_Table
SET Order_Item ='Compass'
WHERE Order_Id=3;

UPDATE Orders_Table
SET Order_Item ='Torch'
WHERE Order_Id=4;

UPDATE Orders_Table
SET Order_Item ='Phone'
WHERE Order_Id=5;

UPDATE Orders_Table
SET Order_Item ='Laptop'
WHERE Order_Id=7;

UPDATE Orders_Table
SET Order_Item ='Box'
WHERE Order_Id=9;

7)
UPDATE Stores_Table
SET PromoInterval ='Apr'
WHERE Store_Id=4;

UPDATE Stores_Table
SET PromoInterval ='July'
WHERE Store_Id=7;

UPDATE Stores_Table
SET PromoInterval ='Sep'
WHERE Store_Id=9;

8)EXEC sp_RENAME 'Stores_Table.Assortment', 'Store_Nos', 'COLUMN';

9)EXEC sp_rename 'Orders_Table.Order_Item','Item_Name','COLUMN';
  EXEC sp_rename 'Orders_Table.Rep','Customers_Name','COLUMN';

10)select * from Orders_Table 
   Order by Unit_Cost DESC,
   Total_Price ASC;

11)EXEC sp_rename 'Orders_Table.Customers_Name' ,'Cus_Name', 'COLUMN';

  SELECT Count(Cus_Name),Region from Orders_Table
  Group by Region;

12)select sum(Total_Price) as Total_Price from Orders_Table;
   select sum(Unit_cost) as Total_Unit_Cost from Orders_Table;

13)select O.OrderDate,O.Unit_Cost,S.StoreType,S.Years 
   from Orders_Table AS O
   INNER JOIN Stores_Table S
   On O.Order_id=S.Store_Id;

14)select Item_Name, Region from Orders_Table 
   where Order_Id In(4,5,6,9);

15)select years from Stores_Table
   where CompetitionDistance In (29910,310,3160)

16)select Item_Name,Total_Price from Orders_Table 
   where Total_Price between 200 and 400;

17)EXEC sp_rename 'Stores_Table.CompetitionDistance','CD' ,'COLUMN'
   select count(CD) as TotalCD from Stores_Table;

18)select count(StoreType) as Total_StoreType from Stores_Table;

19)select * from Orders_Table AS O
   CROSS JOIN Stores_Table AS S

20)DROP DATABASE Order_Stores_Data;
