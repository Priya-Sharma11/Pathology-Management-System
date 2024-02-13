<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-// W3C// DTD HTML 4.01
 Transitional// EN" "http:// www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
 charset=ISO-8859-1">
<title> Pathology Lab </title>

	<link href="css/style.css" type="text/css" rel="stylesheet">
<style>
*{
	margin:auto;
	padding:auto;
}

.top{
	width:100%;
	background-color:#2FA5EB !important;
	border-bottom:2px solid #f0f0f0;
}
.top div{
	width:1200px;
	color:#fff;
	background-color:#2FA5EB !important;
	font-family:calibri;
	padding:10px;
	text-align:right;
}

.logo{
	width:100%;
	background-color:;
	border-bottom:2px solid #f0f0f0;
}
.logo div{
	width:1200px;
	background-color:;
	font-family:calibri;
	padding:10px;
	text-align:left;
}
.logo div table a{
	padding:10px;
	text-decoration:none;
	color:gray;
}
.logo div table a:hover{
	color:#428bca;
	border-bottom:2px solid gray;
}

.middle{
	width:100%;
	border-bottom:2px solid #f0f0f0;
}
.middle div{
	width:1200px;
	height:400px;
	font-family:calibri;
}
.middle div p{
	width:1000px;
	font-weight:bold;
	height:300px;
	color:#fff;
	opacity:0.2;
	font-size:50px;
	background-color:#000;
}

.bottom{
	width:100%;
	background-color:;
	border-bottom:2px solid #f0f0f0;
}
.bottom div{
	width:1200px;
	color:#fff;
	background-color:;
	font-family:calibri;
	text-align:right;
}
.bottom div table{
	padding-top:30px;
	width:1100px;
	text-align:justify;
	color:gray;
	font-size:20px;
}

.bottom_up{

	width:100%;
	background-color:;
	border-bottom:2px solid #f0f0f0;
}
.bottom_up div{
	padding-top:20px;
	width:1200px;
	text-align:center;
	background-color:;
	font-family:Times New Roman;
	font-size:30px;
	padding-bottom:20px;
}
.bottom_up div table{
	padding-top:30px;
	font-size:30px;
	width:1100px;
	text-align:center;
	background-color:;
	font-family:calibri;

}

input[type="text"]{
	padding:12px;
	width:250px;
}
select{
	padding:12px;
	width:250px;
}
textarea{
	padding:50px;
	width:550px;
}
button{
	width:550px;
	padding:10px;
	color:#fff;
	font-size:20px;
	background-color:#2FA5EB !important;
}


.nav_down{
	width:100%;
	background-color:#2FA5EB !important;
	border-bottom:2px solid #f0f0f0;
}
.nav_down div{
	width:1200px;
	color:#fff;
	background-color:#000;
	font-family:calibri;
	padding:10px;
	text-align:left;
}
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: centre;
 position: bottom;
   top: 5px;
   right: 28px;
   centre: 20px;
   width: 280px;
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
</head>
<body>

	<div class="top">
		<div>
		 Contact Us +91 96366 20000 / 01 | lab@hospital.com
		</div>
	</div>

	<div class="logo">
		<div>
			<table>
				<tr>
					<td width="600px" style="font-size:50px;font-family:forte;"> <font color="#428bca"> Pathology  </font><font color="#000">Lab</font> </td>
					<td> <br> <br>
						<font size="4px">
							<a href="index.html">HOME</a>
							<a href="about.html">ABOUT US</a>
							<a href="service.html">SERVICE</a>
							<a href="doctor.html">DOCTORS</a>
							<a href="contact.html">CONTACT US</a>
						</font>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<div class="middle">
		<div style="background-image:url('https://wallpapercave.com/wp/wp10268445.jpg')">
		<p>
			<br> <br>
					Path lab Services  <br>
			<font size="5px", font-family: "Times New Roman"> We will serve the best! </font>
		</p>
		</div>
	</div>

	<div class="bottom">
		<div>
			<table border="0">
				<tr>
					<td width="700px">






					<c:choose>
                        <c:when test="${not empty errorMessage}">
                         <font color="red"> ${errorMessage} </font> <br><br>
                        </c:when>
                        <c:otherwise>
                         <c:choose>
                          <c:when test="${not empty msg}">

                                </c:when>
                                <c:otherwise>
                                      <p>${userNotExist}</p>
                                </c:otherwise>
                            </c:choose>
                            <p>Welcome, ${userName}</p> <br><br>
                        </c:otherwise>
                    </c:choose>









						<font color="#000"> We are pleased to offer you the best of special health-care. </font> <br> <br>

					<font color="#000" size="5px"> What we do? </font> <br> <br>
We offer quality diagnostics services ranging from routine test, super-specialty test investigations to the more advanced tests pertaining to Biochemistry; Haematology; Micro-biology; Cytogenetics; Clinical Pathology and Histopathology. <br><br>

With over 2500+test and related healthcare service, we are strongly equipped and capable of performing all kind of test that can be recommended by Indian physician.

Latest high-end equipment, make sure that the results are accurate and delivered to customer on time.<br><br>
<ul> <h5>OUR DEPARTMENTS</h5>
<li>HEMATOLOGY</li>
<li>BIOCHEMISTRY</li>
<li>IMMUNOLOGY</li>
<li>CLINICAL PATHOLOGY</li>
<li>HISTOPATHOLOGY</li>
<li>MOLECULAR PATHOLOGY</li>
<li>MICRO BIOLOGY</li>
</ul>
<br>
 </td>
 		<td> </td>
				</tr>


			</table>
		</div>
	</div>


<button class="open-button" onclick="openForm()">Make an Appointment!</button>

<div class="form-popup" id="myForm">
  <form id="appointment" action="appointment" class="form-container" method="post">

    <h1>Book an appointment!</h1>

    <label for="First"><b>First Name</b></label>
         <input type="text" placeholder="First Name" name="first_name" required>

            <label for="Last"><b>Last Name</b></label>
            <input type="text" placeholder="Last Name" name="last_name" required>




         <label for="date">Schedule:</label>
         <input type="date" id="schedule" name="schedule">
         <input type="hidden" id="userName" name= "userName" value = ${userName}>
         <input type="submit">

         <br>
         <br>




    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit" class="btn">Submit</button>

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




	<div class="nav_down">
		<div>
		 &copy; Pathology Lab
		</div>
	</div>
	<div class="top">
    		<div>
    		 Contact Us +91 96366 20000 / 01 | lab@hospital.com
    		</div>
    	</div>








    <br>
    <br>
    <br>
     </td>


    					<td style="padding-left:20px;"> </td>
    				</tr>


    			</table>
    		</div>
    	</div>








</body>
</html>