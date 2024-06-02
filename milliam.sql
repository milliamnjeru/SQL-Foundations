use classicmodels;
select * from products;
select * from orders;
select* from  payments;
 
 -- save a query /block of code
 
 create procedure selectAll()
select* from payments ;

 call selectAll();
 -- have two select statements
 
 create procedure selecttwice()
 select* from payments where 
 amount >100000;
 select* from payments where
 amount <100000;  
 -- delimiters=; our query ends here
 call selecttwice();
 
 delimiter $$
 create procedure selectedtwice2()
 begin
   select *from payments where amount >100000;
   select * from payments where amount<100000;
   end $$
   delimiter ;
 
call selectedtwice2();

delimiter //
create procedure new_select()
begin
  select * from payments where amount >50000;
  end //
  delimiter ;
  
  call new_select();
  
  delimiter &&
  create procedure allpay()
  select * from payments;
  
  call allpay();
  delimiter &&
  
  create procedure getpaymentsbycheckNumber(in checkNumber_param varchar(100))
  begin 
     select * from payments 
	 where checkNumber=checkNumber_param;
     end &&
     delimiter ;
  
 call getpaymentsbycheckNumber('HQ336336');
 
 delimiter %%
 create procedure getpaymentsbyamount(in minamount decimal(10.2), in maxamount decimal (10,2))
 begin 
  select customerNumber,checkNumber from payments
  where amount between minamount and maxamount;
  end %%
  delimiter ;
  
  call getpaymentsbyamount (80000,90000);
  
  
 
 
 
 
 delimiter //
 create procedure getpaymentinf (
 in custnum int,
 out totpayment decimal(10,2),
 out paymentcount int 
 )
 begin 
   select sum( amount), count(*)
into totpayment,paymentcount 
from payments
where customerNumber=custnum; 
end //
delimiter ;
-- totalpayments
  set @totalpayments=0;
  -- paymentcount
 set @ paymentcount=0;
 select @totalpayments;
 select @ paymentcount;
 
 call getpaymentinf(103, @totalpayments, @paymentcount);
 
 
 4
 