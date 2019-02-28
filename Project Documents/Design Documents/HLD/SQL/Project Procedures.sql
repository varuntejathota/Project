create schema Project_5PLP

create table Project_5PLP.Customer
(
CustomerId int primary key identity(1,1),
CustomerName varchar(30),
Age int,
CustomerAddress varchar(30),
CustomerPhoneNo Bigint ,
Gender varchar(30),
DOB datetime,
Habits varchar(20),
Hobbies varchar(20)
)
select *from Project_5PLP.Customer

insert into Project_5PLP.Customer values('Elbin',22,'Kerala',8765432190,'M','07/09/1997','NoSmoking','PlayingSPorts')
insert into Project_5PLP.Customer values('Preethi',23,'Hyderabed',9087654321,'F','04/05/1996','NoSmoking','ReadinBooks')
insert into Project_5PLP.Customer values('Aparna',23,'Karimnagar',8907654321,'F','05/09/1996','NoSmoking','PlayingSPorts')
insert into Project_5PLP.Customer values('Varun',22,'Hyderabad',9876543210,'M','07/08/1997','NoSmoking','playingCricket')
insert into Project_5PLP.Customer values('Durga',23,'Hyderabad',9807654321,'F','07/07/1996','NoSmoking','PlayingSPorts')
insert into Project_5PLP.Customer values('Arthi',22,'Alwal',8976054633,'F','04/08/1997','NoSmoking','Dancing')
insert into Project_5PLP.Customer values('Arpitha',22,'Bejjanki',7890765432,'M','07/09/1997','NoSmoking','Cooking')
insert into Project_5PLP.Customer values('Albin',23,'Kerala',7890654321,'M','03/02/1996','NoSmoking','ListeningMusic')
insert into Project_5PLP.Customer values('Ankitha',24,'Bangalore',9087689065,'F','04/11/1995','NoSmoking','WatchingTv')
insert into Project_5PLP.Customer values('Sowmya',23,'Chennai',8899765432,'F','11/01/1996','NoSmoking','Gardening')
insert into Project_5PLP.Customer values('Akanksha',24,'Pune',9080706050,'F','07/12/1995','NoSmoking','CollectingStamps')
insert into Project_5PLP.Customer values('Akhil',23,'GandhiNagar',9871234560,'M','08/01/1996','Smoking','Drawing')
insert into Project_5PLP.Customer values('Sannith',21,'Chennai',9087098765,'M','11/02/1998','NoSmoking','Painting')
insert into Project_5PLP.Customer values('Ayush',25,'Mumbai',9231456780,'M','05/12/1994','Smoking','Driving')
insert into Project_5PLP.Customer values('Saketh',24,'Pune',9878909879,'M','01/07/1995','NoSmoking','Sleeping')
insert into Project_5PLP.Customer values('Praveen',24,'Pune',9678543981,'M','01/09/1995','NoSmoking','playing')

------------------------------------------Nominee table-------------------
create  table Project_5PLP.Nominee
(
NomineeId int primary key identity(1,1),
CustomerId int,
NomineeName varchar(20),
Relation varchar(20),
Age int,
constraint fk_CustId FOREIGN KEY (CustomerId) REFERENCES Project_5PLP.Customer(CustomerId)
)
insert into Project_5PLP.Nominee values('1','Padma','Mother',46)
insert into Project_5PLP.Nominee values('2','Ram','Father',30)
insert into Project_5PLP.Nominee values('3','Mamatha','Mother',50)
insert into Project_5PLP.Nominee values('4','Swarna','Mother',40)
insert into Project_5PLP.Nominee values('5','Srinivas','Father',49)
insert into Project_5PLP.Nominee values('6','Saritha','Mother',44)
insert into Project_5PLP.Nominee values('7','Lakshman','Father',55)
insert into Project_5PLP.Nominee values('8','Sudheer','Father',56)
insert into Project_5PLP.Nominee values('9','Krishna','Father',51)
insert into Project_5PLP.Nominee values('10','Harishwar','Father',48)
insert into Project_5PLP.Nominee values('11','Srini','Father',49)
insert into Project_5PLP.Nominee values('12','Sheeja','Mother',44)
insert into Project_5PLP.Nominee values('13','Lakshmi','Mother',55)
insert into Project_5PLP.Nominee values('14','Sudheeran','Father',56)
insert into Project_5PLP.Nominee values('15','Krishnan','Father',51)
insert into Project_5PLP.Nominee values('16','Harish','Father',48)



