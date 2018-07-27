<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<title>Supplier </title>
<style>

  /*NAVBAR STYLES*/
  .navbar {
    margin-bottom: 0;
    background-color: #42647F;!important
    z-index: 9999;
    border: 0;
    font-size: 15px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
}

.navbar li a, .navbar .navbar-brand {
    color: #fff !important;
     padding: 0 15px;
  height: 60%;
  line-height: 80px;
  img:url("resources/images/logo.png");
}

.navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
}

.navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
}

.navbar-nav > li > .dropdown-menu {     background-color:#778899;  }

</style>
</style>
<body>
<br><br>


<c:if test="${flag}">
<form action="<c:url value="/updateSupplier"/>" method="post" enctype="multipart/form-data">

<div class="col-md-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Edit Suppliers</h3>
						<div class="pull-right">
							
						</div>
					</div>
					<div class="panel-body">
						 
					</div>
					<table class="table table-hover" id="dev-table">
						
						<tbody>
						
<td>Supplier Id</td>
		<td><input type="text" name="supId" value="${supplierData.suppId}"readonly/></td>
	<tr>
		<td>Supplier Name</td>
		<td><input type="text" name="supname" value="${supplierData.supName}"/></td>
	</tr>
	
	<tr>
		<td>Supplier Address</td>
		<td><input type="text" name="supaddr" value="${supplierData.supAddr}"/></td>
	</tr>
	
	<td>Supplier Image</td>
		<td><input type="file" name="simage"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center>
			<input type="submit" value="Save changes"/>
			</center>
		</td>
	</tr>
	
</table>

</c:if>






















<c:if test="${!flag}">
<form action="InsertSupplier" method="post" enctype="multipart/form-data">

<table m.addAttribute("flag",flag);class="table table-hover" id="dev-table">

<div class="col-md-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Add New Supplier</h3>
						<div class="pull-right">
							
						</div>
					</div>
					<div class="panel-body">
						 
					</div>
					
						
						<tbody>
						
<tr>
		<td>Supplier Name</td>
		<td><input type="text" name="supname"/></td>
	</tr>
	
	<tr>
		<td>Supplier Address</td>
		<td><input type="text" name="supaddr"></td>
	</tr>
	<tr>
	<td>Supplier Image</td>
		<td><input type="file" name="simage"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center>
			<input type="submit" class="btn btn-primary btn-lg" value="Add"/>
			</center>
		</td>
	</tr>

</table>
</table>
</form>
</c:if>
</div>
</div>
</div>

<br><br><br>

<c:if test="${!flag}">
			<div class="col-md-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Manage Suppliers</h3>
						<div class="pull-right">
							
						</div>
					</div>
					<div class="panel-body">
						 
					</div>
					<table class="table table-hover" id="dev-table">
	<thead>
      <tr>
        <th>Supplier Id</th>
        <th>Supplier Name</th>
        <th>Supplier Address</th>
        <th>Supplier Image</th>
        <th>Operation</th>
 		       
        
      </tr>
    </thead>					<tbody>
		<c:forEach items="${supplierlist}" var="supplier">
	<tr>
		<td>${supplier.suppId}</td>
		<td>${supplier.supName}</td>
		<td>${supplier.supAddr}</td>
		<td><img height="80" width="80" src="/frontend/resources/images/${supplier.suppId}.jpg"></td>
	
		<td>
			<a href="<c:url value='/deleteSupplier/${supplier.suppId}'/>">Delete</a>
			<a href="<c:url value='/editSupplier/${supplier.suppId}'/>">Edit</a>
	</tr>
	</c:forEach>

</table>
</c:if>

</body>
</html>





















