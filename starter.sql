-- 1

-- CREATE DATABASE university;
-- CREATE SCHEMA university;

DROP TABLE students;

SELECT * FROM students;

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    date_of_birth DATE,
    email TEXT UNIQUE
);

INSERT INTO students(first_name, last_name, date_of_birth, email)
VALUES ('John', 'Doe', '1990-01-15', 'john.doe@example.com')
       ('Jane', 'Smith', '1992-05-20' ,'jane.smith@example.com'),
       ('Michael', 'Johnson', '1991-09-10', 'michael.johnson@example.com'),
       ('Emily', 'Davis','1993-03-25', 'emily.davis@example.com');


