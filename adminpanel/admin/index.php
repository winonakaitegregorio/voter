<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Barangay Election Admin Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="icon" type="text/css" href="image/logo.png">
    <style>
        /* Page Styling */
        body {
            background-image: url('https://your-image-url.com');
            background-size: cover;
            background-repeat: no-repeat;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-form {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 420px;
            text-align: center;
        }
        .login-form img {
            width: 100px;
            margin-bottom: 20px;
        }
        .login-form h3 {
            font-weight: bold;
            color: #333;
            margin-bottom: 30px;
            font-size: 1.5em;
        }
        .login-form .form-group {
            position: relative;
        }
        .form-control {
            border-radius: 20px;
            padding-left: 40px;
        }
        .login-icon {
            position: absolute;
            top: 10px;
            left: 15px;
            color: #888;
        }
        .btn-primary {
            border-radius: 20px;
            width: 100%;
            font-weight: bold;
            margin-top: 10px;
        }
        /* Loader Styling */
        #loader {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.8);
            z-index: 10;
            justify-content: center;
            align-items: center;
        }
        #loader div {
            border: 6px solid #f3f3f3;
            border-top: 6px solid #3498db;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            animation: spin 1s linear infinite;
        }
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>

<!-- Loader -->
<div id="loader">
    <div></div>
</div>

<?php 
session_start();

// Check if admin or staff is already logged in
if ((isset($_SESSION['admin']['loggedIn']) && $_SESSION['admin']['loggedIn'] == true) || 
    (isset($_SESSION['staff']['loggedIn']) && $_SESSION['staff']['loggedIn'] == true)) {
    header("Location: home.php");
    exit();
}
?>

<div class="login-form">
    <img src="image/logo.png" alt="Barangay Logo">
    <h3><i class="fas fa-vote-yea"></i> Barangay Election Login</h3>
    <form id="loginForm" method="POST">
        <div class="form-group">
            <span class="login-icon"><i class="fas fa-user"></i></span>
            <input type="text" name="username" class="form-control" placeholder="Username" required>
        </div>
        <div class="form-group">
            <span class="login-icon"><i class="fas fa-lock"></i></span>
            <input type="password" name="password" class="form-control" placeholder="Password" required>
        </div>
        <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> Login</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<script>
   $(document).ready(function () {
        $('#loginForm').on('submit', function (e) {
            e.preventDefault();
            $('#loader').show();

            $.ajax({
                url: 'query/loginExe.php',
                type: 'POST',
                data: $(this).serialize(),
                success: function (response) {
                    $('#loader').hide();

                    if (response.trim() === 'success') {
                        Swal.fire({
                            icon: 'success',
                            title: 'Login Successful',
                            text: 'Redirecting to dashboard...',
                            showConfirmButton: false,
                            timer: 1500
                        }).then(() => {
                            window.location.href = 'home.php';
                        });
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Login Failed',
                            text: 'Invalid username or password!'
                        });
                    }
                },
                error: function () {
                    $('#loader').hide();
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Something went wrong!'
                    });
                }
            });
        });
    });
</script>

</body>
</html>
