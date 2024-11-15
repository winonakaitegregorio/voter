<?php
session_start();
include '../../../db_connection.php'; // Adjust the path as needed

$mysqlUserName = 'root';
$mysqlPassword = '';
$mysqlHostName = 'localhost';
$DbName = 'barangay_system';
$backupDir = __DIR__ . '/../databasebackup/'; // Adjust directory path as needed

restoreDatabase($mysqlHostName, $mysqlUserName, $mysqlPassword, $DbName, $backupDir);

function restoreDatabase($host, $user, $pass, $name, $backupDir)
{
    $response = array(); // Initialize response array

    // Create connection
    $mysqli = new mysqli($host, $user, $pass, $name);

    // Check connection
    if ($mysqli->connect_error) {
        $response['res'] = 'error';
        $response['error'] = 'Connection failed: ' . $mysqli->connect_error;
        echo json_encode($response);
        return;
    }

    // Disable foreign key checks
    $mysqli->query('SET FOREIGN_KEY_CHECKS = 0');

    // Get backup file name
    $backupFile = $backupDir . $name . ".sql";

    // Check if backup file exists
    if (!file_exists($backupFile)) {
        $response['res'] = 'error';
        $response['error'] = "Backup file not found: $backupFile";
        echo json_encode($response);
        return;
    }

    // Read the backup file
    $sql = file_get_contents($backupFile);

    // Separate SQL statements
    $sqlStatements = explode(";", $sql);

    // Execute each SQL statement
    foreach ($sqlStatements as $stmt) {
        $stmt = trim($stmt); // Trim any whitespace
        if (!empty($stmt)) {
            if (strpos($stmt, 'CREATE TABLE') !== false) {
                $tableName = getTableName($stmt);
                $mysqli->query("DROP TABLE IF EXISTS `$tableName`");
                if (!$mysqli->query($stmt)) {
                    $response['res'] = 'error';
                    $response['error'] = 'Error restoring database: ' . $mysqli->error;
                    echo json_encode($response);
                    return;
                }
            } else {
                if (!$mysqli->query($stmt)) {
                    $response['res'] = 'error';
                    $response['error'] = 'Error restoring database: ' . $mysqli->error;
                    echo json_encode($response);
                    return;
                }
            }
        }
    }

    // Log activity after successful restore
    if (isset($_SESSION['admin']['user_id'])) {
        $userId = $_SESSION['admin']['user_id'];
        $activityType = "Restore Database";
        $activityDetails = "User restored the database.";

        // Prepare and execute SQL statement to log activity
        $logStmt = $mysqli->prepare("INSERT INTO activity_log (user_id, activity_type, activity_details, created_at) VALUES (?, ?, ?, NOW())");
        $logStmt->bind_param("iss", $userId, $activityType, $activityDetails);
        if ($logStmt->execute()) {
            $response['res'] = 'success';
        } else {
            $response['res'] = 'error';
            $response['error'] = 'Error logging activity: ' . $mysqli->error;
        }
    } else {
        $response['res'] = 'error';
        $response['error'] = 'Session user not set';
    }

    echo json_encode($response);

    // Enable foreign key checks
    $mysqli->query('SET FOREIGN_KEY_CHECKS = 1');

    // Close connection
    $mysqli->close();
}

// Function to get table name from CREATE TABLE statement
function getTableName($stmt)
{
    preg_match('/CREATE TABLE `(\S+)`/', $stmt, $matches);
    return $matches[1];
}
