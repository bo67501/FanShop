function validateForm() {
            var name = document.getElementById("name").value;
            if (!name.match(/^[a-zA-Z ]+$/)) {
                document.getElementById("nameError").innerHTML = "Emri duhet të përmbajë vetëm shkronja dhe hapsira.";
                return false;
            }

            var email = document.getElementById("email").value;
            if (!email.match(/^([A-Za-z0-9_\-.])+@([A-Za-z0-9_\-.])+\.([A-Za-z]{2,4})$/)) {
                document.getElementById("emailError").innerHTML = "Adresa email nuk është valide.";
                return false;
            }

            var password = document.getElementById("password").value;
            if (!password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$/)) {
                document.getElementById("passwordError").innerHTML = "Fjalëkalimi duhet të përmbajë një shkronjë të madhe, një shkronjë të vogël dhe një numër.";
                return false;
            }

            return true;
        }