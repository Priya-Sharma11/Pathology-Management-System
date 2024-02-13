<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Book and Appointment</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
<style>
    @import url('https://fonts.googleapis.com/css2?family=Merienda+One&family=Nunito:wght@200;300;400;500;600&display=swap');

:root{
   --main-color:pink;
   --black:#333;
   --white:#fff;
   --light-color:#666;
   --border:.2rem solid var(--black);
   --box-shadow:0 .5rem 1rem rgba(0,0,0,.1);
}

*{
   font-family: 'Nunito', sans-serif;
   margin:0; padding:0;
   box-sizing: border-box;
   outline: none; border:none;
   text-decoration: none;
   text-transform: capitalize;
}

*::selection{
   background-color: var(--main-color);
   color:var(--	7FFFD4);
}

::-webkit-scrollbar{
   height: .5rem;
   width: 1rem;
}

::-webkit-scrollbar-track{
   background-color: blue;
}

::-webkit-scrollbar-thumb{
   background-color: var(--main-color);
}

html{
   font-size: 62.5%;
   overflow-x: hidden;
   scroll-behavior: smooth;
   scroll-padding-top: 6.5rem;
}

section{
   padding:3rem 2rem;
   max-width: 1200px;
   margin:0 auto;
}

.heading{
   text-align: center;
   margin-bottom: 3rem;
}

.heading img{
   height: 4rem;
   margin-bottom: 1rem;
}

.heading h3{
   font-size:4rem;
   color:var(--black);
   font-family: 'Merienda One', cursive;
}

.btn{
   display: inline-block;
   margin-top: 1rem;
   background-color: var(--main-color);
   cursor: pointer;
   color:var(--white);
   font-size: 1.8rem;
   padding:1rem 3rem;
}

.btn:hover{
   background-color: var(--black);
}

.header{
   position: sticky;
   top:0; left: 0; right:0;
   background-color: var(--white);
   box-shadow: var(--box-shadow);
   z-index: 1000;
}

.header .flex{
   display: flex;
   align-items: center;
   justify-content: space-between;
   position: relative;
   padding:1.5rem 2rem;
}

.header .flex .logo img{
   height: 4.5rem;
}

.header .flex .navbar a{
   margin-left: 2rem;
   font-size: 2rem;
   color:var(--black);
}

.header .flex .navbar a:hover{
   text-decoration: underline;
   color:var(--main-color);
}

#menu-btn{
   display: none;
   font-size: 2.5rem;
   color:var(--black);
   cursor: pointer;
}

.home-bg{
   background:linear-gradient(90deg, var(--	7FFFD4), transparent 70%), url(../images/home-bg.jpg) no-repeat;
   background-size: cover;
   background-position: center;
}

.home-bg .home{
   min-height: 70rem;
   display: flex;
   align-items: center;
}

.home-bg .home .content{
   width: 50rem;
   text-align: center;
}

.home-bg .home .content h3{
   font-size: 6rem;
   color:var(--black);
   font-family: 'Merienda One', cursive;
}

.home-bg .home .content p{
   padding:1rem 0;
   font-size: 1.6rem;
   color:var(--black);
   line-height: 2;
}

.about{
   display: flex;
   align-items: center;
   flex-wrap: wrap;
   gap:4rem;
}

.about .image{
   flex:1 1 40rem;
}

.about .image img{
   width: 100%;
}

.about .content{
   flex:1 1 40rem;
}

.about .content h3{
   font-size: 4.5rem;
   color:var(--black);
   font-family: 'Merienda One', cursive;
   padding-bottom: 1rem;
}

.about .content p{
   padding:1rem 0;
   line-height: 2;
   color:var(--light-color);
   font-size: 1.5rem;
}

.facility .box-container{
   display: grid;
   grid-template-columns: repeat(auto-fit, minmax(27rem, 1fr));
   gap:1.5rem;
   align-items: flex-start;
}

.facility .box-container .box{
   text-align: center;
}