select *from Project_5PLP.Nominee

------------------------Login table----------------
create table Project_5PLP.LoginDetails
(
CustomerId int,
loginId int primary key  ,
loginPassword varchar(10),
constraint fk_id FOREIGN KEY (CustomerId) REFERENCES Project_5PLP.Customer(CustomerId)
)
insert into Project_5PLP.LoginDetails values(1,123,'elbin@123')
insert into Project_5PLP.LoginDetails values(2,124,'preet@123')
insert into Project_5PLP.LoginDetails values(3,125,'aparna@123')
insert into Project_5PLP.LoginDetails values(4,126,'varun@123')
insert into Project_5PLP.LoginDetails values(5,127,'durga@123')
insert into Project_5PLP.LoginDetails values(6,128,'Arthi@123')
insert into Project_5PLP.LoginDetails values(7,129,'Arpita@123')
insert into Project_5PLP.LoginDetails values(8,130,'Albin@123')
insert into Project_5PLP.LoginDetails values(9,131,'Ankita@123')
insert into Project_5PLP.LoginDetails values(10,132,'Sowmya@123')
insert into Project_5PLP.LoginDetails values(11,133,'Akan@123')
insert into Project_5PLP.LoginDetails values(12,134,'Akhil@123')
insert into Project_5PLP.LoginDetails values(13,135,'Sanith@123')
insert into Project_5PLP.LoginDetails values(14,136,'Ayush@123')
insert into Project_5PLP.LoginDetails values(15,137,'Saketh@123')
insert into Project_5PLP.LoginDetails values(16,138,'arjun@123')



select *from Project_5PLP.LoginDetails
-------------------------------------------Login Admin------------------------------------------------
create table Project_5PLP.LoginAdmin
(
loginId   varchar(10) primary key,
loginPassword varchar(10)
)

-------------------------------------------insert admin login and password------------------
insert into Project_5PLP.LoginAdmin values('admin','admin')
select * from Project_5PLP.LoginAdmin
-------------------------------------------Product Table-----------------
create  table Project_5PLP.products
(
ProductId int primary key ,
ProductName varchar(20),
PremiumPayment money ,
PremiumPaymentFrequency varchar(30),
ProductLine varchar(20)

)
insert into Project_5PLP.products values(101,'New Jeevan Nidhi',10000,'Annual','Life')
insert into Project_5PLP.products values(102,'Pension Plans',5000,'Monthly','Life')
insert into Project_5PLP.products values(103,'Special Plan',20000,'Annual','Non-Life')
insert into Project_5PLP.products values(104,'Health Plans',100000,'Quarterly','Life')
insert into Project_5PLP.products values(105,'Business-Plans',1000000,'Annual','Non-Life')

select* from Project_5PLP.products


-------------------Endorsment table ---------------------------------
------------
create table Project_5PLP.Endorsement
(
Id int  primary key identity(10,1),
CustomerId int,
EndorsementId int,
EndorsementStatus varchar(20),
constraint fk_id1 FOREIGN KEY (CustomerId) REFERENCES Project_5PLP.Customer(CustomerId),
constraint fk_endid foreign key(EndorsementId) references Project_5PLP.Documents(EndorsementId)
)
select * from Project_5PLP.Endorsement
----------------------------Dispaly Customer Details------------------
create procedure Project_5.usp_DisplayCustomerDetails
AS
BEgin 
select * from Project_5.Customer
end

exec Project_5.usp_DisplayCustomerDetails

------------------------------Updating the details----------
create   proc Project_5.uspEditProduct
(
@CustomerId int ,
@CustomerName varchar(30),
@CustomerAddress varchar(30),
@CustomerPhoneNo Bigint ,
@Gender varchar(30),
@DOB datetime,
@Habits varchar(20),
@Hobbies varchar(20)
)
as
begin
	update Project_5.Customer
	set CustomerName = @CustomerName,
	CustomerAddress = @CustomerAddress,
	CustomerPhoneNo = @CustomerPhoneNo,
	Gender = @Gender,
	DOB = @DOB,
	Habits = @Habits,
	Hobbies = @Hobbies
	where CustomerId = @CustomerId
end



