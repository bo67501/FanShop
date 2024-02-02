<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ManCity FanShop</title>
    <link rel="stylesheet" type="text/css" href="dashboard.style.css">

    <style>
        h2 {
            text-align: center;
            padding-top: 20px;
            padding-bottom: 20px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin: 20px 0;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            color: white;
            background-color: #162938;
        }

        td {
            border: 1px solid #ddd;
        }

        footer {
            background: #34495e;
            color: white;
            text-align: center;
            padding: 10px;
            position: sticky;
            bottom: 0;
        }

        

        @media only screen and (min-width: 768px) {
            table {
                margin: 40px auto;
            }
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
    <h2>Orders</h2>
    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "orders";

    $conn = new mysqli($servername, $username, $password, $dbname, 4306);

    if ($conn->connect_error) {
        die("Lidhja me bazen e te dhenave deshtoi: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM porosite";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table border='1'>";
        echo "<tr><th>ID</th><th>Username</th><th>Email</th><th>ID e Porosise</th><th>Sasia</th></tr>";
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['username'] . "</td>";
            echo "<td>" . $row['email'] . "</td>";
            echo "<td>" . $row['porosia_id'] . "</td>";
            echo "<td>" . $row['sasia'] . "</td>";
            echo "</tr>";
        }
        echo "</table> </br>";

    } else {
        echo "Nuk ka te dhena te disponueshme.";
    }

    $conn->close();
    ?>
    <footer>
    <p>&copy; 2023 Manchester City Fanshop. All rights reserved.</p>
</footer>

</body>
</html>
