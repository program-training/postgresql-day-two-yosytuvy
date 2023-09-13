-- PART 2

-- 1
CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id  INTEGER,
    course_id  INTEGER,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

ALTER TABLE enrollments
ADD CONSTRAINT uniq_enrollment UNIQUE (student_id, course_id);

INSERT INTO enrollments(student_id, course_id)
VALUES (1, 1),
       (2, 1),
       (3, 2),
       (4, 3),
       (1, 3);

-- 2
CREATE TABLE teacherCourse(
    teacherCourse_id SERIAL PRIMARY KEY,
    teacher_id  INTEGER,
    course_id  INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO teacherCourse(teacher_id, course_id)
VALUES (1, 1),
       (2, 2),
       (3, 3);


-- 3
CREATE TABLE grades(
    grade_id SERIAL PRIMARY KEY,
    enrollment_id INTEGER,
    grade INTEGER,

    FOREIGN KEY (enrollment_id) REFERENCES enrollments(enrollment_id)
);

-- DROP TABLE grades;

INSERT INTO grades(enrollment_id, grade)
VALUES (1, 80),
       (2, 97),
       (3, 76),
       (4, 83);
