<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
    <title>Pathology Management System </title>
</head>
<style>
h1{ color: Brown;
    text-align: center;
    font-family: Georgia;
    font-size:50px;}
p{
    color: red;
    text-align: right;
    font-family: Garamond;
    font-size:25px;
}
body {
  background-image:url(https://t4.ftcdn.net/jpg/02/52/66/21/360_F_252662160_3L7dbI1Ez4i9fgJkQ4GpOIZJTbH1n0Ug.jpg);
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  font-family: "Open Sans", sans-serif;
  color: #333333;
}
/* Style the header */
header {

  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}
/* Style the content */
article {
  -webkit-flex: 3;
  -ms-flex: 3;
  flex: 3;
  padding: 30px;
  text-align: right;
}

/* Add a black background color to the top navigation */
.topnav {
    float: right;
    overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: red;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size:25px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
.button2 .a{
color: white;
}
.button2 {
  background-color: #458;
  color: red;
  padding: 10px 10px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 250px;
  right: 300px;
  width: 200px;
}

body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #559;
  color: white;
  padding: 10px 10px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 250px;
  right: 28px;
  width: 200px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}

</style>

<body>
<section>
  <div class="topnav">
    <a  href="#home">Home </a>
     <a href="#about">About Us</a>
    <a href="#contact">Contact Us</a>

  </div>
<header>
  <h1>Pathology Management System</h1>
</header>
  <article>
  <p>Pathology tests are a medical specialty tests that help determine the cause and nature <br> of diseases by testing samples of body tissues and body fluids..
   </p>
    </article>
</section>

<button class="button2"><a href="Signup.jsp"> SIGNUP  </button> </a>
<button class="open-button" onclick="openForm()">LOGIN</button>
<div class="form-popup" id="myForm">
  <form action="login" class="form-container">
    <h1>Login</h1>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="userName" required>
<label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <button type="submit" class="btn"> <a href="login.jsp"> Login</button></a>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>
<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>

</body>
</html>
