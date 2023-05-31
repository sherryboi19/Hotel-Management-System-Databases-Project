Create Table Employee_Audit
(change_id int IDENTITY Primary Key,
employeeid int,
empname varchar(25) not null,
loginid varchar(25) not null,
pass varchar(100) not null,
emptype varchar(25) not null,
updated_at Datetime not null,
operation varchar(3) not null,
check(operation='INS' or operation='DEL'));

Create Table Customer_Audit
(change_id int IDENTITY Primary Key,
customerid int, 
customername varchar(50) not null,  
caddress text not null, 
contactno varchar(15) not null,
gender varchar not null,
idproof varchar(100) not null, 
addressproof varchar(100) not null,
updated_at Datetime not null,
operation varchar(3) not null,
check(operation='INS' or operation='DEL'));

Create Table Booking_Audit
(change_id int IDENTITY Primary Key,
bookingid int, 
roomid int, 
customerid int, 
checkin date,
checkout date,
updated_at Datetime not null,
operation varchar(3) not null,
check(operation='INS' or operation='DEL'));

Create Table Payment_Audit
(change_id int IDENTITY Primary Key,
paymentid int,
bookingid int,
amount float not null,
paymenttype varchar(20) not null,
paymentdetail text not null,
paymentdate date not null,
updated_at Datetime not null,
operation varchar(3) not null,
check(operation='INS' or operation='DEL'));

Create Trigger emp_audit
on employee
after insert,delete
as
begin
   set nocount on
insert into Employee_Audit(
employeeid,
empname,
loginid,
pass,
emptype,
updated_at,
operation)
select i.employeeid,
empname,
loginid,
pass,
emptype,
GetDate(),'INS'
From inserted as i
Union ALL
select d.employeeid,
empname,
loginid,
pass,
emptype,
GetDate(),'DEL'
from deleted as d
end

Create Trigger cus_audit
on customer
after insert,delete
as
begin
   set nocount on
insert into Customer_Audit(
customerid, 
customername,  
contactno,
gender,
idproof, 
addressproof,
updated_at,
operation)
select i.customerid,
customername,  
contactno,
gender,
idproof, 
addressproof,
GetDate(),'INS'
from inserted as i
Union ALL
select d.customerid,
customername,  
contactno,
gender,
idproof, 
addressproof,
GetDate(),'DEL'
FROM
  deleted as d
end

Create Trigger book_audit
on booking
after insert,delete
as
begin
   set nocount on
insert into Booking_Audit(
bookingid, 
roomid, 
customerid, 
checkin,
checkout,
updated_at,
operation)
select i.bookingid, 
i.roomid, 
i.customerid, 
checkin,
checkout,
GetDate(),'INS'
FROM
  inserted as i
Union ALL
Select d.bookingid, 
d.roomid, 
d.customerid, 
checkin,
checkout,
GetDate(),'DEL'
FROM
  deleted  d
end

Create Trigger pay_audit
on payment
after insert,delete
as
begin
   set nocount on
insert into Payment_Audit(
paymentid,
bookingid,
amount,
paymenttype,
paymentdate,
updated_at,
operation)
Select i.paymentid,
i.bookingid,
amount,
paymenttype,
paymentdate,
GetDate(),'INS'
FROM
  inserted as i
Union ALL
Select d.paymentid,
d.bookingid,
amount,
paymenttype,
paymentdate,
GetDate(),'DEL'
FROM
  deleted  d
end