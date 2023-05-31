--1. Employee Table
Insert into employee values
(1,'Ali murtaza','ali_murtaza','hello','CEO'),
(2,'Fatima Azeem','Fatima_Azeem','hello1','HR-Manager'),
(3,'Hamda Subhani','Hamda_Subhani','hello2','Clerk'),
(4,'Shaheer Arshad','Shaheer_arshad','hello3','Branch-Manager'),
(5,'Bilal Aqeel','Bilal_Aqeel','hello4','Receptionist'),
(6,'Hamza adil','Hamza_adil','hello5','Cook'),
(7,'Sara Naeem','Sarah_naeem','hello6','Team leader'),
(8,'Aleem Mohiudin','Aleem_Mohiudin','hello7','HR'),
(9,'Ahmed Raza','Ahmed_Raza','hello8','Clerk'),
(10,'Ali Hussnain','ali_hussnain','hello9','Clerk');

select * from employee;

--2. Expense Table
insert into expense values
(1,1,'Medical','operation',111.21,'11-3-2011'),
(2,2,'Medical','Hospital payment',100.39,'12-4-2011'),
(4,4,'educational','due fees',2000.1,'11-8-2011'),
(3,3,'Basic needs','Loan',2023.01,'11-7-2012'),
(5,5,'Medical','Surgery',2200,'1-1-2013');

select * from expense;

--3. Customer Table
insert into customer values
(1,'Ayesha Aslam','Lahore','0332214772','F','320','ID-CARD'),
(2,'Zainab Ali','Karachi ','0300046756','F','322','Property Tax receipt'),
(3,'Fatima Bilal','Islamabad','032212111','F','653','Utility Bills'),
(4,'Ahmed Hassan','Narowal','0311223334','M','657','Insurance Card'),
(5,'Ali gujjar','Lahore','0321117768','M','659','Reg-Card'),
(6,'Laiba Hamza','Sahiwal','0323009999','F','650','Driver license'),
(7,'Zarish Yasir','Multan','03204320307','F','656','ID-CARD'),
(8,'Ayeza Usman','Uk','03382224013','F','655','B-Form'),
(9,'Aymen Ahmed','Spain','0322121183','F','623','ID-CARD'),
(10,'Taufel dar','Karachi','0303124422','M','601','Driver license'),
(11,'Ayesha Ijaz','Lahore','0332214152','F','323','Driver license');

select*from customer;

--4. Room Type Table
Insert into roomtype values 
(1,'Luxury Room','Line two','two beds,TV room,Kitchen',20000),
(2,'Executive Twin rooom','Line two','two beds only',10000),
(3,'Business Suite','Line one','two beds,one kitchen,one lounge',30000),
(4,'Standard Twin room','Line one','two beds with one attached bathroom',10000),
(5,'Deluxe Suite','Line one','Three beds,one kitchen,Tv room',40000);

select * from roomtype;

--5. Room Table
insert into room values
(1,1,'01','Allocated'),
(2,2,'02','Not Allocated'),
(3,3,'03','Not Allocated'),
(4,4,'04','Allocated'),
(5,5,'05','Not Allocated');

select * from room;

--6. Item Table
insert into item values
(1,'Continental Food','starters-Rice\chappatis-soups',100,'Best quality'),
(2,'Desi Food','Roti/nan-handis-biryani-raita/salad',300,'Best quality'),
(3,'Chinese food','Rice/soups/chowmin',400,'Best quality'),
(4,'Arabic Food','Mandis',500,'Best quality'),
(5,'Fast Food','Burgers/pizzas/wings',150,'Best quality');

select * from item;

--7. Booking Table
insert into booking values
(1,1,1,'2011-01-1','2011-01-5'),
(2,2,2,'2011-03-1 ','2011-03-6'),
(3,5,3,'2012-04-3 ','2012-04-10'),
(4,5,4,'2012-05-6 ','2012-05-7'),
(5,2,3,'2011-01-2','2011-01-5'),
(6,3,6,'2016-01-1','2016-01-10'),
(7,4,10,'2019-08-12','2019-08-15'),
(8,3,9,'2020-03-4','2020-03-6'),
(9,5,4,'2021-6-3','2021-6-12'),
(10,3,7,'2021-7-6','2021-6-13');

select * from booking;

--8. Order Table
insert into orders values
(1,1,1,'2011-1-1',10,100),
(2,2,2,'2011-2-11',20,200),
(3,3,3,'2012-5-12',30,500),
(4,4,4,'2013-1-1',1000,10000),
(5,2,1,'2014-1-2',12,1200),
(6,1,2,'2016-2-11',2,2000),
(7,2,9,'2017-5-12',30,5000),
(8,3,8,'2018-10-11',10,10000),
(9,5,3,'2019-1-21',120,120000);

select * from orders;

--9. Reminder Table
insert into reminder values
(1,1,'hygiene','Cleaning of beds'),
(2,2,'payment','Advance payment of booking'),
(3,3,'Food order','Delivery of food'),
(4,4,'lock issue','Duplicate of keys supply'),
(5,6,'hygiene','Cleaning of bedsheets'),
(6,7,'payment','take leftover payment'),
(7,8,'hygiene','Cleaning of washrooms');

select * from reminder;

--10. Payment Table
insert into payment values
(1,1,10000,'Booking payment','none','2011-01-11'),
(2,2,20000,'Hospitality services','none','2011-01-13'),
(3,3,1000,'Food payment','none','2011-01-14'),
(4,4,3450,'Room services','none','2013-02-13'),
(5,5,20000,'Advance payment','none','2013-03-10'),
(6,6,25000,'Room services','none','2013-05-01'),
(7,7,10000,'spa services','none','2015-07-9'),
(8,8,10000,'Hall booking','none','2017-08-1');

select * from payment;