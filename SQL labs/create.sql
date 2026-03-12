
DROP SCHEMA lab_mysql;
CREATE SCHEMA IF NOT EXISTS lab_mysql;
USE lab_mysql;
CREATE TABLE lab_mysql.Cars (
	VIN INT,
    manufacturer VARCHAR(20),
    model VARCHAR(10),
    year INT,
    colour ENUM('black', 'white', 'red'));
    CREATE TABLE lab_mysql.Customers (
	customer_Id INT,
    phone_number INT,
    email VARCHAR(20),
    address VARCHAR(20),
    city VARCHAR(10),
    state VARCHAR(20),
    country VARCHAR(20),
    zip_code CHAR(4));
	CREATE TABLE lab_mysql.Salespersons (
	Staff_Id INT,
    name_staff VARCHAR(20),
    store VARCHAR(20));
     CREATE TABLE lab_mysql.Invoices (
	invoice_number INT,
    date VARCHAR(20),
    car VARCHAR(20),
    customer VARCHAR(20),
    salesperson VARCHAR(10));
    SHOW COLUMNS FROM cars;
    ALTER TABLE cars
MODIFY VIN VARCHAR(20);
ALTER TABLE cars
MODIFY colour VARCHAR(20);
ALTER TABLE cars
MODIFY model VARCHAR(30);
INSERT INTO cars (VIN, manufacturer, model, year, colour)
VALUES
('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');
DESCRIBE cars;
ALTER TABLE customers
ADD name VARCHAR(50);
ALTER TABLE customers
MODIFY phone_number VARCHAR(20);
ALTER TABLE customers
MODIFY address VARCHAR(70);

INSERT INTO customers 
( customer_id, name,phone_number,email,address,city,state,country,zip_code)
VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '2804'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '3313'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '7500');
INSERT INTO salespersons (staff_id, name_staff, store)
VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Mimia'),
('00006', 'Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'São Paulo');
    
INSERT INTO invoices (invoice_number, date, car, customer, salesperson)
VALUES
(852399038, '2018-08-22', 1, 1, 3),
(731166526, '2018-12-31', 3, 3, 5),
(271135104, '2019-01-22', 2, 2, 7);
SET SQL_SAFE_UPDATES = 0;
UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';
UPDATE customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';
UPDATE customers
SET email='hello@napoleon.me'
WHERE name='Napoléon Bonaparte';
SET SQL_SAFE_UPDATES = 0;
DELETE FROM cars
WHERE VIN = 'DAM41UDN3CHU2WVF6';
