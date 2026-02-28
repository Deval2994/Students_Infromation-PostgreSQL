/*
Deval Patel
02_create_students_table.sql
11 october 2024
*/

-- Script to create students table

-- it will drop the table if it exists.
DROP TABLE IF EXISTS students;
-- it will drop the sequence if exists.
DROP SEQUENCE IF EXISTS students_id_seq;

-- it will create the sequence.
CREATE SEQUENCE students_id_seq START 100900000;

-- it will create table for students.
CREATE TABLE students(
    student_id INT PRIMARY KEY DEFAULT nextval('students_id_seq'),
    user_id INT,
    program_code VARCHAR(25),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

INSERT INTO students(student_id,user_id,program_code)
                VALUES
                (nextval('students_id_seq'), 100900001, 'CPGA'), 
                (nextval('students_id_seq'), 100900002, 'CPGM'), 
                (nextval('students_id_seq'), 100900003, 'CPGA'),
                (nextval('students_id_seq'), 100900004, 'CPGM'),
                (nextval('students_id_seq'), 100900005, 'CPGA'),
                (nextval('students_id_seq'), 100900006, 'CPGM'),
                (nextval('students_id_seq'), 100900007, 'CPGA'),   
                (nextval('students_id_seq'), 100900008, 'CPGM'),
                (nextval('students_id_seq'), 100900009, 'CPGA'),  
                (nextval('students_id_seq'), 100900010, 'CPGM'),
               
               -- Continue inserting data for the rest of the users
                (nextval('students_id_seq'), 100900011, 'CPGA'),  
                (nextval('students_id_seq'), 100900012, 'CPGM'),
                (nextval('students_id_seq'), 100900013, 'CPGA'),
                (nextval('students_id_seq'), 100900014, 'CPGM'),
                (nextval('students_id_seq'), 100900015, 'CPGA'),
                (nextval('students_id_seq'), 100900016, 'CPGM'),
                (nextval('students_id_seq'), 100900017, 'CPGA'),
                (nextval('students_id_seq'), 100900018, 'CPGM'),
                (nextval('students_id_seq'), 100900019, 'CPGA'),
                (nextval('students_id_seq'), 100900020, 'CPGM'),

               -- Remaining users and their respective programs
                (nextval('students_id_seq'), 100900021, 'CPGA'),
                (nextval('students_id_seq'), 100900022, 'CPGM'),
                (nextval('students_id_seq'), 100900023, 'CPGA'),
                (nextval('students_id_seq'), 100900024, 'CPGM'),
                (nextval('students_id_seq'), 100900025, 'CPGA'),
                (nextval('students_id_seq'), 100900026, 'CPGM'),
                (nextval('students_id_seq'), 100900027, 'CPGA'),
                (nextval('students_id_seq'), 100900028, 'CPGM'),
                (nextval('students_id_seq'), 100900029, 'CPGA'),
                (nextval('students_id_seq'), 100900030, 'CPGM'),

                (nextval('students_id_seq'), 100900031, 'CPGA'),
                (nextval('students_id_seq'), 100900032, 'CPGM'),
                (nextval('students_id_seq'), 100900033, 'CPGA'),
                (nextval('students_id_seq'), 100900034, 'CPGM'),
                (nextval('students_id_seq'), 100900035, 'CPGA'),
                (nextval('students_id_seq'), 100900036, 'CPGA'),  
                (nextval('students_id_seq'), 100900037, 'CPGM'),  
                (nextval('students_id_seq'), 100900038, 'CPGA'),
                (nextval('students_id_seq'), 100900039, 'CPGM'),
                (nextval('students_id_seq'), 100900040, 'CPGA'),
                (nextval('students_id_seq'), 100900041, 'CPGM'),
                (nextval('students_id_seq'), 100900042, 'CPGA'),   
                (nextval('students_id_seq'), 100900043, 'CPGM'),
                (nextval('students_id_seq'), 100900044, 'CPGA'),  
                (nextval('students_id_seq'), 100900045, 'CPGM'),
                (nextval('students_id_seq'), 100900046, 'CPGA'),  
                (nextval('students_id_seq'), 100900047, 'CPGM'),
                (nextval('students_id_seq'), 100900048, 'CPGA'),
                (nextval('students_id_seq'), 100900049, 'CPGM'),
                (nextval('students_id_seq'), 100900050, 'CPGA');

SELECT * FROM students;