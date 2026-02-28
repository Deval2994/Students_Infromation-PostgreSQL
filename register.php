
<?php
// register.php
require_once 'includes/header.php';
require_once 'includes/functions.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve form data
    $first_name = trim($_POST['first_name']);
    $last_name = trim($_POST['last_name']);
    $email = trim($_POST['email']);
    $password = trim($_POST['password']);
    $confirm_password = trim($_POST['confirm_password']);
    $birth_date = $_POST['birth_date'];
    $program_code = $_POST['program_code'];

    // Validate input data (this can be expanded for better validation)
    if ($password !== $confirm_password) {
        $error = "Passwords do not match";
    } else {
        // Insert new user and student
        $user_id = insert_user($first_name, $last_name, $email, $birth_date, $password);
        insert_student($user_id, $program_code);
        log_activity("User $email registered successfully");
        header("Location: login.php");
        exit;
    }
}

?>

<!-- Registration Form -->
<div class="container">
    <h2>Register</h2>
    <?php if (isset($error)) { echo "<div class='alert alert-danger'>$error</div>"; } ?>
    <form method="post" action="">
        <div class="mb-3">
            <label for="first_name" class="form-label">First Name</label>
            <input type="text" name="first_name" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="last_name" class="form-label">Last Name</label>
            <input type="text" name="last_name" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" name="email" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" name="password" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="confirm_password" class="form-label">Confirm Password</label>
            <input type="password" name="confirm_password" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="birth_date" class="form-label">Birth Date</label>
            <input type="date" name="birth_date" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="program_code" class="form-label">Program</label>
            <select name="program_code" class="form-control" required>
                <option value="CPGA">CPGA</option>
                <option value="CPPG">CPPG</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
</div>

<?php require_once 'includes/footer.php'; ?>
