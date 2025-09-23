Create table movies(id int , movie_name varchar(20),
hero_name varchar(20),rating varchar(20),
 ticket_price decimal(6,2)); 
desc movies;
alter table movies modify id int primary key;

alter table movies modify movie_name varchar(20) not null,modify hero_name varchar(20) not null;

alter table movies modify ticket_price decimal(6,2) constraint chk_tik_price check(ticket_price >100 and ticket_price <200);
alter table movies modify movie_name varchar(20);

INSERT INTO movies (id, movie_name, hero_name, rating, ticket_price) VALUES
(1, 'KGF',        'Yash',       '9/10', 150.00),
(2, 'RRR',        'NTR',        '8.8/10', 120.00),
(3, 'Pushpa',     'Allu Arjun', '8.5/10', 180.00),
(4, 'Baahubali',  'Prabhas',    '9.2/10', 150.00),
(5, 'Leo',        'Vijay',      '7.9/10', 170.00),
(6, 'Jawan',      'Shahrukh',   '8.0/10', 120.00),
(7, 'Vikram',     'Kamal',      '8.7/10', 120.00),
(8, 'Kantara',    'Rishab',     '9.0/10', 120.00),
(9, '3 Idiots',   'Aamir',      '9.1/10', 120.00),
(10,'Dangal',     'Aamir',      '9.4/10', 150.00);
select * from movies;