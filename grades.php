<?php
// grades.php
session_start();

// Database connection setup (PostgreSQL)
$db = pg_connect("host=localhost dbname=pateld2_db user=pateld2 password=1234");
if (!$db) {
    die("Connection failed: " . pg_last_error());
}

require_once 'includes/header.php';
require_once 'includes/functions.php';

if (!isset($_SESSION['user'])) {
    $_SESSION['message'] = "You must log in to view your grades.";
    header("Location: login.php");
    exit;
}

$user = $_SESSION['user'];

// Fetch grades for the logged-in user
$grades_result = get_grades_by_user($user['user_id']); // Pass $user['user_id'] here
?>

<div class="container">
    <h2>Your Grades</h2>
    <p>Welcome, <?php echo $user['first_name'] . " " . $user['last_name']; ?>.</p>
    <table class="table">
        <thead>
            <tr>
                <th>Course Code</th>
                <th>Course Name</th>
                <th>Final Mark</th>
            </tr>
        </thead>
        <tbody>
            <?php
            if ($grades_result) {
                while ($grade = pg_fetch_assoc($grades_result)) {
                    echo "<tr>
                        <td>" . $grade['course_code'] . "</td>
                        <td>" . $grade['course_name'] . "</td>
                        <td>" . $grade['final_mark'] . "</td>
                    </tr>";
                }
            } else {
                echo "<tr><td colspan='3'>No grades available.</td></tr>";
            }
            ?>
        </tbody>
    </table>
</div>

<?php require_once 'includes/footer.php'; ?>
