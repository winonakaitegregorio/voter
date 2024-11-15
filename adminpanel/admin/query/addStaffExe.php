<?php
session_start();
include '../../../db_connection.php'; // Adjust this path if needed

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = $_POST['name'];
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $role = 'staff'; // Default role for new staff
    $imagePath = '';

    // Check if username or email already exists in admin_users table
    $checkStmt = $conn->prepare("SELECT * FROM admin_users WHERE username = ? OR email = ?");
    $checkStmt->execute([$username, $email]);
    if ($checkStmt->rowCount() > 0) {
        echo json_encode(['res' => 'exist']);
        exit();
    }

    // Image upload handling (if image is provided)
    if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
        $targetDir = "../../../imagestaff/"; // Adjust as needed
        $imageName = basename($_FILES['image']['name']);
        $imagePath = $targetDir . $imageName;

        // Move uploaded image to target directory
        if (!move_uploaded_file($_FILES['image']['tmp_name'], $imagePath)) {
            echo json_encode(['res' => 'error']);
            exit();
        }

        // Save only the folder and file name in the database path
        $imagePath = 'imagestaff/' . $imageName;
    }

    // Insert new staff into admin_users table with default role as "staff"
    try {
        $stmt = $conn->prepare("INSERT INTO admin_users (name, username, email, password, role, image, created_at) VALUES (?, ?, ?, ?, ?, ?, NOW())");
        $stmt->execute([$name, $username, $email, $password, $role, $imagePath]);

        // Log the activity if staff addition was successful
        $adminId = $_SESSION['admin']['user_id']; // Assuming admin's user ID is stored in session
        $adminName = $_SESSION['admin']['username']; // Assuming admin's username is stored in session
        $activityType = 'Add Staff';
        $activityDetails = "$adminName added a new staff named: $name (Role: $role)";

        // Insert activity log entry
        $logStmt = $conn->prepare("INSERT INTO activity_log (user_id, activity_type, activity_details, created_at) VALUES (?, ?, ?, NOW())");
        $logStmt->execute([$adminId, $activityType, $activityDetails]);

        echo json_encode(['res' => 'success']);
    } catch (PDOException $e) {
        // If any error occurs in database operations, log the error and return failure response
        echo json_encode(['res' => 'error', 'error' => $e->getMessage()]);
    }
} else {
    echo json_encode(['res' => 'error']);
}
?>
