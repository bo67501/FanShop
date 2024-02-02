<?php
$conn = new mysqli("localhost", "root", "", "ecommerce", 4306);

if ($conn->connect_error) {
    die("Gabim ne lidhjen me databaze: " . $conn->connect_error);
}

$title = $_POST['title'];
$description = $_POST['description'];
$price = $_POST['price'];
$author = $_POST['author'];

$uploadsDirectory = 'uploads/';
if (!file_exists($uploadsDirectory)) {
    mkdir($uploadsDirectory, 0777, true);
}

$image = $uploadsDirectory . basename($_FILES["image"]["name"]);
move_uploaded_file($_FILES["image"]["tmp_name"], $image);

$sql = "INSERT INTO products (title, description, price, image, author) VALUES (?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);

$stmt->bind_param("ssdss", $title, $description, $price, $image, $author);

if ($stmt->execute()) {
    header("Location: kits.php");
    exit();
} else {
    echo "Gabim: " . $sql . "<br>" . $conn->error;
}

$stmt->close();
$conn->close();
?>
