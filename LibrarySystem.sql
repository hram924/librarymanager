/*This is a project I made to manage the books and accounts for a library to show some of my sql programming skills */
create database Library_Management_System
use Library_Management_System

/*create User table with fields*/
create table Users(
User_Id int identity(1,1) primary key not null,
Roles_ID int ,
Name varchar(20),
Division varchar(25),
Contact varchar(15),
Address varchar(500),
Year int
)

/*Insert details into Users table*/

insert into Users values(1,  'Hamish',   'Business Intelligence',  '0210000001', 'Auckland', 2018)
insert into Users values(2,  'Ross',   'Business Intelligence',  '0210000002', 'Rotorua', 2018)
insert into Users values(1,  'Trent',   'Business Intelligence',  '0210000003', 'Rawene', 2018)
insert into Users values(2,  'Martin',   'Business Intelligence',  '0210000004', 'Charleston', 2018)
insert into Users values(1,  'Camilla',   'Business Intelligence',  '0210000005', 'Dallas', 2018)
insert into Users values(2,  'Henry',   'Business Intelligence',  '0210000006',  'Rawene', 2018)
insert into Users values(1,  'Victoria',   'Business Intelligence',  '0210000007',  'Mumbai', 2018)
insert into Users values(1,  'Ariana',    'Data Analytics',  '0210000008',  'Manila', 2018)
insert into Users values(2,  'Luke',    'Data Analytics',  '0210000009',  'St Louis', 2018)
insert into Users values(2,  'Kat',   'Data Analytics',  '0210000010',  'Lusaka', 2019)
insert into Users values(2,  'Colin',  'Data Analytics',  '0210000011',  'Shanghai', 2019)
insert into Users values(1,  'Lauren', 'Data Analytics',  '0210000012',  'Dublin', 2019)
insert into Users values(1,  'Tim',  'Data Analytics',  '0210000013',  'Louisville', 2019) 
insert into Users values(1,  'Kane', 'Data Analytics',  '0210000014',  'Pukekohe', 2019)
insert into Users values(1,  'Tom',  'Business Intelligence',  '0210000015',  'Suva', 2019) 
insert into Users values(1,  'Inderbir',  'Business Intelligence',  '0210000016',  'Auckland', 2019)
insert into Users values(1,  'Lindsey',  'Data Analytics',  '0210000017',  'Whangerei', 2019)
insert into Users values(1,  'James', 'Data Analytics',  '0210000018',  'Mumbai', 2019)
insert into Users values(1,  'Lyla',  'Data Analytics',  '0210000019',  'Suva', 2019) 
insert into Users values(2,  'Matthew',  'Business Intelligence',  '0210000020', 'Auckland', 2019) 
                   
/*Show table of staff*/
select Name,Division,Contact,Address,Year 
from Users 
where Roles_ID>1
/*Show name and id of all users */
select Name,User_Id 
from Users


/*Create Book Table*/

create table Books(
Book_Id int primary key identity,
Book_Serial_Num int,
Book_Name varchar(50),
Author_Name varchar(50),
Book_Edition varchar(100),
category_Id int
)

/*Insert details into book table*/

insert into Books values(1001,  'True Allegiance', 'Ben Shapiro',   '1st',   1)
insert into Books values(1002,  '12 Rules for Life',    'Jordan Peterson',    '1st',   2)
insert into Books values(1003,  'Justice on Trial',     'Mollie Hemingway',   '1st',   3)
insert into Books values(1004,  'Sherlock Holmes',     'Arthur Conan Doyle',    '1st',   4)
insert into Books values(1005,  'Murder on the Orient Express',     'Agatha Christie',   '1st',   5)
insert into Books values(1006,  'The Girl with the Dragon Tattoo',      'Stieg Larsson',   '1st',   6)
insert into Books values(1007,  'The Right Side of History',   'Ben Shapiro',   '1st',   7)
insert into Books values(1008,  'The Secret in Their Eyes',     'Eduardo Sacheri',   '1st',   8)
insert into Books values(1009,  'Revenge',     'Ted Sullivan',   '1st',   9)
insert into Books values(1010,  'The Great Gatsby',    'Scott Fitzgerald',   '1st',   10)
insert into Books values(1011,  'The Count of Monte Cristo',  'Alexandre Dumas',   '2nd',   11)
insert into Books values(1012,  'Moby Dick',      'Herman Melville',   '2nd',   12)
insert into Books values(1013,  'Hamlet',      'William Shakespeare',   '2nd',   13)
insert into Books values(1014,  'Basic Economics',      'Thomas Sowell',   '2nd',   14)
insert into Books values(1015,  'Pride and Prejudice',    'Jane Austin',  '2nd',   15)
insert into Books values(1016,  'The Lovely Bones',   'Alice Sebold',   '2nd',   16)
insert into Books values(1017,  'True Grit',   'Charles Portis',  '2nd',   17)
insert into Books values(1018,  'Gone With The Wind', 'Margaret Mitchell',  '2nd',   18)
insert into Books values(1019,  'Economics in One Lesson',   'Heny Hazzlit',  '2nd',   19)
insert into Books values(1020,  'The Diary of a Young Girl',     'Anne Frank',   '2nd',   20)

