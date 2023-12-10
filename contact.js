function validateForm() {
            var fullname = document.getElementById("fullname").value;
            var email = document.getElementById("email").value;
            var phone = document.getElementById("phone").value;
            var subject = document.getElementById("subject").value;
            var description = document.getElementById("description").value;

            var fullnameError = document.getElementById("fullnameError");
            var emailError = document.getElementById("emailError");
            var phoneError = document.getElementById("phoneError");
            var subjectError = document.getElementById("subjectError");
            var descriptionError = document.getElementById("descriptionError");

           
            fullnameError.innerHTML = "";
            emailError.innerHTML = "";
            phoneError.innerHTML = "";
            subjectError.innerHTML = "";
            descriptionError.innerHTML = "";

           
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

            return true;
        }