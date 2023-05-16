create database car_rental;

use car_rental;

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category INT,
    daily_rate DOUBLE(6 , 2 ) NOT NULL,
    weekly_rate DOUBLE(7 , 2 ),
    monthly_rate DOUBLE(8 , 2 ),
    weekend_rate DOUBLE(6 , 2 )
);

INSERT INTO categories (daily_rate) VALUES 
(99.9),
(110),
(560);

CREATE TABLE cars (
    id INT PRIMARY KEY AUTO_INCREMENT,
    plate_number VARCHAR(10) UNIQUE NOT NULL,
    make VARCHAR(20),
    model VARCHAR(20),
    car_year YEAR,
    category_id INT NOT NULL,
    doors INT,
    picture BLOB,
    car_condition VARCHAR(20),
    available BOOLEAN
);

INSERT INTO cars (plate_number, category_id) VALUES
('CB4451AX', 2),
('OB4444AP', 3),
('CB5544CB', 1);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    title VARCHAR(30),
    notes TEXT
);

INSERT INTO employees(first_name, last_name) VALUES 
('Ivan', 'Ivanov'),
('Ivaylo', 'Kenov'),
('Viktor', 'Kostadinov');

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    driver_licence_number VARCHAR(20) UNIQUE NOT NULL,
    full_name VARCHAR(60) NOT NULL,
    address VARCHAR(30),
    city VARCHAR(20),
    zip_code VARCHAR(10),
    notes TEXT
);

INSERT INTO customers(driver_licence_number, full_name) VALUES
('ABC123', 'Petar Petrov'),
('CBA321', 'Ivaylo Ivaylov'),
('AAA222', 'Stefan Stefanov');

CREATE TABLE rental_orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT NOT NULL,
    customer_id INT NOT NULL,
    car_id INT NOT NULL,
    car_condition VARCHAR(20),
    tank_level VARCHAR(10),
    kilometrage_start INT NOT NULL,
    kilometrage_end INT NOT NULL,
    total_kilometrage INT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_days INT,
    rate_applied DOUBLE(8 , 2 ),
    tax_rate DOUBLE(5 , 2 ),
    order_status VARCHAR(10),
    notes TEXT
);

INSERT INTO rental_orders(employee_id, customer_id, car_id, kilometrage_start, kilometrage_end, start_date, end_date) VALUES
(1, 1, 1, 100, 1000, '2022-10-10', '2022-10-20'),
(2, 2, 2, 200, 2000, '2023-10-10', '2023-10-20'),
(3, 3, 3, 300, 1000, '2022-10-10', '2023-10-20');