/*Show table of book details and which division has taken out those books */

select Books.Book_Serial_Num,
Books.Book_Name,
Books.Author_Name,
Books.Book_Edition,
users.Division,
category.Book_Category 
from Books 
inner join category on Books.category_Id=category.category_Id
inner join Users on Users.User_Id=category.category_Id 



DROP TABLE category

/*Create category table */

create table category (
category_Id int identity primary key,
Book_Category varchar(100)
)

select * from category

insert into category values('Business Intelligence')
insert into category values('Business Intelligence')
insert into category values('Business Intelligence')
insert into category values('Business Intelligence')
insert into category values('Business Intelligence')
insert into category values('Business Intelligence')
insert into category values('Business Intelligence')
insert into category values('Data Analytics')
insert into category values('Data Analytics')
insert into category values('Data Analytics')
insert into category values('Data Analytics')
insert into category values('Data Analytics')
insert into category values('Data Analytics')
insert into category values('Data Analytics')
insert into category values('Business Intelligence')
insert into category values('Business Intelligence')
insert into category values('Data Analytics')
insert into category values('Data Analytics')
insert into category values('Data Analytics')
insert into category values('Business Intelligence')
insert into category values('Business Intelligence')




/*create book issues record table*/

create table Book_Issues(
Bk_Issue_Id int identity primary key,
Date_Of_Issue date,
Date_Of_Return date,
Book_Id int,
[User_Id] int,
category_Id int,
Book_Status varchar(20)
)

/*Book issue details*/

Insert into Book_Issues  Values ('2018-02-08','2018-02-10',2,2,1,'True')
Insert into Book_Issues  Values ('2018-01-02','2018-01-10',2,2,3,'True')
Insert into Book_Issues  Values ('2018-03-03','2018-03-10',2,3,3,'True')
Insert into Book_Issues  Values ('2018-01-02','2018-01-10',2,2,3,'True')
Insert into Book_Issues  Values ('2018-04-02','2018-04-10',1,2,3,'True')
Insert into Book_Issues  Values ('2018-06-06','2018-06-12',2,2,3,'True')
Insert into Book_Issues  Values ('2018-03-02','2018-03-10',6,6,3,'True')
Insert into Book_Issues  Values ('2018-01-02','2018-01-10',4,4,3,'True')
Insert into Book_Issues  Values ('2018-01-02','2018-01-10',2,4,5,'True')
Insert into Book_Issues  Values ('2018-01-02','2018-01-10',6,6,6,'True')
Insert into Book_Issues  Values ('2019-01-02','2019-01-10',2,2,3,'True')
Insert into Book_Issues  Values ('2019-01-02','2019-01-10',2,2,3,'True')
Insert into Book_Issues  Values ('2019-01-02','2019-01-10',2,2,3,'True')
Insert into Book_Issues  Values ('2019-04-02','2019-04-10',1,2,3,'True')
Insert into Book_Issues  Values ('2019-06-06','2019-06-12',2,2,3,'True')
Insert into Book_Issues  Values ('2019-03-02','2019-03-10',6,6,3,'True')
Insert into Book_Issues  Values ('2019-01-02','2019-01-10',2,2,3,'True')
Insert into Book_Issues  Values ('2019-01-02','2019-01-10',2,2,3,'True')

/*Show record of books issued by user and book*/