.facility .box-container .box img{
   height: 10rem;
   margin-bottom: .5rem;
}

.facility .box-container .box h3{
   font-size: 2rem;
   color:var(--black);
   margin:1rem 0;
}

.facility .box-container .box p{
   line-height: 2;
   font-size: 1.5rem;
   color:var(--light-color);
}

.menu .box-container{
   display: grid;
   grid-template-columns: repeat(auto-fit, 30rem);
   gap:2rem;
   align-items: flex-start;
   justify-content: center;
}

.menu .box-container .box{
   text-align: center;
}

.menu .box-container .box img{
   width: 100%;
   margin-bottom: 1rem;
}

.menu .box-container .box h3{
   font-size: 2rem;
   color:var(--black);
}

.gallery .box-container{
   display: grid;
   grid-template-columns: repeat(auto-fit, 33rem);
   gap:1.5rem;
   justify-content: center;
}

.gallery .box-container img{
   height: 100%;
   width: 100%;
   object-fit: cover;
}

.team .box-container{
   display: grid;
   grid-template-columns: repeat(auto-fit, 33rem);
   gap:1.5rem;
   justify-content: center;
}

.team .box-container .box{
   text-align: center;
}

.team .box-container .box img{
   width: 100%;
   object-fit: cover;
   margin-bottom: .5rem;
}

.team .box-container .box h3{
   font-size: 2rem;
   color:var(--black);
}

.contact .row{
   display: flex;
   align-items: center;
   flex-wrap: wrap;
   gap:2rem;
}

.contact .row .image{
   flex:1 1 50rem;
}

.contact .row .image img{
   width: 100%;
}

.contact .row form{
   flex:1 1 30rem;
   border:var(--border);
   padding:2rem;
   text-align: center;
}

.contact .row form h3{
   font-size: 2.5rem;
   margin-bottom: 1rem;
   color:var(--black);
}

.contact .row form .box{
   width: 100%;
   padding:1.4rem;
   font-size: 1.8rem;
   color:var(--black);
   border:var(--border);
   margin:1rem 0;
}

.footer .box-container{
   display: grid;
   grid-template-columns: repeat(auto-fit, minmax(27rem, 1fr));
   gap:1.5rem;
   align-items: flex-start;
}

.footer .box-container .box{
   text-align: center;
}

.footer .box-container .box i{
   font-size: 2.5rem;
   line-height: 6rem;
   height: 6rem;
   width: 6rem;
   border-radius: 50%;
   background-color: var(--main-color);
   color:var(--white);
   margin-bottom: 1rem;
}

.footer .box-container .box h3{
   margin:1rem 0;
   font-size: 2rem;
   color:var(--black);
}

.footer .box-container .box p{
   line-height: 2;
   font-size: 1.6rem;
   color:var(--light-color);
}

.footer .credit{
   text-align: center;
   margin-top: 3rem;
   padding-top: 2.5rem;
   border-top: var(--border);
   font-size: 2rem;
   color:var(--black);
   /* padding-bottom: 7rem; */
}

.footer .credit span{
   color:var(--main-color);
}

/* media queries  */

@media (max-width:991px){

   html{
      font-size: 55%;
   }

}

@media (max-width:768px){

   #menu-btn{
      display: inline-block;
      transition: .2s linear;
   }

   #menu-btn.fa-times{
      transform: rotate(180deg);
   }

   .header .flex .navbar{
      position: absolute;
      top:99%; left:0; right:0;
      background-color: var(--white);
      border-top: var(--border);
      border-bottom: var(--border);
      clip-path: polygon(0 0, 100% 0, 100% 0, 0 0);
      transition: .2s linear;
   }

   .header .flex .navbar.active{
      clip-path: polygon(0 0, 100% 0, 100% 100%, 0% 100%);
   }

   .header .flex .navbar a{
      display: block;
      margin:2rem;
   }
   * {
     box-sizing: border-box;
   }

   .column {
     float: left;
     width: 33.33%;
     padding: 5px;
   }

   /* Clearfix (clear floats) */
   .row::after {
     content: "";
     clear: both;
     display: table;
   }

   .home-bg{
      background-position: left;
   }

   .home-bg .home{
      justify-content: center;
   }

   .home-bg .home .content h3{
      font-size: 4rem;
   }

   .about .content h3{
      font-size: 3rem;
   }

}

