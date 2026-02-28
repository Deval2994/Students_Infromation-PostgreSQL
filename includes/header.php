<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Dynamic Page Title -->
    <title><?php echo isset($pageTitle) ? $pageTitle : "Default Title"; ?></title>

    <!-- Bootstrap core CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="navbar-top-fixed.css" rel="stylesheet">

    <style>
        /* Adjust navbar height */
        .navbar {
            padding: 0.5rem 1rem; /* Reduce padding to make navbar smaller */
            height: 60px; /* Fixed height */
        }

        /* Ensure the body/content doesn't overlap the navbar */
        body {
            padding-top: 70px; /* Add padding to top of content */
        }
    </style>
  </head>

  <body>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="./index.php">Student portal</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        
        
        <!-- Dynamic links based on login status -->
        <ul class="navbar-nav ml-auto">
          <?php if (isset($_SESSION['user_logged_in']) && $_SESSION['user_logged_in'] === true): ?>
            <!-- User is logged in -->
            <li class="nav-item">
              <a class="nav-link" href="grades.php">Dashboard</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="logout.php">Logout</a>
            </li>
          <?php else: ?>
            <!-- User is not logged in -->
            <li class="nav-item">
              <a class="nav-link" href="login.php">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="register.php">Register</a>
            </li>
          <?php endif; ?>
        </ul>

        
      </div>
    </nav>