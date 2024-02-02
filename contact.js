function validateForm() {
            var fullname = document.getElementById("fullname").value;
            var email = document.getElementById("email").value;
            var phone = document.getElementById("phone").value;
            var subject = document.getElementById("subject").value;
            var description = document.getElementById("description").value;
            var username = document.getElementById("username").value;
            var porosia_id = document.getElementById("porosia_id").value;
            var sasia = document.getElementById("sasia").value;




            var fullnameError = document.getElementById("fullnameError");
            var emailError = document.getElementById("emailError");
            var phoneError = document.getElementById("phoneError");
            var subjectError = document.getElementById("subjectError");
            var descriptionError = document.getElementById("descriptionError");
            var username = document.getElementById("usernameError");
            var porosia_id = document.getElementById("porosia_idError");
            var sasia = document.getElementById("sasiaError");


           
            fullnameError.innerHTML = "";
            emailError.innerHTML = "";
            phoneError.innerHTML = "";
            subjectError.innerHTML = "";
            descriptionError.innerHTML = "";
            usernameError.innerHTML = "";
            porosia_idError.innerHTML = "";
            sasiaError.innerHTML = "";

           
           if (fullname.trim() === "") {
               fullnameError.innerHTML = "Emri duhet të përmbajë vetëm shkronja.";
               document.getElementById("fullname").classList.add("error");
               return false;
           }

            
          
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                emailError.innerHTML = "Email nuk është valid.";
                document.getElementById("email").classList.add("error");
                return false;
            }

           
            var phoneRegex = /^[0-9]+$/
            if (!phoneRegex.test(phone)) {
                phoneError.innerHTML = "Numri nuk është valid.";
                document.getElementById("phone").classList.add("error");
                return false;
            }

           
            if (subject.trim() === "") {
                subjectError.innerHTML = "Kërkohet Subject.";
                document.getElementById("subject").classList.add("error");
                return false;
            }

            
            if (description.trim() === "") {
                descriptionError.innerHTML = "Kërkohet Pershkrimi.";
                document.getElementById("description").classList.add("error");
                return false;
            }

            if (username.trim() === "") {
                usernameError.innerHTML = "Kërkohet Username.";
                document.getElementById("username").classList.add("error");
                return false;
            }

            if (porosia_id.trim() === "") {
                porosia_idError.innerHTML = "Kërkohet ID e Porosise.";
                document.getElementById("porosia_id").classList.add("error");
                return false;
            }

            if (sasia.trim() === "") {
                sasiaError.innerHTML = "Kërkohet Sasia.";
                document.getElementById("sasia").classList.add("error");
                return false;
            }
            
            

            return true;
        }