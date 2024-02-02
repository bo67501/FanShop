<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "contact_form";

$conn = new mysqli($servername, $username, $password, $dbname, 4306);

if ($conn->connect_error) {
    die("Lidhja me bazen e te dhenave deshtoi: " . $conn->connect_error);
}

$emri = $_POST['emri'];
$email = $_POST['email'];
$mesazhi = $_POST['mesazhi'];

$sql = "INSERT INTO contact_data (emri, email, mesazhi) VALUES ('$emri', '$email', '$mesazhi')";

if ($conn->query($sql) === TRUE) {
    header("Location: contact.html.");
    exit();

} else {
    echo "Gabim gjate ruajtjes se te dhenave: " . $conn->error;
}

$conn->close();
?>
