<?php
session_start();
include '../../../db_connection.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = $_POST['name'] ?? '';
    $address = $_POST['address'] ?? '';
    $birthdate = $_POST['birthdate'] ?? '';
    $imagePath = '';
    $fingerprintData = $_POST['fingerprint_data'] ?? null;

    try {
        $year = date('Y');
        $birthday = date('md', strtotime($birthdate));
        
        // Get registration count for the year
        $countStmt = $conn->prepare("SELECT COUNT(*) FROM voters WHERE YEAR(created_at) = ?");
        $countStmt->execute([$year]);
        $count = $countStmt->fetchColumn() + 1;
        
        // Generate Voter ID
        $voterId = sprintf("%04d-%04d-%s", $year, $count, $birthday);
        
        // Check if voter already exists
        $checkStmt = $conn->prepare("SELECT * FROM voters WHERE name = ? AND birthdate = ?");
        $checkStmt->execute([$name, $birthdate]);
        if ($checkStmt->rowCount() > 0) {
            echo json_encode(['res' => 'exist']);
            exit();
        }

        // Handle image upload
        if (isset($_FILES['voter_image']) && $_FILES['voter_image']['error'] == 0) {
            $targetDir = "../../../imagesvoters/";
            $imageName = basename($_FILES['voter_image']['name']);
            $imagePath = $targetDir . $imageName;

            if (!move_uploaded_file($_FILES['voter_image']['tmp_name'], $imagePath)) {
                echo json_encode(['res' => 'error']);
                exit();
            }
            $imagePath = 'imagesvoters/' . $imageName;
        }

        // Insert voter
        $stmt = $conn->prepare("INSERT INTO voters (voter_id, name, address, birthdate, fingerprint_data, voter_image, created_at) VALUES (?, ?, ?, ?, ?, ?, NOW())");
        $stmt->execute([$voterId, $name, $address, $birthdate, $fingerprintData, $imagePath]);

        // Log activity
        $adminId = $_SESSION['admin']['user_id'] ?? null;
        $adminName = $_SESSION['admin']['username'] ?? 'Unknown Admin';
        $activityType = 'Add Voter';
        $activityDetails = "$adminName added a new voter: $name (Voter ID: $voterId)";

        $logStmt = $conn->prepare("INSERT INTO activity_log (user_id, activity_type, activity_details, created_at) VALUES (?, ?, ?, NOW())");
        $logStmt->execute([$adminId, $activityType, $activityDetails]);

        echo json_encode(['res' => 'success']);
    } catch (PDOException $e) {
        echo json_encode(['res' => 'error', 'error' => $e->getMessage()]);
    }
} else {
    echo json_encode(['res' => 'error']);
}
?>