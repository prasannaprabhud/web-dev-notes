CREATE TABLE bikes (
id integer primary key,
name text,
price integer,
stock integer,
sold integer
);

INSERT INTO bikes values (1, "yamaha", 30000, 12, 5);
INSERT INTO bikes values (2, "pulsar", 25000, 13, 13);
INSERT INTO bikes values (3, "ktm", 6000, 12, 5);
INSERT INTO bikes values (4, "honda", 20000, 3, 11);
INSERT INTO bikes values (5, "bmw", 9000, 2, 5);

select * from bikes order by price; 

select sum(sold) from bikes;
