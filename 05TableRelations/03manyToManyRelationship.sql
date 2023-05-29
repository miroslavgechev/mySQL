CREATE DATABASE students;

USE students;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE exams (
    exam_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
)  AUTO_INCREMENT=101;

CREATE TABLE students_exams (
    student_id INT,
    exam_id INT,
    CONSTRAINT pk_students_exams PRIMARY KEY (student_id , exam_id),
    CONSTRAINT fk_students_exams_students FOREIGN KEY (student_id)
        REFERENCES students (student_id),
    CONSTRAINT fk_students_exams_exams FOREIGN KEY (exam_id)
        REFERENCES exams (exam_id)
);

INSERT INTO students (name) values
('Mila'),
('Toni'),
('Ron');

INSERT INTO exams (name) values
('Spring MVC'),
('Neo4j'),
('Oracle 11g');

INSERT INTO students_exams values 
(1, 101),
(1, 102),
(2, 101),
(3, 103),
(2, 102),
(2, 103);


