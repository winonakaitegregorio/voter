<?php
session_start();
include '../../../db_connection.php'; // Connect to the database

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Prepare statement using PDO to fetch the user (admin or staff)
    $stmt = $conn->prepare("SELECT * FROM admin_users WHERE username = ?");
    $stmt->execute([$username]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user) {
        // Directly compare passwords (Note: Not recommended to use plain passwords in production)
        if ($password === $user['password']) {
            // Set session variables
            $_SESSION['admin']['loggedIn'] = true;  // Set loggedIn session for admin
            $_SESSION['admin']['user_id'] = $user['id'];
            $_SESSION['admin']['username'] = $user['username'];  // Store the username
            $_SESSION['admin']['role'] = $user['role']; // 'admin' or 'staff'
            
            // Log the activity using the actual name from the database
            $userId = $user['id'];
            $userName = $user['name']; // Use the 'name' field
            $activityType = 'Login'; // Activity type for login
            $activityDetails = 'User ' . $userName . ' logged in successfully as ' . $user['role'] . '.';

            // Insert activity log into the activity_log table
            $logStmt = $conn->prepare("INSERT INTO activity_log (user_id, activity_type, activity_details, created_at) VALUES (?, ?, ?, NOW())");
            $logStmt->execute([$userId, $activityType, $activityDetails]);

            echo 'success';  // Return success response
        } else {
            echo 'error';  // Incorrect password
        }
    } else {
        echo 'error';  // Username not found
    }
}
?>