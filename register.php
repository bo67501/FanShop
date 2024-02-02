
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="style.css">
    <style>
    a.button {
      display: inline-block;
      padding: 10px 20px;
      font-size: 16px;
      text-align: center;
      text-decoration: none;
      cursor: pointer;
      border: 1px solid #162938; 
      border-radius: 5px; 
      background-color: #162938; 
      color: white; 
    }
    
  </style>
</head>
<body>

<?php
require_once("dbconfig.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];
    $role = $_POST["role"];

    $query = "INSERT INTO users (username, password, role) VALUES ('$username', '$password', '$role')";
    $result = mysqli_query($conn, $query);

    if ($result) {
        echo "Regjistrimi u krye me sukses. </br>";
        echo "<a href='login.php' class='button'>Login</a>";

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
        <p>Create your account:</p>
    </div>


    <div class="wrapper">
        <div class="form-box login">
            <h2>Create Account</h2>
            <form id="userForm" action="register.php" method="post" onsubmit="return validateForm()">
                <div class="input-box">
                    <input type="text"  name="username" id="name"placeholder="Username" >
                    <label>   <span id="usernameError" class="error"></span></label>
                </div>
                <div class="input-box">
                    <input type="password" name="password" id="password" placeholder="Password">
                    <label><span id="passwordError" class="error"></span></label>
                    
                </div>

                <label for="role" >Role:</label>
                <select name="role" >
                <option value="admin">Admin</option>
                <option value="user" >User</option>
                </select>
                <button type="submit" value="Submit" id="submit-btn"style="margin-top: 40px;" >Register</button>

            </form>
        </div>
 
    </div><br><br>
</div>

    

    <footer>
        <p>&copy; 2023 Manchester City Fanshop. All rights reserved.</p>
    </footer>

    <script src="register.js"></script>


</body>
</html>
