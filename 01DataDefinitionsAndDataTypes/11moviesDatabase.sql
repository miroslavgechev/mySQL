CREATE DATABASE movies;

USE movies;

CREATE TABLE directors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(50) NOT NULL,
    notes TEXT
);

INSERT INTO directors (director_name) VALUES
('director1'),
('director2'),
('director3'),
('director4'),
('director5');

CREATE TABLE genres (
    id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(50) NOT NULL,
    notes TEXT
);

INSERT INTO genres (genre_name) VALUES 
('genre1'),
('genre2'),
('genre3'),
('genre4'),
('genre5');

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL,
    notes TEXT
);

INSERT INTO categories (category_name) VALUES
('category1'),
('category2'),
('category3'),
('category4'),
('category5');

CREATE TABLE movies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    director_id INT,
    copyright_year YEAR,
    length TIME,
    genre_id INT,
    category_id INT,
    rating DOUBLE(3 , 2 ),
    notes TEXT
);

INSERT INTO movies (title, director_id, genre_id, category_id) VALUES
('title1', 1, 1, 2),
('title2', 1, 2, 3),
('title3', 2, 3, 4),
('title4', 3, 4, 5),
('title5', 4, 2, 1);