<?php
// login.php
session_start(); // Start the session
require_once 'includes/header.php';
require_once 'includes/functions.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $user_id = trim($_POST['user_id']);
    $password = trim($_POST['password']);
    
    // Fetch user data
    $user_result = get_user_by_id($user_id);
    if ($user = pg_fetch_assoc($user_result)) {
        // Check if password is valid
        if (password_verify($password, $user['password'])) {
            $_SESSION['user'] = $user; // Set session
            update_last_access($user['user_id']); // Update last access time
            log_activity("User $user_id logged in successfully");
            header("Location: grades.php");
            exit;
        } else {
            log_activity("User $user_id failed login attempt");
            $error = "Invalid credentials";
        }
    } else {
        $error = "User not found";
    }
}

    
?>

<!-- HTML Form for Login -->
<div class="container">
    <h2>Login</h2>
    <?php if (isset($error)) { echo "<div class='alert alert-danger'>$error</div>"; } ?>
    <form method="post" action="">
        <div class="mb-3">
            <label for="user_id" class="form-label">Student ID</label>
            <input type="text" name="user_id" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" name="password" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
    </form>
</div>

<?php require_once 'includes/footer.php'; ?>
