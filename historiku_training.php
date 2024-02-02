<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Training History</title>
    <link rel="stylesheet" href="historiku.style.css">



</head>
<body>
<style>
        footer {
        background: #34495e;
        color: white;
        text-align: center;
        padding: 10px;
        position: fixed;
        bottom: 0;
        width: 100%;
        margin-top: 10px;
}
    </style>

<div class="Menu">
        <div class="Logo">
            <img src="Fotot/80c1c919-d36f-4347-9289-1f50b46c15ac-removebg-preview.png" alt="Logo">
        </div>
        <div class="Listat">
            <nav>
                <a href="home.html">Home</a>
                <a href="kits.php">Kits</a>
                <a href="training.php">Training</a>
                <a href="aboutus.html">About Us</a>
                <a href="contact.html">Contact Us</a>

            </nav>
        </div>
        <div class="social-icons">
            <a href="dashboard.php"><img src="Fotot/icons8-user-50.png" alt="User"></a>
            <a href="https://www.facebook.com/mancity/"><img src="Fotot/icons8-facebook-24.png" alt="Facebook"></a>
            <a href="https://www.instagram.com/mancity/"><img src="Fotot/icons8-instagram-24.png" alt="Instagram"></a>
            <a href="https://www.youtube.com/mancity"><img src="Fotot/icons8-youtube-logo-24.png" alt="Youtube"></a>
            <a href="https://twitter.com/mancity"><img src="Fotot/icons8-twitterx-24.png" alt="Twitter"></a>
        </div>
    </div>
    <div class="container">
        <h2>Training History</h2>

        <?php
       

        $conn = new mysqli("localhost", "root", "", "ecommerce",4306);

        if ($conn->connect_error) {
            die("Lidhja me bazën e të dhënave dështoi: " . $conn->connect_error);
        }

        $sql = "SELECT * FROM treningu";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<div class='product'>";
                echo "<h3 class='product-title'>" . $row["title"] . "</h3>";
                echo "<img src='" . $row["image"] . "' alt='Foto e produktit'>";
                echo "<div class='product-info'>";
                echo "<p>" . $row["description"] . "</p>";
                echo "<p>Cmimi: $" . $row["price"] . "</p>";
                echo "<p>Autori: " . $row["author"] . "</p>";
                echo "</div>";
                echo "</div>";
            }
        } else {
            echo "<p class='no-products'>Nuk ka produkte për t'u shfaqur.</p>";
        }

        $conn->close();
        ?>
    </div>

    <footer>
        <p>&copy; 2023 Manchester City Fanshop. All rights reserved.</p>
    </footer>
</body>
</html>
