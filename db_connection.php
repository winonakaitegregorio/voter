<?php
$host = "localhost";
$user = "vote_bermvoter";
$pass = "";
$db   = "vote_voters";

try {
    $conn = new PDO("mysql:host={$host};dbname={$db};",$user,$pass);
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

?>