----------------------------procedure fro search------------
create proc Project_5.uspSearchProduct
(
@CustomerId int
)
as
begin
	select * from Project_5.Customer
	where CustomerId = @CustomerId
end

---------------------Policy table------------------
create  table Project_5PLP.PolicyDetails
(
PolicyNumber int primary key identity (1000,1),
CustomerId int,
ProductId int,

constraint fk_CustId1 FOREIGN KEY (CustomerId) REFERENCES Project_5PLP.Customer(CustomerId),
constraint fk_ProdId FOREIGN KEY (ProductId) REFERENCES Project_5PLP.products(ProductId)
)
select *from Project_5PLP.PolicyDetails

insert into Project_5PLP.PolicyDetails values(1,101)
insert into Project_5PLP.PolicyDetails values(2,102)
insert into Project_5PLP.PolicyDetails values(3,103)
insert into Project_5PLP.PolicyDetails values(4,104)
insert into Project_5PLP.PolicyDetails values(5,105)

insert into Project_5PLP.PolicyDetails values(6,105)
insert into Project_5PLP.PolicyDetails values(7,101)
insert into Project_5PLP.PolicyDetails values(8,103)
insert into Project_5PLP.PolicyDetails values(9,104)
insert into Project_5PLP.PolicyDetails values(10,102)
insert into Project_5PLP.PolicyDetails values(11,101)
insert into Project_5PLP.PolicyDetails values(12,101)
insert into Project_5PLP.PolicyDetails values(13,103)
insert into Project_5PLP.PolicyDetails values(14,104)
insert into Project_5PLP.PolicyDetails values(15,102)
insert into Project_5PLP.PolicyDetails values(16,101)


select* from  Project_5PLP.PolicyDetails

 

--------------------------------------------------------stored procedures for search policy---
create proc Project_5.usp_SearchPolicy
(
@CustomerId int,
@DOB Datetime,
@PolicyNumber int

)
as
begin
	select pv1.CustomerId,pv1.CustomerName,pv1.CustomerAddress,pv1.CustomerPhoneNo,pv1.Gender,pv1.DOB,pv1.Habits,pv1.Hobbies,pv2.PolicyNumber,pv2.ProductId from Project_5.Customer pv1 
	inner join
	Project_5.PolicyDetails pv2
	ON pv1.CustomerId = pv2.CustomerId
	where  @CustomerId in (pv1.CustomerId,pv2.CustomerId) and @DOB =pv1.DOB and @PolicyNumber=pv2.PolicyNumber 
end
exec Project_5.usp_SearchPolicy 2,'04/05/1996',1002


-------------------------------------------------Procedure for login-------------------------------	 
    	
create proc Project_5.uspLogin
(
@LoginId int,
@LoginPassword varchar(10)
)
as
begin
	select * from  Project_5.LoginDetails
	where loginId = @LoginId and loginPassword=@LoginPassword
end

exec Project_5.uspLogin 123,'elbin@123'
--------------------------------stored procedures for admin login--------------
create proc Project_5.uspLoginadmin
(
@LoginId varchar(10),
@LoginPassword varchar(10)
)
as
begin
	select * from  Project_5.LoginAdmin
	where loginId = @LoginId and loginPassword=@LoginPassword
end

exec Project_5.uspLoginadmin 'admin','admin'


---------------------------------create procedure for view-------------------
create proc Project_5.usp_ViewPolicy
(
@CustomerId int
)
as
begin
	select * from Project_5.Customer c1 inner join Project_5.Nominee n1  ON c1.CustomerId = n1.CustomerId
	inner join 
	Project_5.PolicyDetails p1 on p1.CustomerId =n1.CustomerId 
	inner join 
	Project_5.Products p2 on p1.ProductId = p2.ProductId 
	where @CustomerId in (n1.CustomerId,c1.CustomerId,p1.CustomerId)
	
end

exec Project_5.usp_ViewPolicy  

