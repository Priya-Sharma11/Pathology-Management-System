<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title style= text-align: center;>Patient's Profile    </title>

    <meta name="author" content="Codeconvey" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>

    <!--Only for demo purpose - no need to add.-->
    <link rel="stylesheet" href="css/demo.css" />

	    <link rel="stylesheet" href="css/style.css">
</head>
<style>
title{
text-align: center;
}
body {
  background-image:url(https://images.ctfassets.net/oc83wx5cwffk/spu_wysiwyg_fid30318_asset/5be584bd64628d4b521375eeaad6ad0b/lab_samples12822469_M.jpg?fm=webp&fit=thumb&q=65&w=884&h=633);
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  font-family: "Open Sans", sans-serif;
  color: #333333;
}
.avatar {
  vertical-align: middle;
  width: 50px;
  height: 50px;
  border-radius: 50%;
}

.profile-pic {
    width: 200px;
    max-height: 200px;
    display: inline-block;
}

img {
    max-width: 100%;
    height: auto;}

/*icon--*/
body {margin:10}

.icon-bar {
  float:right;
  width: 40px;
  background-color: #559;
}
.icon-bar a {
  display: block;
  text-align: center;
  padding: 16px;
  transition: all 0.3s ease;
  color: white;
  font-size:20px;
}

.icon-bar a:hover {
  background-color: hotpink;
}

.active {
  background-color: #558;
}


.book a:link, a:visited {
  background-color: #550 ;
  color: black;
  border: 2px solid green;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

.book a:hover, a:active {
  background-color: hotpink;
  color: white;
}
.profile{
 text-align:center;
 color:#559;
}
.mb-0{
color: #559;
}

</style>
<body>

<!-- header section starts  -->
<div class="icon-bar">
  <a class="active" href="#"><i class="fa fa-home"></i></a>
  <a href="#"><i class="fa fa-search"></i></a>
  <a href="#"><i class="fa fa-envelope"></i></a>

</div>


<!-- header section ends -->
<header class="ScriptHeader">
    <div class="rt-container">
    	<div class="col-rt-12">
        	<div class="rt-heading">
            	<h1 class="profile">Patient's Profile </h1>

            </div>
        </div>
    </div>
</header>

<section>
    <div class="rt-container">
          <div class="col-rt-12">
              <div class="Scriptcontent">

<!-- Student Profile -->
<div class="student-profile py-4">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent text-center">

            <div class="row">
               <div class="small-12 medium-2 large-2 columns">
                 <div class="circle">
                   <img class="profile-pic" src="https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg">

                 </div>
                 <div class="p-image">
                   <i class="fa fa-camera upload-button"></i>
                    <input class="file-upload" type="file" accept="image/*"/>
                 </div>
              </div>
            </div>

          </div>
          <div class="card-body">
            <p class="mb-0"><strong class="pr-1">Name:</strong>Priya Sharma</p>
            <p class="mb-0"><strong class="pr-1">Email:</strong>ps25283@gmail.com</p>
            <p class="mb-0"><strong class="pr-1">Sex:</strong>Female</p>
            <p class="mb-0"><strong class="pr-1">Age:</strong>22</p>
            <p class="mb-0"><strong class="pr-1">Phone Number:</strong>1234567890</p>

          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Information</h3>
          </div>
          <div class="card-body pt-0">
            <table class="table table-bordered">
              <tr>
                <th width="30%">Test</th>
                <td width="2%">:</td>
                <td>Blood Sugar Test</td>
              </tr>
              <tr>
                <th width="30%">Date Schedule: 	</th>
                <td width="2%">:</td>
                <td>16.02.2023</td>
              </tr>
              <tr>
                <th width="30%">Doctor Name</th>
                <td width="2%">:</td>
                <td>Dr. XYZ </td>
              </tr>
              <tr>
                <th width="30%">Religion</th>
                <td width="2%">:</td>
                <td>Hindu</td>
              </tr>
              <tr>
                <th width="30%">Blood Group</th>
                <td width="2%">:</td>
                <td>B+</td>
              </tr>
            </table>
            <div class="container">
                  <button id="pdfButton"><b>Click here to Generate PDF</b></button>
                  <div class="card" id="generatePDF">
             </div>
          </div>
        </div>
          <div style="height: 26px"></div>
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"> <a href="tests.jsp">Want to Book Another Test?</a></i></h3>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- partial -->

    		</div>
		</div>
    </div>
</section>


 <script>
      var button = document.getElementById("pdfButton");
      var makepdf = document.getElementById("generatePDF");
      button.addEventListener("click", function () {
         var mywindow = window.open("", "PRINT", "height=600,width=600");
         mywindow.document.write(makepdf.innerHTML);
         mywindow.document.close();
         mywindow.focus();
         mywindow.print();
         return true;
      });


  $(document).ready(function() {

      var readURL = function(input) {
          if (input.files && input.files[0]) {
              var reader = new FileReader();

              reader.onload = function (e) {
                  $('.profile-pic').attr('src', e.target.result);
              }

              reader.readAsDataURL(input.files[0]);
          }
      }


      $(".file-upload").on('change', function(){
          readURL(this);
      });

      $(".upload-button").on('click', function() {
         $(".file-upload").click();
      });
  });
  </script>
    <!-- Analytics -->

	</body>
</html>