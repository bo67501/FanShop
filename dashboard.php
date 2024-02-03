<?php
session_start();

$role = $_SESSION["role"];
$username = $_SESSION["username"];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ManCity FanShop</title>
    <link rel="stylesheet" type="text/css" href="dashboard.style.css">

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

</head>
<body>

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




<div class="php-container">
    <?php
    echo "<h2>Hello $username!</h2>";

    if ($role == "admin") {
        echo "<p>You are logged in as an admin.</p></br>";
        echo "<a class='butonat' href='mesazhet.php'>Messages</a>";
        echo "<a class='butonat' href='shtoproduktet.html'>Add Products</a>";
        echo "<a class='butonat' href='purchase.php' >Purchases</a>";
        echo "<a class='butonat' href='historiku.php'>Kits History</a>";
        echo "<a class='butonat' href='historiku_training.php'>Training History</a></br></br></br>";

    } else {
        echo "<p>You are logged in as a regular user.</p></br>";
        echo "<a class='butonat' href='purchase.html'>Purchase Now</a></br></br>";
    }

    echo "<a href='logout.php'>Logout</a>";
    ?>
</div>
    

    <footer>
        <p>&copy; 2023 Manchester City Fanshop. All rights reserved.</p>
    </footer>
   </body>
   </html> 