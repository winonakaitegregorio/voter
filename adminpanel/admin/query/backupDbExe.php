<?php
session_start();
include '../../../db_connection.php'; // Connect to the database

// Backup function
function Export_Database($host, $user, $pass, $name, $tables = false, $backupDir)
{
    $response = array(); // Initialize response array

    $mysqli = new mysqli($host, $user, $pass, $name);
    $mysqli->select_db($name);
    $mysqli->query("SET NAMES 'utf8'");

    // Fetch tables
    $queryTables = $mysqli->query('SHOW TABLES');
    while ($row = $queryTables->fetch_row()) {
        $target_tables[] = $row[0];
    }
    if ($tables !== false) {
        $target_tables = array_intersect($target_tables, $tables);
    }

    $content = ""; // Initialize backup content

    // Loop through tables
    foreach ($target_tables as $table) {
        $result = $mysqli->query('SELECT * FROM ' . $table);
        $fields_amount = $result->field_count;
        $rows_num = $mysqli->affected_rows;
        $res = $mysqli->query('SHOW CREATE TABLE ' . $table);
        $TableMLine = $res->fetch_row();
        $content .= "\n\n" . $TableMLine[1] . ";\n\n";

        for ($i = 0, $st_counter = 0; $i < $fields_amount; $i++, $st_counter = 0) {
            while ($row = $result->fetch_row()) {
                if ($st_counter % 100 == 0 || $st_counter == 0) {
                    $content .= "\nINSERT INTO " . $table . " VALUES";
                }
                $content .= "\n(";
                for ($j = 0; $j < $fields_amount; $j++) {
                    $row[$j] = str_replace("\n", "\\n", addslashes($row[$j]));
                    $content .= isset($row[$j]) ? '"' . $row[$j] . '"' : '""';
                    if ($j < ($fields_amount - 1)) {
                        $content .= ',';
                    }
                }
                $content .= ")";
                if ((($st_counter + 1) % 100 == 0 && $st_counter != 0) || $st_counter + 1 == $rows_num) {
                    $content .= ";";
                } else {
                    $content .= ",";
                }
                $st_counter = $st_counter + 1;
            }
        }
        $content .= "\n\n\n";
    }

    // Save backup file
    $backup_name = $name . ".sql";
    $handle = fopen($backupDir . $backup_name, 'w+');
    fwrite($handle, $content);
    fclose($handle);

    // Log activity after successful backup
    if (isset($_SESSION['admin']['user_id'])) {
        $userId = $_SESSION['admin']['user_id'];
        $activityType = "Backup Database";
        $activityDetails = "backed up the database.";

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
    $mysqli->close();
}

// Define backup parameters
$mysqlUserName = 'root';
$mysqlPassword = '';
$mysqlHostName = 'localhost';
$DbName = 'barangay_system';
$backupDir = './../databasebackup/';

Export_Database($mysqlHostName, $mysqlUserName, $mysqlPassword, $DbName, $tables = false, $backupDir);
?>