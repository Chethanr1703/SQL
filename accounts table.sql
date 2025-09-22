CREATE TABLE ACCOUNTS(
account_id int,
account_number bigint,
account_holder_name varchar(20),
which_account_type varchar(20),
date_of_birth DATE,
gender VARCHAR(10),
email VARCHAR(50),
phone VARCHAR(15),
address VARCHAR(255),
branch_name VARCHAR(100));

select * from accounts;
desc accounts;

-- adding column 
ALTER Table ACCOUNTS add column opened_date date,add column balance decimal;
-- removing column
ALTER table accounts drop column opened_date ,drop column balance;

-- alter table names
ALTER TABLE ACCOUNTS RENAME column phone to contact_number;
ALTER table accounts rename column email to contact_mail_id; 
ALTER table accounts rename column address to contact_address;
ALter table accounts rename column  account_type to which_account_type ;
ALter table accounts rename column  which_account_type to account_type ;

-- modify column
ALTER TABLE ACCOUNTS MODIFY COLUMN contact_number bigint;
alter table accounts modify column contact_address varchar(50);
alter table accounts modify column branch_name VARCHAR(50);

-- inserting values

insert into accounts(account_id ,
account_number ,
account_holder_name ,
account_type,
date_of_birth ,
gender ,
contact_mail_id ,
contact_number ,
contact_address ,
branch_name ) values(1, 100000000001, 'Rahul Sharma', 'Savings', '1990-05-12', 'Male', 'rahul.sharma@gmail.com', '9876543210', '123 MG Road, Bengaluru', 'MG Road Branch'),
(2, 100000000002, 'Priya Verma', 'Savings', '1995-07-21', 'Female', 'priya.verma@gmail.com', '9811122233', '45 Lajpat Nagar, New Delhi', 'Lajpat Nagar Branch'),
(3, 100000000003, 'Arjun Mehta', 'Current', '1985-01-30', 'Male', 'arjun.mehta@biz.com', '9998887777', '12 Connaught Place, New Delhi', 'Connaught Place Branch'),
(4, 100000000004, 'Sneha Kapoor', 'Savings', '1998-09-14', 'Female', 'sneha.kapoor@gmail.com', '9877001122', '67 Park Street, Kolkata', 'Park Street Branch'),
(5, 100000000005, 'Vikas Reddy', 'Savings', '1975-03-18', 'Male', 'vikas.reddy@hospital.com', '9845002233', '45 Jubilee Hills, Hyderabad', 'Jubilee Hills Branch'),
(6, 100000000006, 'Amit Kumar', 'Salary', '1992-11-02', 'Male', 'amit.kumar@gmail.com', '9810011223', '23 Sector 22, Chandigarh', 'Sector 22 Branch'),
(7, 100000000007, 'Kavya Nair', 'Savings', '2000-12-11', 'Female', 'kavya.nair@gmail.com', '9847123456', '12 Marine Drive, Kochi', 'Marine Drive Branch'),
(8, 100000000008, 'Sanjay Gupta', 'Current', '1980-04-05', 'Male', 'sanjay.gupta@trade.com', '9911445566', '88 Civil Lines, Lucknow', 'Civil Lines Branch'),
(9, 100000000009, 'Neha Singh', 'Savings', '1997-02-17', 'Female', 'neha.singh@gmail.com', '9877665544', '23 Aliganj, Lucknow', 'Aliganj Branch'),
(10, 100000000010, 'Rohit Malhotra', 'Salary', '1988-06-29', 'Male', 'rohit.malhotra@bank.com', '9811123344', '56 Sector 18, Noida', 'Sector 18 Branch'),
(11, 100000000011, 'Ananya Rao', 'Savings', '1996-10-08', 'Female', 'ananya.rao@gmail.com', '9822334455', '45 MG Road, Pune', 'Shivaji Nagar Branch'),
(12, 100000000012, 'Manish Patel', 'Current', '1979-07-19', 'Male', 'manish.patel@biz.com', '9878776655', '23 CG Road, Ahmedabad', 'CG Road Branch'),
(13, 100000000013, 'Deepika Joshi', 'Savings', '1994-01-14', 'Female', 'deepika.joshi@gmail.com', '9844221100', '22 Mall Road, Dehradun', 'Mall Road Branch'),
(14, 100000000014, 'Rakesh Yadav', 'Salary', '1986-09-25', 'Male', 'rakesh.yadav@gmail.com', '9876654321', '12 Sector 10, Gurugram', 'DLF Phase 1 Branch'),
(15, 100000000015, 'Pooja Deshmukh', 'Savings', '1993-12-06', 'Female', 'pooja.deshmukh@gmail.com', '9823004455', '67 FC Road, Pune', 'FC Road Branch'),
(16, 100000000016, 'Sameer Khan', 'Current', '1982-04-18', 'Male', 'sameer.khan@export.com', '9898776655', '78 Charminar, Hyderabad', 'Charminar Branch'),
(17, 100000000017, 'Aarti Jain', 'Savings', '1999-05-23', 'Female', 'aarti.jain@gmail.com', '9811223345', '34 MI Road, Jaipur', 'MI Road Branch'),
(18, 100000000018, 'Rohini Iyer', 'Savings', '1992-08-09', 'Female', 'rohini.iyer@gmail.com', '9877012345', '56 Race Course Road, Bengaluru', 'Race Course Branch'),
(19, 100000000019, 'Nitin Saxena', 'Salary', '1989-03-01', 'Male', 'nitin.saxena@gmail.com', '9811992233', '34 Hazratganj, Lucknow', 'Hazratganj Branch'),
(20, 100000000020, 'Meera Kulkarni', 'Savings', '1991-07-15', 'Female', 'meera.kulkarni@gmail.com', '9822778899', '67 Law College Road, Pune', 'Law College Branch');

update  accounts set  account_holder_name ='chethan' where account_id =1;
update accounts set contact_mail_id = 'chethan1703@gmail.com' where account_id= 1;


Alter Table accounts add column bank_name varchar(50);

-- update using and operator
update accounts  set date_of_birth='2003-08-17' where account_holder_name ='chethan' and account_id =1;

update accounts  set contact_number=9632027324 where account_holder_name ='chethan' and account_id =1;

update accounts set contact_address='laggere bengaluru' where account_id= 1 and date_of_birth ='2003-08-17'; 

-- update using or operator

update accounts set account_type= 'Current' where account_id=4 or date_of_birth = '2003-08-17';

update accounts set date_of_birth = '2003-08-17' where account_holder_name= 'vikas reddy' or account_holder_name ='ananya rao';

update accounts set contact_address = 'laggere' where account_id= 6 or account_holder_name ='Sneha kapoor';

-- update using in operator

update accounts set account_type ='saving' where account_id in(1,3,4,16);

update accounts set branch_name ='Laggere' where account_holder_name in('chethan','sneha kapoor','amit kumar');

update accounts set account_type ='Cuurent Acc' where account_holder_name in('chethan','sneha kapoor','amit kumar');

-- update using not in operator

update accounts set account_type ='salaried ACC' where account_type not in('Savings','Cuurent ACC');

update accounts set bank_name ='SBI' where account_id not in(1);
-- update using between operator

select * from accounts;

update accounts set bank_name = 'CANARA' where account_id between 1 and 6;

update accounts set bank_name ='KOTAK' where account_holder_name between 'a' and 'l';

update accounts set branch_name ='RAJAJI NAGAR' where branch_name between 'a' and 'l';

-- aggregate function

select count(account_type) from accounts where account_type ='Savings';

select count(account_type) from accounts where account_type ='Current';
select count(account_type) from accounts where account_type ='Cuurent Acc';
