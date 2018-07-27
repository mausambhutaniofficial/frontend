<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
h1.page-header {
    margin-top: -5px;
}

.sidebar {
    padding-left: 0;
}

.main-container { 
    background: #FFF;
    padding-top: 15px;
    margin-top: -20px;
}

.footer {
    width: 100%;
}  
</style>
</head>
<nav class="navbar navbar-default navbar-static-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">			
			
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value='/home'/>" >Visit Site<span class="glyphicon glyphicon-home"></span></i></a></li>
				
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
	<div class="container-fluid main-container">
		<div class="col-md-2 sidebar">
			<ul class="nav nav-pills nav-stacked">
				<li class="active"><a href="<c:url value='/home'/>">Home</a></li>
				<li><a href="<c:url value='/category'/>">Manage Category <span class="glyphicon glyphicon-send"></span></a></li>
				<li><a href="<c:url value='/supplier'/>">Manage Supplier<span class="glyphicon glyphicon-user"></span></a></li>
				<li><a href="<c:url value='/product'/>">Manage Product<span class="glyphicon glyphicon-shopping-cart"></span></a></li>
				<li><a href="<c:url value='/coupon'/>">Manage Coupons<span class="glyphicon glyphicon-tags"></span></a></li>
                  
                  

			</ul>
		</div>
		
		<div class="col-md-10 content">
		
		<div class="jumbotron text-center">
  <h1>ShoppingWhopping.com</h1> 
  <p>One Stop Shop</p> 
  
  
</div>
		
            <div class="panel panel-default">
                <div class="panel-heading">
                    Dashboard
                </div>
                <div class="panel-body">
                    Welcome Admin.<br>
                    As an Admin you can Manage Categories,Suppliers and Products.
                </div>
            </div>
		</div>
		<footer class="pull-left footer">
			<p class="col-md-12">
				<hr class="divider">
				Copyright &COPY; 2018<a href="<c:url value='/home'/>"> ShoppingWhopping.com</a>
			</p>
		</footer>
	</div>
	
	
	<%@include file="footer.jsp" %>
	</body>