<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "barangay_system";

try {
    $conn = new PDO("mysql:host={$host};dbname={$db};",$user,$pass);
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

?>