@media (max-width:450px){

   html{
      font-size: 50%;
   }

   .heading img{
      height: 3rem;
   }

   .heading h3{
      font-size: 3rem;
   }
   body {
  font-family: Arial, Helvetica, sans-serif;
}
}

.flip-card {
  background-color: transparent;
  width: 300px;
  height: 300px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}
.img-container {
  float: center;
  width: 33.33%;
  padding: 5px;

}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: #2980b9;
  color: white;
  transform: rotateY(180deg);
}
.button {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #04AA6D;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: pink}

.button:active {
  background-color: plum;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
a {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

a:hover {
  background-color: #ddd;
  color: black;
}

.previous {
  background-color: #f1f1f1;
  color: black;
}

.next {
  background-color: #04AA6D;
  color: white;
}

</style>
</head>
<body>

<!-- header section starts  -->

<header class="header">

   <section class="flex">

      <a href="#home" class="logo"><img src="images/logo.png" alt=""></a>

      <nav class="navbar">
         <a href="#home">home</a>
         <a href="#about">about</a>
         <a href="#menu">Tests</a>
         <a href="#gallery">gallery</a>
         <a href="#team">covid-19</a>
         <a href="#contact">contact</a>
      </nav>

      <div id="menu-btn" class="fas fa-bars"></div>

   </section>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<div class="home-bg">

   <section class="home" id="home">

      <div class="content">
         <h3>Pathology lab</h3>
         <p>Listed below are some of the popular diagnostic tests prescribed to analyse and monitor varying health conditions. Choose a test as recommended by your doctor and book appointment at Aster Labs diagnostic lab near your location. You can also get in touch with us for Home Collection of Blood Sample.</p>
         <a href="#about" class="btn">about us</a>
      </div>

   </section>

</div>

<!-- home section ends -->

<!-- about section starts  -->

<section class="about" id="about">

   <div class="image">
      <img src="images/about-img.svg" alt="">
   </div>

   <div class="content">
      <h3>Come, Test Us!</h3>
      <p>
         When you go for a diagnostic test, you’re looking for something far more valuable than a lab report. You’re looking for certainty. You want accuracy that you can rely on. You need a diagnosis your doctor can trust.
         Launching Aster Labs, a national reference laboratory network, born from the glaring need to take the doubt out of diagnosis.  Aster Labs is here to ensure that you get the most accurate laboratory results every single time, in every lab report.  But don’t just take our word for it.
         Come, test us.</p>
      <a href="#menu" class="btn">Tests</a>
   </div>

</section>

<!-- about section ends -->

<!-- facility section starts  -->


<!-- facility section ends -->

<!-- menu section starts  -->

<section class="menu" id="menu">

   <div class="heading">

      <h3>Popular Tests</h3>
   </div>

   <div class="box-container"></div>

<div class="row">
<div class="column">
<div class="flip-card">
   <div class="flip-card-inner">
     <div class="flip-card-front">
      <img src="https://media.istockphoto.com/photos/rendering-of-a-bunch-of-red-and-white-blood-cells-picture-id117868474?k=20&m=117868474&s=612x612&w=0&h=L39Da5yLSu0uyVEITanTHTID-hQi2ner2SJRUAisGsc=" alt="" style="width:300px;height:300px;">
   </div>
<div class="flip-card-back">

<h3 style="color:whitesmoke;font-size:20px;font-family : 'Times New Roman', Times, serif"> Haematology</h3>
<br>
   <p style="color:whitesmoke;font-size:15px;font-family : 'Times New Roman', Times, serif">We provide comprehensive diagnostic services for blood disorders starting from the evaluation of simple anaemias going across complex multifactorial diseases including bleeding and thrombotic disorders extending to malignancies such as acute leukaemia</p>
   <br>

   <button class="button"><a href="payment.jsp">Book an appointment!</a></button>
</div>
</div>
</div>
</div>

<div class="box">
<div class="column">
<div class="flip-card">
   <div class="flip-card-inner">
     <div class="flip-card-front">
      <img src="https://www.asterlabs.in/sites/default/files/styles/raw_original_image/public/2021-12/biochem-department_0_1.jpg.webp?itok=GY2CLxQ1" alt="" style="width:300px;height:300px;">
   </div>
<div class="flip-card-back">
   <h3 style="color:whitesmoke;font-size:20px;font-family : 'Times New Roman', Times, serif">C - Reactive protein (CRP) test</h3>
   <br>

   <p style="color:whitesmoke;font-size:15px;font-family : 'Times New Roman', Times, serif">A test that measures C-Reactive protein levels in your blood. c-Reactive Protein, an acute phase reactant, is a pentameric protein found in blood and whose circulating concentrations increase inflammatory reaction.</p>
   <br>

   <button class="button"><a href="payment.jsp">Book an appointment!</a></button>


</div>
</div>
</div>
</div>
</div>


<div class="box">
<div class="column">
   <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
         <img src="https://www.asterlabs.in/sites/default/files/styles/raw_original_image/public/2021-12/serology_0.jpg.webp?itok=v-UaU0v5" alt="" style="width:300px;height:300px;">
      </div>
   <div class="flip-card-back">
      <h3 style="color:whitesmoke;font-size:20px;font-family : 'Times New Roman', Times, serif">WATER/FLUIDS ENDOTOXIN</h3>
      <br>

      <p style="color:whitesmoke;font-size:15px;font-family : 'Times New Roman', Times, serif">A test that measures C-Reactive protein levels in your blood. c-Reactive Protein, an acute phase reactant, is a pentameric protein found in blood and whose circulating concentrations increase inflammatory reaction.</p>
      <br>

      <button class="button"><a href="payment.jsp">Book an appointment!</a></button>
   </div>
   </div>
   </div>
   </div>
   </div>


   <div class="box">
   <div class="column">
      <div class="flip-card">
         <div class="flip-card-inner">
           <div class="flip-card-front">
           <div class="img-container">
            <img src="https://images.pexels.com/photos/2280568/pexels-photo-2280568.jpeg?auto=compress&cs=tinysrgb&w=600" alt="" style="width:300px;height:300px;">
         </div>
         </div>
      <div class="flip-card-back">
         <h3 style="color:whitesmoke;font-size:20px;font-family : 'Times New Roman', Times, serif">Comprehensive Alpha And Beta Thalassamia</h3>
         <br>

         <button class="button"><a href="payment.jsp">Book an appointment!</a></button>
      </div>
      </div>
      </div>
      </div>
      </div>

      <div class="box">
      <div class="column">
         <div class="flip-card">
            <div class="flip-card-inner">
              <div class="flip-card-front">
              <div class="img-container">
               <img src="https://post.healthline.com/wp-content/uploads/2020/09/PVPV194-Blood_Sugar_Test-732x549-Thumbnail-1-732x549.jpg" alt="" style="width:300px;height:300px;">
            </div>
            </div>
         <div class="flip-card-back">
            <h3 style="color:black;font-size:20px;"> Blood Sugar Test (BST)</h3>
            <br>

            <p style="color:black;font-size:15px;">A blood sugar test measures the amount of a sugar called glucose in a sample of your blood.</p>
            <br>

            <button class="button">Book an appointment</button>
         </div>
         </div>
         </div>
         </div>

</div>
</div>

   </div>

</section>

<!-- menu section ends -->

<!-- gallery section starts  -->

<section class="gallery" id="gallery">

   <div class="heading">
      <h3>our gallery</h3>
   </div>

   <div class="box-container">
      <img src="https://images.pexels.com/photos/954585/pexels-photo-954585.jpeg?auto=compress&cs=tinysrgb&w=600" alt="">
      <img src="https://images.pexels.com/photos/2280549/pexels-photo-2280549.jpeg?auto=compress&cs=tinysrgb&w=600" alt="">
      <img src="https://images.pexels.com/photos/1366942/pexels-photo-1366942.jpeg?auto=compress&cs=tinysrgb&w=600" alt="">
      <img src="https://images.pexels.com/photos/2280549/pexels-photo-2280549.jpeg?auto=compress&cs=tinysrgb&w=600" alt="">
      <img src="https://images.pexels.com/photos/2280551/pexels-photo-2280551.jpeg?auto=compress&cs=tinysrgb&w=600" alt="">
      <img src="https://images.pexels.com/photos/3938022/pexels-photo-3938022.jpeg?auto=compress&cs=tinysrgb&w=600" alt="">
   </div>

</section>
<hr>
<br>
<br>
<!-- gallery section ends -->

<!-- team section starts  -->

<section class="team" id="team">

   <div class="heading">

      <h3>Testing for COVID-19? Things you should know</h3>
   </div>

         <h3 style= "font-size:25px; font-family : 'Times New Roman', Times, serif">What is Covid 19?</h3>
         <p style="color:maroon;font-size:15px;">Covid 19 is disease caused by SARS CoV 2, which commonly affects the respiratory system, manifest as common flu, pneumonia, or less frequently acute respiratory distress syndrome. The common symptoms associated with Covid 19 are Cough, difficulty breathing, body aches, loss of taste or smell, sore throat, rhinitis, vomiting, diarrhea.</p>
      </div>

         <h3 style= "font-size:25px; font-family : 'Times New Roman', Times, serif">What tests are available for diagnosis of COVID 19?</h3>
         <p style="color:maroon;font-size:15px;">SARS CoV 2 is an enveloped single stranded RNA virus and has various proteins. The diagnostic test is based on these structures or antibodies produced against the virus.

   </p>

   </div>

</section>

<!-- team section ends -->

<!-- contact section starts  -->

<section class="contact" id="contact">

   <div class="heading">
      <img src="images/heading-img.png" alt="">
      <h3>contact us</h3>
   </div>

   <div class="row">

      <div class="image">
         <img src="images/contact-img.svg" alt="">
      </div>

      <form id="payment" form action="payment" class="form-container" method="post">
         <h3>book a table</h3>
         <input type="text" name="name" required class="box" maxlength="20" placeholder="enter your name">
         <input type="number" name="number" required class="box" maxlength="20" placeholder="enter your number" min="0" max="9999999999" onkeypress="if(this.value.length == 10) return false">
         <input type="number" name="guests" required class="box" maxlength="20" placeholder="userName" min="0" max="99" onkeypress="if(this.value.length == 2) return false">
         <input type="submit" name="send" value="send message" class="btn">
      </form>


   </div>

</section>

<!-- contact section ends -->

<!-- footer section starts  -->

<section class="footer">

   <div class="box-container">

      <div class="box">
         <i class="fas fa-envelope"></i>
         <h3>our email</h3>
         <p>lab@gmail.com</p>
         <p>pathology@gmail.com</p>
      </div>

      <div class="box">
         <i class="fas fa-clock"></i>
         <h3>opening hours</h3>
         <p>07:00am to 09:00pm</p>
      </div>

      <div class="box">
         <i class="fas fa-map-marker-alt"></i>
         <h3>lab location</h3>
         <p>mumbai, india - 400104</p>
      </div>

      <div class="box">
         <i class="fas fa-phone"></i>
         <h3>our number</h3>
         <p>+123-456-7890</p>
         <p>+111-222-3333</p>
      </div>

   </div>

   <div class="credit"> &copy; copyright @ 2022 by <span>mr. web designer</span> | all rights reserved! </div>

</section>

<!-- footer section ends -->

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>