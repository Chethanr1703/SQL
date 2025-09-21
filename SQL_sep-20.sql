CREATE TABLE wildlife_sanctuaries (
    sanctuary_id INT ,
    sanctuary_name VARCHAR(100),
    state_name VARCHAR(50),
    country VARCHAR(50),
    established_year INT,
    area_sq_km DECIMAL(10,2),
    nearest_city VARCHAR(50),
    major_river VARCHAR(50),
    forest_type VARCHAR(50),
    famous_for_species VARCHAR(100));
    
    insert into wildlife_sanctuaries values (1,  'Bandipur Wildlife Sanctuary', 'Karnataka', 'India', 1974, 874.20,  'Mysuru', 'Kabini', 'Deciduous', 'Tiger, Elephant');
 insert into wildlife_sanctuaries values(2,  'Nagarhole Wildlife Sanctuary',  'Karnataka',     'India', 1955, 643.39,  'Kodagu',     'Kabini',     'Moist Deciduous','Tiger, Leopard');
 insert into wildlife_sanctuaries values(3,  'Bhadra Wildlife Sanctuary','Karnataka','India', 1951, 492.46,  'Chikkamagaluru','Bhadra',  'Tropical Forest','Tiger, Panther');
 insert into wildlife_sanctuaries values(4,  'Dandeli Wildlife Sanctuary','Karnataka','India', 1956, 866.41,  'Dandeli','Kali',       'Evergreen',      'Hornbills, Black Panther');
 insert into wildlife_sanctuaries values(5,  'Cauvery Wildlife Sanctuary','Karnataka','India', 1987, 1027.53, 'Mandya','Cauvery',    'Dry Deciduous',  'Mahseer Fish, Crocodile');
 insert into wildlife_sanctuaries values(6,  'Bannerghatta Sanctuary','Karnataka','India', 1974, 260.51,  'Bengaluru',  'Arkavathi',  'Scrub & Dry',    'Butterflies, Elephant');
 insert into wildlife_sanctuaries values(7,  'Periyar Wildlife Sanctuary','Kerala','India', 1950, 925.00,  'Thekkady','Periyar',    'Evergreen',      'Elephants, Tigers');
 insert into wildlife_sanctuaries values(8,  'Wayanad Wildlife Sanctuary','Kerala','India', 1973, 344.44,  'Kalpetta',   'Kabini',     'Moist Deciduous','Deer, Tiger');
 insert into wildlife_sanctuaries values(9,  'Gir Wildlife Sanctuary','Gujarat','India', 1965, 1412.00, 'Junagadh',   'Hiran',      'Dry Deciduous',  'Asiatic Lion');
 insert into wildlife_sanctuaries values(10, 'Kaziranga Wildlife Sanctuary',  'Assam','India', 1908, 430.00,  'Tezpur',     'Brahmaputra','Grassland',      'One-Horned Rhino');
 insert into wildlife_sanctuaries values(11, 'Manas Wildlife Sanctuary','Assam','India', 1990, 500.00,  'Barpeta',    'Manas','Moist Deciduous','Tiger, Elephant');
 insert into wildlife_sanctuaries values(12, 'Ranthambore Sanctuary','Rajasthan','India', 1980, 392.00,  'Sawai Madhopur','Banas',   'Dry Deciduous',  'Royal Bengal Tiger');
 insert into wildlife_sanctuaries values(13, 'Keoladeo Ghana Sanctuary','Rajasthan','India', 1981, 29.00,   'Bharatpur',  'Gambhir','Wetland','Migratory Birds');
 insert into wildlife_sanctuaries values(14, 'Sundarbans Sanctuary',  'West Bengal',   'India', 1984, 1330.12, 'Canning',    'Ganga','Mangrove','Royal Bengal Tiger');
 insert into wildlife_sanctuaries values(15, 'Jaldapara Sanctuary',  'West Bengal',   'India', 1941, 216.51,  'Alipurduar', 'Torsa','Grassland',      'Indian Rhino');
 insert into wildlife_sanctuaries values(16, 'Simlipal Sanctuary', 'Odisha', 'India', 1980, 2750.00, 'Baripada',   'Budhabalanga','Sal Forest',   'Tiger, Elephant');
 insert into wildlife_sanctuaries values(17, 'Kanha Wildlife Sanctuary', 'Madhya Pradesh','India', 1955, 940.00,  'Mandla','Banjar','Sal & Bamboo',   'Tiger, Barasingha');
 insert into wildlife_sanctuaries values(18, 'Pench Wildlife Sanctuary', 'Madhya Pradesh','India', 1977, 758.00,  'Seoni','Pench','Teak Forest',    'Leopard, Tiger');
 insert into wildlife_sanctuaries values(19, 'Satpura Wildlife Sanctuary','Madhya Pradesh','India', 1981, 524.00,  'Hoshangabad','Denwa','Deciduous',      'Sloth Bear, Tiger');
 insert into wildlife_sanctuaries values(20, 'Dudhwa Wildlife Sanctuary', 'Uttar Pradesh', 'India', 1977, 490.00,  'Lakhimpur',  'Saryu','Terai Grassland','Swamp Deer, Tiger');
    
    alter table wildlife_sanctuaries rename column forest_type to type_of_forest;
    
    select * from wildlife_sanctuaries;
    
    
    -- where
    select * from wildlife_sanctuaries where state_name='karnataka';
    
    select * from wildlife_sanctuaries where major_river = 'kabini';
    
    select * from wildlife_sanctuaries where famous_for_species ='tiger, elephant';
    
    select* from wildlife_sanctuaries where area_sq_km>1000;
    
    select *from wildlife_sanctuaries where type_of_forest = 'deciduous';
    
    -- and operator
    
    select * from wildlife_sanctuaries where area_sq_km>1000 and state_name ='karnataka';
    
    select * from wildlife_sanctuaries where established_year =1980 and area_sq_km >2000;
    
    select * from wildlife_sanctuaries where type_of_forest = 'deciduous' and state_name ='karnataka';
    
    select * from wildlife_sanctuaries where state_name='karnataka' and major_river='kabini';
    
    select * from wildlife_sanctuaries where nearest_city = 'barpeta' and area_sq_km>400;
    
    -- or operator
    select * from wildlife_sanctuaries where famous_for_species ='tiger, elephant'  or famous_for_species='tiger, panther';
    
    select * from wildlife_sanctuaries where state_name ='karnataka' or major_river = 'cauvery' ;
    
    select * from wildlife_sanctuaries where area_sq_km>1000 or established_year>1980;
    
    select * from wildlife_sanctuaries where type_of_forest = 'deciduous' or state_name ='karnataka';
    
    select * from wildlife_sanctuaries where established_year>1980 or state_name = 'madhya pradesh';
    
    -- in operator
    
    select * from wildlife_sanctuaries where sanctuary_id  in (1,5,6,9,15,20);
    
    select * from wildlife_sanctuaries where state_name in ('karnataka','kerala');
    
    select * from wildlife_sanctuaries where nearest_city in ('mysuru' , 'mandya' , 'kodagu');
    
    select *  from wildlife_sanctuaries where major_river in('cauvery','kabini');
    
    select * from wildlife_sanctuaries where established_year in (1990,1980,1955);
    
        -- not in operator
    
    select * from wildlife_sanctuaries where sanctuary_id not in (1,5,6,9,15,20);
    
    select * from wildlife_sanctuaries where state_name  not in ('karnataka','kerala');
    
    select * from wildlife_sanctuaries where nearest_city not in ('mysuru' , 'mandya' , 'kodagu');
    
    select *  from wildlife_sanctuaries where major_river not in('cauvery','kabini');
    
    select * from wildlife_sanctuaries where established_year not in (1990,1980,1955);
    
    -- between
    select * from wildlife_sanctuaries where established_year between 1955 and 1980;
    
    select * from wildlife_sanctuaries where area_sq_km between 1000 and 2000;
    
    select * from wildlife_sanctuaries where state_name between 'a' and 'l';
    
    select * from wildlife_sanctuaries where nearest_city between 'm' and 'z';
    
    select * from wildlife_sanctuaries where sanctuary_id between 5 and 10;
    
    -- not between
    
   
    select * from wildlife_sanctuaries where established_year not between 1955 and 1980;
    
    select * from wildlife_sanctuaries where area_sq_km not between 1000 and 2000;
    
    select * from wildlife_sanctuaries where state_name not between 'a' and 'l';
    
    select * from wildlife_sanctuaries where nearest_city not between 'm' and 'z';
    
    select * from wildlife_sanctuaries where sanctuary_id not between 5 and 10;