select Users.Stu_Id,Books.Book_Name,Books.Author_Name,Book_Issues.Date_Of_Issue,Date_Of_Return 
from Users 
inner join Book_Issues on Users.Stu_Id=Book_Issues.Stu_Id 
inner join Books on Books.Book_Id=Book_Issues.Book_Id


select Users.[User_Name],Books.Book_Name,Book_Issues.Date_Of_Issue,Book_Issues.Date_Of_Return 
from Users 
inner join Book_Issues on Users.Stu_Id=Book_Issues.Stu_Id 
inner join Books on Books.Book_Id=Book_Issues.Book_Id 
inner join category on category.category_Id=Book_Issues.category_Id

/*Create record of late fees*/

create table Due_Date_Fee(
Due_Date_Fee_Id int identity primary key,
Fee_Amount decimal(5,2),
Book_Id int ,
Bk_Issue_Id int
)

/*Show table of late fees for the books that have a fee againsst them */

select Books.Book_Name,Books.Author_Name,Book_Issues.Date_Of_Issue,Book_Issues.Date_Of_Return 
from Books 
inner join Due_Date_Fee on Books.Book_Id=Due_Date_Fee.Book_Id 
inner join Book_Issues on Book_Issues.Bk_Issue_Id=Due_Date_Fee.Bk_Issue_Id

/*initial record of due date fees*/

insert into Due_Date_Fee values(13,1,1),(7.99,2,2),(6.8,3,3)

/*Create User Roles*/

create table Roles(
Roles_ID int identity primary key,
Role_Name varchar(50)
)

insert into Roles values ('Admin'),('Staff'),('Management')

/*Stock table with table for name and number*/

create table Stocks(
Stock_ID int primary key identity,
Stock int,
Book_id int
)

create table stock(
StockID int identity primary key,
Stock nvarchar(500),
Book_Id int
)

/*Show inventory of books by category*/

select Books.Book_Name,category.Book_Category,Stocks.Stock 
from Stocks 
inner join Books on Stocks.Book_id=Books.Book_id 
inner join category on Stocks.Stock_ID=category.category_Id

select * from Stocks

insert into Stocks values(1,1),(2,2),(3,3)

/*Show inventory of books*/

select Books.Book_Name,Books.Author_Name,Stocks.Stock 
from Books 
inner join Stocks on Stocks.Book_id=Books.Book_Id

/*Show users with their roles*/


select  r.Role_Name,Name,Division,Contact,Address,Year 
from users u 
inner join Roles  r on r.Roles_ID = u.roles_id 
where u.roles_id>1

/*Show book issue information*/

select Books.Book_Name,[Users].Name As'Student_Name',category.Book_Category,CONVERT(varchar,Book_Issues.Date_Of_Issue,103) as Issue_Date 
from Book_Issues 
inner join Books on Book_Issues.Book_Id=Books.Book_Id 
inner join category on category.category_Id=Book_Issues.category_Id 
inner join [Users] on [Users].[User_Id]=Book_Issues.[User_Id]

/*Book issues by division for users with more than one book issues*/
SELECT Users.User_id, Users.division, Book_Issues.Book_Id, count(Book_Issues.Book_Id) AS count 
FROM Users 
JOIN Book_Issues ON Users.User_id = Book_Issues.User_id 
GROUP BY division 
HAVING count( Users.User_id ) > 1;

/*Check the books with the highest amount of fees*/
select Fee_Amount, Bk_Issue_Id, DENSE_RANK() OVER (ORDER BY Fee_Amount DESC) AS RANK 
from Due_Date_Fee

/* Total fees due*/
select sum(case when Fee_Amount >0 then Fee_Amount else 0 end) AS Overdue 
from Due_Date_Fee;

/* 5th highest Due date fee amount*/ 
SELECT TOP (1) Fee_Amount 
FROM(SELECT DISTINCT TOP (5) Fee_Amount 
      FROM Due_Date_Fee 
      ORDER BY Fee_Amount DESC) AS Fee 
ORDER BY Fee_Amount

/* split fee into dollar and cents*/
select Fee_Amount, trunc(Fee_Amount) as Dollars, nvl(100*(Fee_Amount - trunc(Fee_Amount)), 0) as Cents 
from Due_Date_Fee;


select * from Users 
Select * from Book_Issues
Select * from Books
Select * from category
Select * from Due_Date_Fee
Select * from Roles
Select * from Stocks
Select * from Users


