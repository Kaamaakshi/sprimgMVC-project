<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

body{
    animation: anim 5s linear infinite;
    background-image: url("https://t4.ftcdn.net/jpg/06/91/05/19/360_F_691051962_GFhQPOAXABmf7l706q89b2PFh6FnB1kI.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}

@keyframes anim {
    100%{
        filter: hue-rotate(360deg);
    }
    }


#max{
   border: 2p solid black;
   height: 450px;
   width: 350px;
   position: absolute;
   top:130px;
   left:530px; 
   background:transparent;
   border: 2px solid rgba(255,255, 255, .2);
   backdrop-filter: blur(20px);
   box-shadow: 0 0 40px rgba(0, 0,0, -2);
   color: #fff;
   border-radius: 10px;
   padding: 30px 40px;
}
#rst{
  position: relative;
  left:10px;
}

button{
  padding: 10px 30px;
  margin: 10px;
  width: 40%;
  height: 40px;
  border: 2px solid white;
  border-radius: 40px;
  box-shadow: 0 0 10px rgba(0, 0, 0, -1);
  cursor: pointer;
  font-size: 16px;
  color: white;
  font-weight:600;
  background: transparent;


}
button:hover{
  background: white;
  color:black;
  text-decoration: underline;
  background: linear-gradient(to bottom left, yellow 20%,purple 50%,orange,blue);
  color: transparent;
  background-clip:text; 
}

input{
    padding:10px 20px;
    background: transparent;
    border: none;
    outline: none;
    border: 2px solid rgba(255,255, 255, .2);
    border-radius: 40px;
    font-size: 16px;
    color: #fff;
  
}


#name{
   position: relative;
   left: 65px;
   background: transparent;
   border: none;
   outline: none;
   border: 2px solid rgba(255,255, 255, .2);
    
}
#email{
   position: relative;
   left: 65px;
}
#dob{
   position: relative;
   left: 20px;
}
#loc{
    position: relative;
    left: 50px;
    background: transparent;
    border: none;
    outline: none;
    border: 2px solid rgba(255,255, 255, .2);
    border-radius: 40px;
    font-size: 16px;
    color: #fff;
}
#identificationDocument{
   position: relative;
   left: 20px;

}

option{
    background: transparent;
    color:black;
    border: none;
    outline: none;
    border: 2px solid rgba(255,255, 255, .2);
    border-radius: 40px;
    font-size: 16px;
}

h1{
   position: relative;
   top:-20px;
   left: 20px;
   background: linear-gradient(to bottom left, yellow 20%,purple 50%,orange,white);
   color: transparent;
   background-clip:text; 
}
nav{
 
   height: 40px;
   width: 100%;
   background:transparent;
   border: 2px solid rgba(255,255, 255, .2);
   backdrop-filter: blur(20px);
   box-shadow: 0 0 40px rgba(0, 0,0, -2);
   color: #fff;
   border-radius: 10px;
   padding: 30px 40px;
}
#img{
position:absolute;
top:5px;
left:10px;
height: 90px;
width: 120px;
box-shadow: 0 0 100px rgba(0, 0,0, -2);
}

#h{

height: 90px;
width: 700px;
position:absolute;
top:-20px;
left:370px;
font-family: cursive;
font-weight: bolder;
font-size: 30px;
letter-spacing: 10px;
}
</style>
</head>


<body>
<nav>
<div id="img"><img height="90px" width="130px" alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ426I1GliwjgSbI6pg1Z_BIGWkvtP2fh2qzw&s"></div>
<marquee id="h" scrollamount="20" behavior="scroll"><h2 id="h2">REGISTRATION FORM</h2></marquee>
</nav>
<div id="max">
<h1>User Registration Form</h1>
    <form  action="create" name="registrationForm" onsubmit="return validateForm()"  enctype="multipart/form-data">
        Name: <input type="text" name="name" id="name"><br><br>
        Email: <input type="text" name="email" id="email" ><br><br>
        Mobile Number: <input type="text" name="mobileNumber" pattern="[0-9]{10}"><br><br>
        Date of Birth: <input type="text" name="dob" id="dob"><br><br>
        Location: 
        <select name="location" id="loc" >
        <option></option>
            <option value="">Any Location</option>
            <option value="Bangalore">Bangalore</option>
            <option value="Hyderabad">Hyderabad</option>
            <option value="Chennai">Chennai</option>
            <option value="New Delhi">New Delhi</option>
        </select><br><br>
        
        Identification Document: <input type="file" id="identificationDocument" name="file"><br><br>
        
        <button>Submit</button>
        <button id="rst">Reset</button>
    </form>
 <div id="message" style="color: red;"></div>
    
</div>
</body>


<script>
        function validateForm() {
            var name = document.forms["registrationForm"]["name"].value;
            var email = document.forms["registrationForm"]["email"].value;
            var mobileNumber = document.forms["registrationForm"]["mobileNumber"].value;
            var dob = document.forms["registrationForm"]["dob"].value;
            var location = document.forms["registrationForm"]["location"].value;

            // Name validation
            var nameRegex = /^[a-zA-Z]+$/;
            if (name === "" || !name.match(nameRegex)) {
                displayMessage("Name must contain only alphabets.");
                return false;
            }

            // Email validation
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (email === "" || !email.match(emailRegex)) {
                displayMessage("Invalid email format.");
                return false;
            }

            // Mobile Number validation
            var mobileRegex = /^[0-9]+$/;
            if (mobileNumber === "" || !mobileNumber.match(mobileRegex)) {
                displayMessage("Mobile number must contain only numbers.");
                return false;
            }

            // Date of Birth validation
            var dobDate = new Date(dob);
            var today = new Date();
            var age = today.getFullYear() - dobDate.getFullYear();
            var m = today.getMonth() - dobDate.getMonth();
            if (m < 0 || (m === 0 && today.getDate() < dobDate.getDate())) {
                age--;
            }
            if (age < 21) {
                displayMessage("Age must be above 21 years.");
                return false;
            }

            // Location validation
            if (location === "") {
                displayMessage("Please select a location.");
                return false;
            }

            // Identification Document validation (file type and size)
            var identificationFileType = identificationDocument.split('.').pop().toLowerCase();
            if (identificationDocument === "" || (identificationFileType !== "pdf")) {
                displayMessage("Identification document must be a PDF file.");
                return false;
            }

            var identificationFileSize = document.getElementById('identificationDocument').files[0].size;
            if (identificationFileSize > 2000000) {
                displayMessage("Identification document file size must be less than 2MB.");
                return false;
            }

            // If all validations pass
            return true;
        }

        function displayMessage(message) {
            document.getElementById("message").innerHTML = message;
        }
    </script>
</html>