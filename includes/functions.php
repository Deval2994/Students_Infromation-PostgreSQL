<?php
// functions.php

// Database connection setup (PostgreSQL)
$db = pg_connect("host=localhost dbname=pateld2_db user=pateld2 password=1234");
if (!$db) {
    die("Connection failed: " . pg_last_error());
}

// Function to prepare statements for fetching user/student data
function get_user_by_id($user_id) {
    global $db;
    $stmt = pg_prepare($db, "get_user", "SELECT * FROM users WHERE user_id = $1");
    return pg_execute($db, "get_user", array($user_id));
}

// Function to update the last access time
function update_last_access($user_id) {
    global $db;
    $stmt = pg_prepare($db, "update_last_access", "UPDATE users SET last_access = NOW() WHERE user_id = $1");
    return pg_execute($db, "update_last_access", array($user_id));
}

// Function to insert a new user
function insert_user($first_name, $last_name, $email, $birth_date, $password) {
    global $db;
    $hashed_password = password_hash($password, PASSWORD_BCRYPT);
    $stmt = pg_prepare($db, "insert_user", "INSERT INTO users (first_name, last_name, email, birth_date, password, created_at) VALUES ($1, $2, $3, $4, $5, NOW()) RETURNING user_id");
    $result = pg_execute($db, "insert_user", array($first_name, $last_name, $email, $birth_date, $hashed_password));
    return pg_fetch_result($result, 0, 'user_id');
}

// Function to insert student info
function insert_student($user_id, $program_code) {
    global $db;
    $stmt = pg_prepare($db, "insert_student", "INSERT INTO students (user_id, program_code) VALUES ($1, $2)");
    return pg_execute($db, "insert_student", array($user_id, $program_code));
}

// Function to fetch grades for a specific user
function get_grades_by_user($user_id) {
    global $db;
    $stmt = pg_prepare($db, "get_grades", "
        SELECT c.course_code, c.course_name, m.final_mark 
        FROM marks m
        JOIN courses c ON m.course_code = c.course_code
        JOIN students s ON m.student_id = s.student_id
        WHERE s.user_id = $1");
    return pg_execute($db, "get_grades", array($user_id));
}

// Logging activity
function log_activity($message) {
    $logfile = 'logs/activity.log';
    $timestamp = date("Y-m-d H:i:s");
    file_put_contents($logfile, "$timestamp - $message\n", FILE_APPEND);
}
?>
