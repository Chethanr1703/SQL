Create table District ( 
district_id int ,
district_name varchar(20),
state_name varchar(20),
capital_city varchar(20),
population_total bigint,
area_sq_km bigint,
famous_for varchar(20),
major_crop varchar(20),
major_river varchar(20),
no_of_taluk int);
select * from district;

desc district;

ALTER table district rename column capital_city  to tourist_attractive_places ;


INSERT into district values (1,'Mysore','Karnataka','Mysore palace',3001127,6854,'silk & sandalwood','Ragi','Kaveri',7);
insert into district values(2,'Bengaluru','Karnataka','Lalbagh Garden',    9621551, 2196,  'IT Hub', 'Ragi','Arkavathi', 5);
insert into district values(3, 'Belagavi','Karnataka','Gokak Falls', 4779661, 13415, 'Sugar Industry','Sugarcane', 'Ghataprabha', 10);
insert into district values(4, 'Dharwad','Karnataka', 'Unkal Lake',1847023, 4260,'Education Hub','Cotton','Malaprabha', 5);
insert into district values(5,'Udupi','Karnataka', 'Krishna Temple', 1177361, 3880, 'Temples & Cuisine', 'Paddy','Swarnamukhi', 3);
insert into district values(6,'Kodagu','Karnataka', 'Raja Seat',  554762, 4102,  'Coffee Plantations','Coffee','Kaveri', 3);
insert into district values(7, 'Kalaburagi','Karnataka', 'Gulbarga Fort', 2566326, 10951, 'Red Soil', 'Tur Dal','Bhima',  7);
insert into district values(8,'Raichur', 'Karnataka', 'Raichur Fort', 1935184, 6827,  'Thermal Power','Cotton', 'Krishna', 5);
insert into district values(9,'Tumakuru', 'Karnataka', 'Devarayanadurga', 2980000, 10597, 'Coconut',  'Groundnut', 'Jayamangali', 10);
insert into district values(10, 'Chikkamagaluru','Karnataka','Mullayanagiri', 1137000, 7201,  'Coffee',  'Coffee',    'Bhadra',      7);
insert into district values(10, 'Kolar', 'Karnataka', 'Kolar Gold Fields', 1540231, 3966,  'Gold Mining', 'Ragi', 'Palar',  5);
insert into district values(12, 'Mandya', 'Karnataka', 'Brindavan Gardens', 1808680, 4962,  'Sugarcane', 'Sugarcane', 'Kaveri', 7);
insert into district values(13, 'Vijayapura',   'Karnataka', 'Gol Gumbaz',2177331, 10541, 'Heritage Monuments','Jowar', 'Krishna',     7);
insert into district values(14, 'Bidar','Karnataka', 'Bidar Fort',  1703300, 5448,  'Historical Forts',  'Tur Dal',   'Manjra',  5);
insert into district values(15, 'Hassan', 'Karnataka', 'Belur Temples',     1776221, 6814,  'Hoysala Temples',   'Coffee',    'Hemavati',    8);
insert into district values(16, 'Ballari', 'Karnataka', 'Hampi',   2532383, 8447,  'Iron Ore Mining',   'Cotton',  'Tungabhadra', 7);
insert into district values(17, 'Shivamogga','Karnataka', 'Jog Falls',1796228, 8478,  'Areca Nut', 'Arecanut',  'Tunga',  7);
insert into district values(18, 'Davanagere', 'Karnataka', 'Kunduvada Lake', 1946909, 5924,  'Textile Hub','Cotton',    'Tungabhadra', 6);
insert into district values(19, 'Chitradurga',  'Karnataka', 'Chitradurga Fort',  1660378, 8437,  'Fort & Wind Power', 'Groundnut', 'Vedavati',    6);
insert into district values(20, 'Gadag',  'Karnataka', 'Trikuteshwara',1065235, 4656,  'Temples',  'Jowar','Malaprabha',  5);

-- where

select * from district where major_crop='ragi';

select * from district where population_total>'3000000';

select * from district where major_river='kaveri';

select* from district where no_of_taluk =7;

select * from district where area_sq_km>10000;

-- where & and

select * from district where population_total>3000000 and no_of_taluk=7; -- mysore

select * from district where major_crop='sugarcane' and major_river='kaveri';

select district_name , district_id from district where population_total>2500000 and area_sq_km>5000;

select * from district where major_river='krishna' and major_crop='cotton';

select * from district where district_id= 10 and district_name='kolar';


-- or 

select * from district where major_crop= 'ragi' or major_river='palar';

select * from district where area_sq_km>10000 or population_total>3200000;

select * from district where no_of_taluk >7 or population_total>3000000; 

select * from district where no_of_taluk <3 or population_total<3000000; 

select * from district where area_sq_km<3500 or major_river='kaveri';

-- in operator

select * from district where district_id in (1,5,6,7,13,15,19);

select * from district where major_crop in ('ragi','coffee');

select * from district where major_river in ('krishna', 'kaveri','bhadra');

select * from district where no_of_taluk in (3,10);

select * from district where district_id in (1,3,5,7,9,11,13,15,17,19);

-- not in 
select * from district where district_id not in (1,5,6,7,13,15,19);

select * from district where major_crop not in ('ragi','coffee');

select * from district where major_river not in ('krishna', 'kaveri','bhadra');

select * from district where no_of_taluk not in (3,10);

select * from district where district_id not in (1,3,5,7,9,11,13,15,17,19);
-- between

select * from district where area_sq_km between 6500 and 10000;

select * from district where district_id in(5,13,15,20) and district_name between 'b' and 'i'; 

select * from district where population_total between 1000000 and 2500000;

select *from  district where no_of_taluk between 3 and 5;

select * from district where famous_for between 'a' and 'g';

-- not between
select * from district where area_sq_km not between 6500 and 10000;

select * from district where district_id in(5,13,15,20) and district_name not between 'b' and 'i'; 

select * from district where population_total not between 1000000 and 2500000;

select *from  district where no_of_taluk not between 3 and 5;

select * from district where famous_for not between 'a' and 'g';