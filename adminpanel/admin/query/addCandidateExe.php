<?php
session_start();
include '../../../db_connection.php'; // Adjust this path if needed

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieving data from the form
    $name = $_POST['candidateName'];
    $position = $_POST['position'];
    $age = $_POST['age'];
    $sex = $_POST['sex'];
    $platform = $_POST['platform'];
    $partyList = $_POST['partyList'];
    $imagePath = '';

    // Check if the candidate already exists in the candidates table
    $checkStmt = $conn->prepare("SELECT * FROM candidates WHERE name = ? AND position = ?");
    $checkStmt->execute([$name, $position]);
    if ($checkStmt->rowCount() > 0) {
        echo json_encode(['res' => 'exist']);
        exit();
    }

    // Image upload handling (if image is provided)
    if (isset($_FILES['candidateImage']) && $_FILES['candidateImage']['error'] == 0) {
        $targetDir = "../../../imagecandidates/"; // Adjust as needed
        $imageName = basename($_FILES['candidateImage']['name']);
        $imagePath = $targetDir . $imageName;

        // Move uploaded image to target directory
        if (!move_uploaded_file($_FILES['candidateImage']['tmp_name'], $imagePath)) {
            echo json_encode(['res' => 'error']);
            exit();
        }

        // Save only the folder and file name in the database path
        $imagePath = 'imagecandidates/' . $imageName;
    }

    // Insert new candidate into candidates table
    try {
        $stmt = $conn->prepare("INSERT INTO candidates (name, position, age, sex, platform, party_list, image, created_at) VALUES (?, ?, ?, ?, ?, ?, ?, NOW())");
        $stmt->execute([$name, $position, $age, $sex, $platform, $partyList, $imagePath]);

        // Log the activity if candidate addition was successful
        $adminId = $_SESSION['admin']['user_id']; // Assuming admin's user ID is stored in session
        $adminName = $_SESSION['admin']['username']; // Assuming admin's username is stored in session
        $activityType = 'Add Candidate';
        $activityDetails = "$adminName added a new candidate: $name (Position: $position)";

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