------------------------------------create procedure for update-----------------------------
create procedure Project_5.usp_UpdatePolicy
@CustomerId int,
@CustomerName varchar(30),
@CustomerAddress varchar(30),
@CustomerPhoneNo Bigint ,
@Gender varchar(30),
@Age int,
@DOB datetime,
@Habits varchar(20),
@ProductId int,
@PremiumPaymentFrequency varchar(30),
@NomineeName varchar(20),
@Relation varchar(20)
AS
BEGIN
update Project_5.Customer
SET CustomerName=@CustomerName,CustomerAddress=@CustomerAddress,CustomerPhoneNo=@CustomerPhoneNo,Gender=@Gender,Age=@Age,
DOB=@DOB,Habits=@Habits
where Project_5.Customer.CustomerId=@CustomerId;
update Project_5.products
set PremiumPaymentFrequency=@PremiumPaymentFrequency
where Project_5.products.ProductId=@ProductId;
update Project_5.Nominee
set NomineeName=@NomineeName,Relation=@Relation
where Project_5.Nominee.CustomerId = @CustomerId
END
exec Project_5.usp_UpdatePolicy 5,'vijay','karmangaht',8374016242,'M',22,'11/09/1996','NoSmoking',101,'Annual','preethi','sister'

--------------------------------Table to insert Documents in img format------------------
create table Project_5PLP.Documents(
EndorsementId int primary key identity(1,1),
CustomerId int,
id varchar(50),
images image,
constraint fk_custIDoc foreign key(CustomerId) references Project_5PLP.Customer(CustomerId))


select * from  Project_5PLP.Documents
-------------------------stored procedure to add document img to Table----------------------

create proc Project_5.usp_UploadDocuments(
@CustomerId int,
@id varchar(50),
@images image
)
as
begin
insert into Project_5.Documents(CustomerId,id,images) values(@CustomerId,@id,@images)
end

------------------------procedure for editable update---------------
create procedure Project_5.usp_UpdatePolicy1
@CustomerId int,
@CustomerName varchar(30),
@CustomerAddress varchar(30),
@CustomerPhoneNo Bigint ,
@Gender varchar(30),
@DOB datetime,
@Habits varchar(20),
@Hobbies varchar(20)
AS
BEGIN
update Project_5.Customer
SET CustomerName=@CustomerName,CustomerAddress=@CustomerAddress,CustomerPhoneNo=@CustomerPhoneNo,Gender=@Gender,
DOB=@DOB,Habits=@Habits,Hobbies=@Hobbies
where Project_5.Customer.CustomerId=@CustomerId;
end
exec Project_5.usp_UpdatePolicy1 5,'varunteja','karmangaht',8374016242,'M','11/09/1996','NoSmoking','PlayingSPorts'

--------------------------------------------------procedure for view details of admin page----------------------------------------------
alter procedure Project_5.usp_ViewAdmin

as 
begin
select c1.CustomerId,c1.CustomerName,c1.Age,c1.CustomerAddress,c1.CustomerPhoneNo,c1.Gender,c1.DOB,c1.Habits,c1.Hobbies,n1.NomineeName,n1.Relation,n1.Age,p1.PolicyNumber,p2.ProductId,p2.ProductName,p2.PremiumPayment,p2.PremiumPaymentFrequency,p2.ProductLine from Project_5.Customer c1 inner join Project_5.Nominee n1  ON c1.CustomerId = n1.CustomerId
	inner join 
	Project_5.PolicyDetails p1 on p1.CustomerId =n1.CustomerId 
	inner join 
	Project_5.Products p2 on p1.ProductId = p2.ProductId 
end
exec Project_5.usp_ViewAdmin
------------------------------------------endorsement status procedure--------------------------------
create procedure Project_5.usp_EndorsementStatus
(
@CustomerId int,
@EndorsementId int,
@Status varchar(20)
)
as 
begin
insert into Project_5.Endorsement values(@CustomerId,@EndorsementId,@Status)
end
exec Project_5.usp_EndorsementStatus 1,3,'Approved'

delete from Project_5.Endorsement where CustomerId=1
--------------------------------------customer endorsement--------------------
alter procedure Project_5.usp_ViewEndorsement
@CustomerId int
as 
begin
select c1.CustomerId,c1.CustomerName,c1.Age,c1.CustomerAddress,c1.CustomerPhoneNo,c1.Gender,c1.DOB,c1.Habits,c1.Hobbies,n1.NomineeName,n1.Relation,n1.Age,e1.EndorsementStatus,e1.EndorsementId from Project_5.Customer c1 inner join Project_5.Nominee n1  ON c1.CustomerId = n1.CustomerId
	inner join 
	Project_5.Endorsement e1 on e1.CustomerId = c1.CustomerId
	where @CustomerId in(e1.CustomerId,c1.CustomerId)
end
exec Project_5.usp_ViewEndorsement 