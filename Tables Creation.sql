--1. Employee Table
create table employee (
employeeid int,
empname varchar(25) not null,
loginid varchar(25) not null,
pass varchar(100) not null,
emptype varchar(25) not null,
primary key(employeeid)
on delete cascade on update cascade
);
--2. Expense Table
create table expense (
expenseid int,
employeeid int,
expensetype varchar(20) not null,
expensedescription text not null,
expenseamt float not null,
expensedate date not null,
primary key(expenseid),
foreign key (employeeid) references employee (employeeid)
);

--3. Customer Table
create table customer (
customerid int, 
customername varchar(50) not null,  
caddress text not null, 
contactno varchar(15) not null,
gender varchar not null,
idproof varchar(100) not null, 
addressproof varchar(100) not null,  
primary key (customerid)
on delete cascade on update cascade
);

--4. Room Type Table
create table roomtype (
roomtypeid	int, 
roomtype varchar(100) not null,
roomimg	 varchar(100) not null,
descrp text not null,
cost  float not null,
primary key(roomtypeid),
on delete cascade on update cascade
);

--5. Room Table
create table room (
roomid int,
roomtypeid int,
roomnumber varchar(10) not null,
descrp text not null,
primary key(roomid),
foreign key (roomtypeid) references roomtype (roomtypeid)
);

--6. Item Table
create table item (
itemid int,
itemtype varchar(25) not null,
itemname varchar(100) not null,
itemcost float not null,
itemdetails text not null,
primary key(itemid),
);

--7. Booking Table
create table booking (
bookingid int, 
roomid int, 
customerid int, 
bookingdate date not null, 
checkin datetime not null, 
checkout datetime not null, 
primary key (bookingid),
foreign key (roomid) references room (roomid),
foreign key (customerid) references customer (customerid)
on delete cascade on update cascade
);

--8. Order Table
create table orders(
orderid int,
itemid  int, 
bookingid int,
orderdate date not null,
qty  float not null,
cost float not null,
primary key (orderid),
foreign key (itemid) references item (itemid),
foreign key (bookingid) references booking (bookingid)
);

--9. Reminder Table
create table reminder (
reminderid int,
bookingid int,
remindertype varchar(25) not null,
reminderdetail text not null,
date_time Datetime not null,
primary key(reminderid),
foreign key (bookingid) references booking (bookingid)
);

--10. Payment Table
create table payment (
paymentid int,
bookingid int,
amount float not null,
paymenttype varchar(20) not null,
paymentdetail text not null,
paymentdate date not null,
primary key(paymentid),
foreign key (bookingid) references booking (bookingid)
);