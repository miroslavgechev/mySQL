CREATE TABLE people (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    picture BLOB,
    height DOUBLE(3 , 2 ),
    weight DOUBLE(5 , 2 ),
    gender CHAR(1) NOT NULL,
    birthdate DATE NOT NULL,
    biography TEXT
);

INSERT INTO people (id, name, gender, birthdate) 
VALUES (1, 'Name1', 'm', '1989-07-29'),
(2, 'Name2', 'm', '1998-06-17'),
(3, 'Name3', 'm', '1959-11-10'),
(4, 'Name4', 'm', '1965-07-07'),
(5, 'Name5', 'm', '2009-11-29');