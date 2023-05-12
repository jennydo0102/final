DROP TABLE IF EXISTS evehicle;

CREATE TABLE evehicle (
	vid VARCHAR(10) PRIMARY KEY,
	vin VARCHAR(20),
	city VARCHAR(30),
	postal_code CHAR(5),
	model_year VARCHAR(4),
	make VARCHAR(20),
	model VARCHAR(20),
	ev_type VARCHAR(100),
	electric_range INTEGER,
	base_msrp INTEGER,
	purchase_date DATE
);

INSERT INTO evehicle (vid, vin, city, postal_code, model_year, make, model, ev_type, electric_range, base_msrp, purchase_date) VALUES 
('10001','5YJXCAE26J','Yakima','98908','2018','TESLA','MODEL X','Battery Electric Vehicle (BEV)',238,NULL,'2018-03-01'),
('10002','JHMZC5F37M','Poulsbo','98370','2021','HONDA','CLARITY','Plug-in Hybrid Electric Vehicle (PHEV)',47,34995,'2021-04-15'),
('10003','WMEFJ9BA6H','Arlington','98223','2017','SMART','FORTWO','Battery Electric Vehicle (BEV)',58,15575,'2017-05-05'),
('10004','1G1FX6S0XH','Leavenworth','98826','2017','CHEVROLET','BOLT EV','Battery Electric Vehicle (BEV)',238,37495,'2017-07-07'),
('10005','5YJ3E1EB0K','Seattle','98199','2019','TESLA','MODEL 3','Battery Electric Vehicle (BEV)',220,35000,'2019-09-09'),
('10006','1N4AZ0CP5D','Seattle','98119','2013','NISSAN','LEAF','Battery Electric Vehicle (BEV)',75,34840,'2013-01-30'),
('10007','WAUUPBFF5H','Everett','98203','2017','AUDI','A3','Plug-in Hybrid Electric Vehicle (PHEV)',16,35200,'2017-06-06'),
('10008','WBY1Z4C57F','Pullman','99163','2015','BMW','I3','Plug-in Hybrid Electric Vehicle (PHEV)',72,43350,'2015-05-18'),
('10009','1C4JJXR66P','Pullman','99163','2023','JEEP','WRANGLER','Plug-in Hybrid Electric Vehicle (PHEV)',21,31195,'2023-03-01'),
('10010','3FA6P0PU1G','Tumwater','98501','2016','FORD','FUSION','Plug-in Hybrid Electric Vehicle (PHEV)',19,NULL,'2016-06-06'),
('10011','WA1F2AFY8P','Lacey','98516','2023','AUDI','Q5 E','Plug-in Hybrid Electric Vehicle (PHEV)',23,NULL,NULL),
('10012','1FADP5CU0E','Rochester','98579','2014','FORD','C-MAX','Plug-in Hybrid Electric Vehicle (PHEV)',19,26000,'2014-04-04'),
('10013','KNDCM3LD8L','Bainbridge Island','98110','2020','KIA','NIRO','Plug-in Hybrid Electric Vehicle (PHEV)',26,24590,NULL),
('10014','YV4BR0DL7N','Mount Vernon','98274','2022','VOLVO','XC60','Plug-in Hybrid Electric Vehicle (PHEV)',18,52900,'2022-02-02'),
('10015','JTDKARFP5L','Lake Stevens','98258','2020','TOYOTA','PRIUS PRIME','Plug-in Hybrid Electric Vehicle (PHEV)',25,28895,'2018-03-01');


Modify the ejs code below or using index js code so that when user enter the starting number, ending 
number, and divisible by number and hit the Calculate button, it calculate the sum by the example below:
Example 1

Starting Number = 1.

Ending Number = 13.

Divisible by = 3.

The sum is 30 (3 + 6 + 9 + 12).--> Display message

Please create a function and using loop.