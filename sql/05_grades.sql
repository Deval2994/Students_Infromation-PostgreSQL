/*
Deval Patel
05_grades.sql
11 october 2024
*/


SELECT 
    u.first_name || ' ' || u.last_name AS full_name,
    s.program_code,
    u.email,
    m.final_mark AS marks 
FROM students AS s
JOIN users AS u ON s.user_id = u.user_id
JOIN marks AS m ON s.student_id = m.student_id;