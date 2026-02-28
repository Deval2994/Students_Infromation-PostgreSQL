/*
Deval Patel
03_create_courses_table.sql
11 october 2024
*/

-- Script to create courses table.

DROP TABLE IF EXISTS courses CASCADE;

CREATE TABLE courses(
    course_code VARCHAR(25) PRIMARY KEY,
    course_name VARCHAR(155),
    semester INT,
    course_description VARCHAR(255)
);

INSERT INTO courses (course_code, course_name, semester, course_description)
VALUES 
    ('COMM 1100', 'Communication Foundations', 1, 'Learning Communication Foundations'),
    ('COMP 1116', 'Computer Systems - Hardware', 1, 'Computer Systems - Hardware'),
    ('COSC 1100', 'Introduction to Programming', 1, 'Introduction to Programming'),
    ('INFT 1104', 'Data Communications and Networking 1', 1, 'Data Communications and Networking 1'),
    ('INFT 1105', 'Introduction to Databases', 1, 'Introduction to Databases'),
    ('MATH 1114', 'Mathematics for IT', 1, 'Mathematics for IT'),
    
    -- Semester 2 CPA courses
    ('COSC 1200', 'Object-Oriented Programming 1', 2, 'Learning Java'),
    ('GNED 0000', 'General Education Elective', 2, 'General Education Elective'),
    ('INFT 1206', 'Web Development - Fundamentals', 2, 'Web Development - Fundamentals'),
    ('INFT 1207', 'Software Testing and Automation', 2, 'Software Testing and Automation'),
    ('MGMT 1223', 'Systems Development 1', 2, 'Systems Development 1'),
    ('MGMT 1224', 'Business for IT Professionals', 2, 'Business for IT Professionals'),
    
    -- Semester 3 CPA courses
    ('COMM 2109', 'IT Career Essentials', 3, 'IT Career Essentials'),
    ('COSC 2100', 'Object-Oriented Programming 2', 3, 'Object-Oriented Programming 2'),
    ('GNED 0001', 'General Education Elective', 3, 'General Education Elective'),
    ('INFT 2100', 'Web Development Intermediate', 3, 'Web Development Intermediate'),
    ('INFT 2101', 'Database Development 1', 3, 'Database Development 1'),
    ('MGMT 2107', 'Systems Development 2', 3, 'Systems Development 2'),
    
    -- Semester 4 CPA courses
    ('COSC 2200', 'Object-Oriented Programming 3', 4, 'Object-Oriented Programming 3'),
    ('GNED 0002', 'General Education Elective', 4, 'General Education Elective'),
    ('INFT 2200', 'Mainframe Development 1', 4, 'Mainframe Development 1'),
    ('INFT 2201', 'Web Development - Enterprise', 4, 'Web Development - Enterprise'),
    ('INFT 2202', 'Web Development - Client Side Script', 4, 'Web Development - Client Side Script'),
    ('INFT 2203', 'Cloud Technology Fundamentals', 4, 'Cloud Technology Fundamentals'),
    
    -- Semester 5 CPA courses
    ('INFT 3100', 'Mainframe Development 2', 5, 'Mainframe Development 2'),
    ('INFT 3101', 'Mobile Development', 5, 'Mobile Development'),
    ('INFT 3102', 'Web Development - Frameworks', 5, 'Web Development - Frameworks'),
    ('INFT 3103', 'Emerging Technologies', 5, 'Emerging Technologies'),
    ('INFT 3104', 'Cloud Technology for Developers', 5, 'Cloud Technology for Developers'),
    
    -- Semester 6 CPA courses
    ('CPGA 3200', 'Capstone Project', 6, 'Capstone Project'),
    ('CPGA 3201', 'Field Placement', 6, 'Field Placement'),
    ('INFT 3200', 'Cloud Technology Operations', 6, 'Cloud Technology Operations'),
    ('INFT 3201', 'Database Development 2', 6, 'Database Development 2'),
    ('MGMT 3211', 'Cross-Functional Collaboration', 6, 'Cross-Functional Collaboration');

SELECT * FROM courses;