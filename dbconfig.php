<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "login_system";

$conn = new mysqli($servername, $username, $password, $dbname, 4306);

if ($conn->connect_error) {
    die("Lidhja dështoi: " . $conn->connect_error);
}
?>