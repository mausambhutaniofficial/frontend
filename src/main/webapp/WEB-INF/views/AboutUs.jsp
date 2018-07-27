<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>

	<!DOCTYPE html>
<title>AboutUs </title>
</head>
<body>

<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
  .logo-small1 {
      color: #f4511e;
      font-size: 50px;
  } 
  .logo1 {
      color: #f4511e;
      font-size: 200px;
  } 

</style>
  </head>
<body>

<div class="jumbotron text-center">
  <h1>ShoppingWhopping.com</h1> 
  <p>We deliver happiness</p> 
  <form class="form-inline">
    <div class="input-group">
      <input type="email" class="form-control" size="50" placeholder="Email Address" required>
      <div class="input-group-btn">
        <button type="button" class="btn btn-danger">Subscribe</button>
      </div>
    </div>
  </form>
</div>

<!-- Container (About Section) -->

<h2><center>About Us</center></h2>
<br><br>
<img src="https://cdn.shopclues.com/images/banners/Work/FooterPages/AboutUs/brand-banner.jpg">
  <div class="row">
    <div class="col-sm-8">
      
         
      <p><br><br>
At ShoppingWhopping, we passionately believe in keeping our customer's interest on top of everything else. Our day begins and ends with the aim of keeping our customers happy and with that goal in mind we promise you our Band of Trust. Band of Trust comprises of our values with which we aim to consistently deliver a trusted shopping experience to all our customers:
</p>
      <!-- <button class="btn btn-default btn-lg">Get in Touch</button> -->
    </div>
    
    <div class="col-sm-4">
    <br>  <img width="350" height="200" src="https://surveyanyplace.com/wp-content/uploads/Customer-Satisfaction.png">
    </div>
  </div>



  <div class="row">
    <div class="col-sm-4">
      <img src="https://cdn3.nbrii.com/wp-content/uploads/2011/02/bigstock-165991205-300x200.jpg">
    </div>
    <div class="col-sm-8">
    <br>
      <p>Our aim is to provide you with a wide selection of products across categories.We strongly believe that a good shopping experience is not fully delivered until the products and services sold are competitively priced. Hence, we encourage merchants to offer products at the most competitive price</p>
     
    </div>
  </div>


<!-- Container (Services Section) -->
<div class="container-fluid text-center">
  <h2>SERVICES</h2>
  <h4>What we offer</h4>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-off logo-small1"></span>
      <h4>POWER</h4>
      
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-heart logo-small1"></span>
      <h4>LOVE</h4>
      
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-lock logo-small1"></span>
      <h4>JOB DONE</h4>
      
    </div>
  </div>
  <br><br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-leaf logo-small1"></span>
      <h4>GREEN</h4>
      
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-certificate logo-small1"></span>
      <h4>CERTIFIED</h4>
      
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small1"></span>
      <h4 style="color:#303030;">HARD WORK</h4>
      
    </div>
  </div>
</div>





<%@include file="footer.jsp" %>
</body>
</html>