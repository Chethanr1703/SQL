create table transactions (
    transaction_id int ,
    account_id int,
    transaction_date date,
    transaction_time time,
    amount decimal(10,2),
    transaction_type varchar(20),   
    mode_of_payment varchar(50),      
    reference_number varchar(50),
    transaction_status varchar(20),   
    source_account varchar(20)        
);


-- add columns
alter table transactions add destination_account varchar(20),
add branch_name varchar(50);

-- drop columns
alter table transactions drop column branch_name ,drop column source_account ,drop column destination_account;

-- rename columns
alter table transactions
rename column transaction_date to txn_date,
rename column transaction_time to txn_time,
rename column transaction_status to status;

-- modify columns
alter table transactions
modify mode_of_payment varchar(30),
modify transaction_type varchar(25),
modify amount decimal(12,2);

-- insert  
insert into transactions (transaction_id, account_id, txn_date, txn_time, amount, transaction_type, mode_of_payment, reference_number, status)
values
(1,101,'2025-09-01','10:30:00',5000.00,'deposit','cash','ref1001','success'),
(2,101,'2025-09-02','11:15:00',2000.00,'withdrawal','upi','ref1002','success'),
(3,102,'2025-09-03','14:20:00',10000.00,'transfer','cheque','ref1003','pending'),
(4,103,'2025-09-04','16:10:00',7500.00,'deposit','card','ref1004','success'),
(5,104,'2025-09-05','09:45:00',3000.00,'withdrawal','upi','ref1005','failed'),
(6,102,'2025-09-06','13:30:00',2000.00,'deposit','cash','ref1006','success'),
(7,105,'2025-09-07','15:50:00',4500.00,'transfer','upi','ref1007','success'),
(8,106,'2025-09-08','12:05:00',6000.00,'deposit','cheque','ref1008','success'),
(9,107,'2025-09-09','17:25:00',1500.00,'withdrawal','card','ref1009','pending'),
(10,108,'2025-09-10','18:40:00',2500.00,'deposit','upi','ref1010','success'),
(11,109,'2025-09-11','11:50:00',8000.00,'deposit','cash','ref1011','success'),
(12,110,'2025-09-12','14:15:00',3200.00,'withdrawal','upi','ref1012','success'),
(13,111,'2025-09-13','09:25:00',9000.00,'transfer','card','ref1013','success'),
(14,112,'2025-09-14','10:45:00',4000.00,'deposit','cheque','ref1014','pending'),
(15,113,'2025-09-15','13:35:00',2700.00,'withdrawal','cash','ref1015','failed'),
(16,114,'2025-09-16','15:20:00',12000.00,'deposit','upi','ref1016','success'),
(17,115,'2025-09-17','16:40:00',3500.00,'transfer','cash','ref1017','success'),
(18,116,'2025-09-18','12:30:00',2200.00,'withdrawal','card','ref1018','success'),
(19,117,'2025-09-19','11:00:00',5400.00,'deposit','upi','ref1019','success'),
(20,118,'2025-09-20','17:10:00',6600.00,'transfer','cheque','ref1020','pending');

-- update queries
update transactions set amount = amount + 500
where transaction_type = 'deposit';

update transactions set status = 'success'
where status = 'pending';

update transactions set mode_of_payment = 'netbanking'
where transaction_type = 'transfer';

-- delete queries
delete from transactions where status = 'failed';

delete from transactions where amount < 2000;


-- update using and operator
update transactions set amount = 7500  where transaction_id = 1 and account_id = 101;

update transactions set status = 'success'  where transaction_type = 'deposit' and mode_of_payment = 'cash';

update transactions set mode_of_payment = 'upi'  where transaction_type = 'withdrawal' and amount = 2000;

-- update using or operator
update transactions set transaction_type = 'transfer' 
where transaction_id = 4 or status = 'pending';

update transactions set status = 'failed' 
where mode_of_payment = 'cheque' or transaction_type = 'withdrawal';

update transactions set amount = 9999.99 
where account_id = 105 or account_id = 106;

-- update using in operator
update transactions set status = 'success' 
where transaction_id in (2,4,6,8);

update transactions set mode_of_payment = 'netbanking' 
where account_id in (101,103,107);

update transactions set transaction_type = 'reversal' 
where transaction_id in (3,7,9);

-- update using not in operator
update transactions set mode_of_payment = 'upi' 
where mode_of_payment not in ('cash','card');

update transactions set status = 'pending' 
where account_id not in (101,102);

-- update using between operator
update transactions set amount = amount + 500 
where transaction_id between 1 and 5;

update transactions set status = 'success' 
where account_id between 103 and 108;

update transactions set mode_of_payment = 'card' 
where transaction_type between 'a' and 'm';

-- aggregate functions
select count(*) as total_transactions from transactions;

select sum(amount) as total_amount from transactions;

select avg(amount) as average_amount from transactions;

select min(amount) as minimum_transaction from transactions;
select max(amount) as maximum_transaction from transactions;
select group_concat(reference_number) as all_references from transactions;
select stddev(amount) as amount_stddev from transactions;
select var_samp(amount) as amount_variance from transactions;
