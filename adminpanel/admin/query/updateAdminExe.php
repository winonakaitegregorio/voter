<?php
session_start();
include '../../../db_connection.php'; // Adjust the path if necessary

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve the posted data
    $adminId = 1; // Admin ID that you want to update (change as needed)
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    
    // Get current admin data from the database
    $query = "SELECT * FROM admin_users WHERE id = :adminId";
    $stmt = $conn->prepare($query);
    $stmt->execute(['adminId' => $adminId]);
    $currentAdmin = $stmt->fetch(PDO::FETCH_ASSOC);

    // Check if any data is being updated
    $updateFields = [];
    if ($username !== $currentAdmin['username']) {
        $updateFields[] = "username = :username";
    }
    if ($email !== $currentAdmin['email']) {
        $updateFields[] = "email = :email";
    }
    if ($password !== $currentAdmin['password']) {
        $updateFields[] = "password = :password";
    }

    // If there are updates, proceed to update the admin account
    if (!empty($updateFields)) {
        try {
            $updateQuery = "UPDATE admin_users SET " . implode(", ", $updateFields) . " WHERE id = :adminId";
            $updateStmt = $conn->prepare($updateQuery);

            // Bind parameters dynamically based on which fields are being updated
            if ($username !== $currentAdmin['username']) {
                $updateStmt->bindParam(':username', $username);
            }
            if ($email !== $currentAdmin['email']) {
                $updateStmt->bindParam(':email', $email);
            }
            if ($password !== $currentAdmin['password']) {
                $updateStmt->bindParam(':password', $password);
            }
            $updateStmt->bindParam(':adminId', $adminId);
            $updateStmt->execute();

            // Log the activity
            $adminId = $_SESSION['admin']['user_id']; // Assuming admin ID is stored in session
            $adminName = $_SESSION['admin']['username']; // Assuming admin username is stored in session
            $activityType = 'Update Admin Account';
            $activityDetails = "$adminName updated the admin account with ID $adminId.";

            // Insert activity log
            $logStmt = $conn->prepare("INSERT INTO activity_log (user_id, activity_type, activity_details, created_at) VALUES (?, ?, ?, NOW())");
            $logStmt->execute([$adminId, $activityType, $activityDetails]);

            // Return success response
            echo json_encode(['status' => 'success']);
        } catch (PDOException $e) {
            // Log the error and return failure response
            echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
        }
    } else {
        // If no changes, return success response with no updates
        echo json_encode(['status' => 'no_changes']);
    }
} else {
    echo json_encode(['status' => 'error', 'message' => 'Invalid request method']);
}
?>
