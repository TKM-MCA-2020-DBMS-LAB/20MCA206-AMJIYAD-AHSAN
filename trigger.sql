USE db;

CREATE TABLE emp_trigger(Name varchar(20) NOT NULL,Job varchar(20) NOT NULL,Date_of_join DATE,Working_hours varchar(10));

describe emp_trigger;

insert into emp_trigger values
('Aromal','doctor','2012-09-13',14),
('nijil','teacher','2011-08-13',8),
('Anzal','engineer','2022-07-11',11),
('Vandana','professor','2020-12-20',5);

select*from emp_trigger;


delimiter //
create Trigger before_insert_emp_working_hrs
before insert on emp_trigger for each row
begin
if new.Working_hours<0 then set new.Working_hours=0;
end if;
end;//
delimiter ;


insert into emp_trigger values
('ashis','clerk','2009-08-30',12),
('jeffry','engineer','2008-04-10',-3),
('ramees','business','2020-08-25',-18);

select*from emp_trigger;

show triggers;








