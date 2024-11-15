<?php
session_start();
include '../../../db_connection.php'; // Connect to the database

// Check if the user is logged in
if (isset($_SESSION['admin']['loggedIn']) && $_SESSION['admin']['loggedIn'] === true) {
    // Fetch session details
    $userId = $_SESSION['admin']['user_id'];
    $userName = $_SESSION['admin']['username'];
    $userRole = $_SESSION['admin']['role'];
    
    // Set activity type and details for the logout action
    $activityType = 'Logout';
    $activityDetails = 'User ' . $userName . ' logged out successfully as ' . $userRole . '.';

    // Insert activity log into the activity_log table
    $logStmt = $conn->prepare("INSERT INTO activity_log (user_id, activity_type, activity_details, created_at) VALUES (?, ?, ?, NOW())");
    if ($logStmt->execute([$userId, $activityType, $activityDetails])) {
        // Unset session variables and destroy session
        session_unset();
        session_destroy();
        echo 'success';  // Return success response
    } else {
        echo 'error';  // Database error occurred
    }
} else {
    echo 'not_logged_in';  // No active session
}
?>
