<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - CheckOut Page</title>
  <link rel="stylesheet" href="./style.css">
<style>
body {
    font-family: 'Roboto', sans-serif!important;
	margin:0;
	padding:0;
	box-sizing: border-box;
}

.mainscreen
{
	min-height: 100vh;
	width: 100%;
	display: flex;
    flex-direction: column;
    background-color: #DFDBE5;
    background-image: url("https://wallpaperaccess.com/full/3063067.png");
    color:#963E7B;
}
.checkout{
border 1px solid purple;
text-style none;

}
.card {
	width: 60rem;
    margin: auto;
    background: white;
    position:center;
    align-self: center;
    top: 50rem;
    border-radius: 1.5rem;
    box-shadow: 4px 3px 20px #3535358c;
    display:flex;
    flex-direction: row;

}

.leftside {
	background: #030303;
	width: 25rem;
	display: inline-flex;
    align-items: center;
    justify-content: center;
	border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}

.test {
    object-fit: cover;
	width: 20em;
    height: 20em;
    border-radius: 100%;
}

.rightside {
    background-color: #ffffff;
	width: 35rem;
	border-bottom-right-radius: 1.5rem;
    border-top-right-radius: 1.5rem;
    padding: 1rem 2rem 3rem 3rem;
}

p{
    display:block;
    font-size: 1.1rem;
    font-weight: 400;
    margin: .8rem 0;
}

.inputbox
{
    color:#030303;
	width: 100%;
    padding: 0.5rem;
    border: none;
    border-bottom: 1.5px solid #ccc;
    margin-bottom: 1rem;
    border-radius: 0.3rem;
    font-family: 'Roboto', sans-serif;
    color: #615a5a;
    font-size: 1.1rem;
    font-weight: 500;
  outline:none;
}

.expcvv {
    display:flex;
    justify-content: space-between;
    padding-top: 0.6rem;
}

.expcvv_text{
    padding-right: 1rem;
}
.expcvv_text2{
    padding:0 1rem;
}

.button{
    background: linear-gradient(
135deg
, #753370 0%, #298096 100%);
    padding: 15px;
    border: none;
    border-radius: 50px;
    color: white;
    font-weight: 400;
    font-size: 1.2rem;
    margin-top: 10px;
    width:100%;
    letter-spacing: .11rem;
    outline:none;
}

.button:hover
{
	transform: scale(1.05) translateY(-3px);
    box-shadow: 3px 3px 6px #38373785;
}

@media only screen and (max-width: 1000px) {
    .card{
        flex-direction: column;
        width: auto;

    }

    .leftside{
        width: 100%;
        border-top-right-radius: 0;
        border-bottom-left-radius: 0;
      border-top-right-radius:0;
      border-radius:0;
    }

    .rightside{
        width:auto;
        border-bottom-left-radius: 1.5rem;
        padding:0.5rem 3rem 3rem 2rem;
      border-radius:0;
    }
}
*{
        margin :0;
        padding :0;
        box-sizing :border-box;
        font-family:'Poppins', sans-serif,

    }

    .container{
        width :100%;
        height :100vh;
        background:#3077;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .btn{
        padding: 10px 60px;
        background: #fff;
        border: 0;
        outline: none;
        cursor: pointer;
        font-size: 22px;


    }

    .popup{
            width: 400px;
            background: #fff;
            border-radius: 6px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%) scale(0.1);
            text-align: center;
            padding: 0 30px 30px;
            color: #333;
            transition : transform 0.4s, top 0.4s;

    }

    .openPopup{
        visibility : visible;
        top: 50%;
        transform: translate(-50%,-50%) scale(0.1);
    }

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

a:hover, a:active {
  background-color: red;
}
#link:link,link:visited{
 background-color: lightblue;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}
#link:hover, link:active{
background-color:hotpink;
}
</style>



</head>
<body>
    <script language = javascript type = "text/javascript"></script>
<!-- partial:index.partial.html -->
<div class="mainscreen">
    <!-- <img src="https://image.freepik.com/free-vector/purple-background-with-neon-frame_52683-34124.jpg"  class="bgimg " alt="" -->
      <div class="card">
        <div class="leftside">
          <img
            src="https://images.unsplash.com/photo-1579165466991-467135ad3110?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFib3JhdG9yeXxlbnwwfHwwfHw%3D&w=1000&q=80" width: 400px, height: 300px
            class="test"/>


        </div>
        <div class="rightside">
            <form id="index" form action="index" class="form-container" method="post">
            <h1>CheckOut</h1>
            <h2>Payment Information</h2>
            <p>Cardholder Name</p>
            <input type="text" class="inputbox" name="name" required />
            <p>No. of test</p>
            <input type="number" class="inputbox" name="card_number" id="card_number" required />

           <!--<p>Card Type</p>
                           <select class="inputbox" name="card_type" id="card_type" required>
                             <option value="">--Select a Card Type--</option>
                             <option value="Visa">Visa</option>
                             <option value="RuPay">RuPay</option>
                             <option value="MasterCard">MasterCard</option>
                           </select>
               <div class="expcvv">

                           <p class="expcvv_text">Expiry</p>
                           <input type="date" class="inputbox" name="exp_date" id="exp_date" required />

                           <p class="expcvv_text2">CVV</p>
                           <input type="password" class="inputbox" name="cvv" id="cvv" required />
                       </div> -->

            <div>
            <!-- Trigger/Open The Modal(button) -->
            <button id="myBtn"><a id="link" href="checkout.jsp">Checkout</a></button>
            <br><br>
            <a id="link" href="tests.jsp"> Back </a>

            <!-- The Modal -->
            <div id="myModal" class="modal">

              <!-- Modal content -->
              <div class="modal-content">
                <span class="close">&times;</span>


              </div>

            </div>










                </div>
                </div>
          </form>
        </div>

<!-- partial -->



</body>
</html>

