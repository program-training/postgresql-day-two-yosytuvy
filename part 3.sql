-- PART 3

-- 1

CREATE TABLE studyGroup(
    studyGroup_id SERIAL PRIMARY KEY,
    group_name TEXT,
    course_id INTEGER,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO studyGroup(group_name, course_id)
VALUES ('sicese is fun', 2),
       ('programming is easy', 1),
       ('previos group', 3);

-- 2
SELECT * FROM students;
SELECT * FROM teachers;
SELECT * FROM courses;
SELECT * FROM enrollments;
SELECT * FROM teacherCourse;
SELECT * FROM grades;
SELECT * FROM studyGroup;

-- 3
-- fix all tables needed