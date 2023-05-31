Create View Customers_With_ID_Card as
select * 
from customer 
where addressproof='ID-CARD';

select * from Customers_With_ID_Card;

Create View Customer_Info as
select C.customername,C.caddress,C.contactno,B.checkin,B.checkout 
from customer as C inner join booking as B 
on C.customerid=B.customerid;

select * from Customer_Info;

Create View Employee_with_Expances as
select E.employeeid,E.empname,E.emptype,Ex.expensetype,Ex.expensedescription,Ex.expenseamt,Ex.expensedate 
from employee as E INNER JOIN expense as Ex
on E.employeeid=Ex.employeeid;

select * from Employee_with_Expances;

Create View VIP_Customers as
select C.customerid,C.customername,C.caddress,C.contactno,C.gender,R.roomnumber
from customer as C,room as R,booking as B,roomtype as RT
where C.customerid=B.customerid AND B.roomid=R.roomid AND R.roomtypeid=RT.roomtypeid AND RT.roomtype='Deluxe Suite';

select * from VIP_Customers;

Create View Customer_Reminder as
select C.customername,R.roomnumber,RM.remindertype,RM.reminderdetail
from customer as C,room as R,booking as B,reminder as RM
where C.customerid=B.customerid AND B.roomid=R.roomid AND RM.bookingid=B.bookingid;

select * from Customer_Reminder;