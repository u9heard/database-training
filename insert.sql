LOAD DATA INFILE 'users.csv' INTO TABLE 
users(name, surname, father_name, DOB, sex);

INSERT INTO color(color) VALUES
("Green"),
("Blue"),
("Red");

INSERT INTO volume(vol) VALUES
(1.6),
(1.4),
(2.0),
(2.5);

INSERT INTO catalog(brand, model, release_date, price) VALUES
("Brand1","Model1","2019-04-10",1107),
("Brand1","Model2","2016-12-12",1356),
("Brand1","Model3","2018-02-19",1027),
("Brand2","Model1","2018-10-30",1878),
("Brand2","Model2","2014-06-18",1260),
("Brand2","Model3","2012-08-30",1676),
("Brand3","Model1","2019-04-13",1696),
("Brand3","Model2","2019-08-05",1394),
("Brand3","Model3","2017-02-28",1891);

INSERT INTO car_color(id_car, id_color) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 3),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(8, 2),
(9, 1);

INSERT INTO car_volume(id_car, id_volume) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 3),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(8, 2),
(9, 1);

LOAD DATA INFILE 'orders.csv' INTO TABLE 
orders(id_user, id_car, id_vol, id_color, date_buy);

