<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "orders";

$conn = new mysqli($servername, $username, $password, $dbname, 4306);

if ($conn->connect_error) {
    die("Lidhja me bazen e te dhenave deshtoi: " . $conn->connect_error);
}

$username = $_POST['username'];
$email = $_POST['email'];
$porosia_id = $_POST['porosia_id'];
$sasia = $_POST['sasia'];


$sql = "INSERT INTO porosite (username, email, porosia_id, sasia) VALUES ('$username', '$email', '$porosia_id','$sasia')";

if ($conn->query($sql) === TRUE) {
    header("Location: purchase.html.");
    exit();
} else {
    echo "Gabim gjate ruajtjes se te dhenave: " . $conn->error;
}

$conn->close();
?>
