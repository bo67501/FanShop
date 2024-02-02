function validateForm() {
    var username = document.getElementById("username").value;
    if (username.trim() === "") {
        descriptionError.innerHTML = "Kerkohet Username.";
        document.getElementById("username").classList.add("error");
        return false;
    }


    var password = document.getElementById("password").value;
    if (!password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$/)) {
        document.getElementById("passwordError").innerHTML = "Passwordi duhet te permbaje nje shkronje te madhe dhe nje numer.";
        return false;
    }

    return true;
}