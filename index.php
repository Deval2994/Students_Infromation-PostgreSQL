<?php
session_start();
include('includes/header.php');
?>

<div class="container">
    <h1>Welcome to the Student Portal</h1>
    <?php
    if (isset($_SESSION['user_id'])) {
        echo "<p>Welcome, " . $_SESSION['first_name'] . "!</p>";
    } else {
        echo "<p>Please <a href='login.php'>login</a> or <a href='register.php'>register</a> to access your information.</p>";
    }
    ?>
</div>

<?php include('includes/footer.php'); ?>
