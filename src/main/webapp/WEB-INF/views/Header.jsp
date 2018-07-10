<%@ page language="java" contentType="text/html"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="resources/css/header.css" rel="stylesheet" >

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
   </head>
<body>

<nav class="navbar navbar-dark navbar-static-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value='/home'/>">
				<img src='<c:url value="resources/images/logo.png"></c:url>'>
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">			
			<!-- <form class="navbar-form navbar-left" method="GET" role="search">
				<div class="form-group">
					<input type="text" name="q" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
			</form> -->
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value='/home'/>"> Home</a></li>
            <li><a href="<c:url value='/login'/>">Login</a></li>
            <li><a href="<c:url value='/register'/>">Register</a></li>
             <li><a href="<c:url value='/productdisplay'/>">ProductDisplayr</a></li>
            <li><a href="<c:url value='/category'/>">Category</a></li>
            <li><a href="<c:url value='/contactus'/>">ContactUs</a></li>
            <li><a href="<c:url value='/aboutus'/>">AboutUs</a></li>
            <li><a href="<c:url value='/Admin'/>">Admin</a></li>
				
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>



<a id="back2Top" title="Back to top" href="#"><center>&#10148;</center></a>
<script>
  /*Scroll to top when arrow up clicked BEGIN*/
$(window).scroll(function() {
    var height = $(window).scrollTop();
    if (height > 100) {
        $('#back2Top').fadeIn();
    } else {
        $('#back2Top').fadeOut();
    }
});
$(document).ready(function() {
    $("#back2Top").click(function(event) {
        event.preventDefault();
        $("html, body").animate({ scrollTop: 0 }, "slow");
        return false;
    });

});
 /*Scroll to top when arrow up clicked END*/

</script>




<%-- <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage"><img src="././images/logo.png" height="100" width="250"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
            
            <li><a href="<c:url value='/home'/>"> Home</a></li>
            <li><a href="<c:url value='/login'/>">Login</a></li>
            <li><a href="<c:url value='/register'/>">Register</a></li>
            <li><a href="<c:url value='/contactus'/>">ContactUs</a></li>
            <li><a href="<c:url value='/aboutus'/>">AboutUs</a></li>
            <li><a href="<c:url value='/category'/>">Manage Category</a></li>
           <li><a href="<c:url value='/supplier'/>">Supplier</a></li>
            <li><a href="<c:url value='/product'/>">Manage Product</a></li>
            <li><a href="<c:url value='/Admin'/>">Admin</a></li>
            

      </ul>
    </div>
  </div>
</nav>
 --%>