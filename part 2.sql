-- PART 2

-- 1
CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id  INTEGER,
    course_id  INTEGER,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO enrollments(student_id, course_id)
VALUES (1, 1),
       (2, 1),
       (3, 2),
       (4, 3),
       (1, 3);