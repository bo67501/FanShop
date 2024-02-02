<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <?php
session_start();
require_once("dbconfig.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
    $result = mysqli_query($conn, $query);

    if ($result) {
        if (mysqli_num_rows($result) == 1) {
            $row = mysqli_fetch_assoc($result);
            $_SESSION["role"] = $row["role"];
            $_SESSION["username"] = $row["username"];
            header("Location: dashboard.php");
            exit();
        } else {
            echo "Te dhenat nuk jane te sakta.";
        }
    } else {
        echo "Gabim ne lidhjen me bazen e te dhenave: " . mysqli_error($conn);
    }

    mysqli_close($conn);
}
?>

    <div class="Logo">
        <img src="Fotot/1503438228manchester-city-fc-logo-png.png" alt="Manchester-City-Logo">
        <br>
        <h1>Welcome!</h1>
        <p>Log in or create your account:</p>
    </div>


    <div class="wrapper">
        <div class="form-box login">
            <h2>Log in</h2>
            <form action="login.php" id="userForm" method="post" onsubmit="return validateForm()">
                <div class="input-box">
                    <input type="text"  name="username" id="name"placeholder="Username" >
                    <label>   <span id="nameError" class="error"></span></label>
                </div>
            
                <div class="input-box">
                    <input type="password" for="password" name="password" id="password" placeholder="Password">
                    <label><span id="passwordError" class="error"></span></label>
                    
                </div>

                <div>
                    <p>Don't have an account? <a href="register.php">Register Now</a></p>
                </div>

                <button type="submit" value="Submit" id="submit-btn">Login</button>
            </form>
        </div>
 
    </div><br><br>
 
    </div>
</div>



    <footer>
        <p>&copy; 2023 Manchester City Fanshop. All rights reserved.</p>
    </footer>

    <script src="login.js"></script>


</body>
</html>
