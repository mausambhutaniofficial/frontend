<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<%-- <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
<body>






<form:form action="../UpdateProduct" modelAttribute="product" method="post" enctype="multipart/form-data">
<div class="col-md-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Edit Products</h3>
						<div class="pull-right">
							
						</div>
					</div>
					<div class="panel-body">
						 
					</div>
					<table class="table table-hover" id="dev-table">
						
						<tbody>
						
<tr>
		
		<td><form:input path="prodId" type="hidden" /></td>
	</tr>
	<tr>
		<td>Product Name</td>
		<td><form:input path="prodName" size="100"/></td>
	</tr>
	
	<tr>
		<td>Product Description</td>
		<td><form:input path="prodDesc" size="100"/></td>
	</tr>
	
	<tr>
		<td>Price</td>
		<td><form:input path="price"/></td>
	</tr>	 
	
	<tr>
		<td>Stock</td>
		<td><form:input path="stock"/></td>
	</tr>
	
	<tr>
		<td>Category</td>
			<td><form:select path="categoryId">
			<form:option value="0" label="--Select list--"/>
			<form:options items="${categoryList}"/>
			</form:select>
		</td>
	</tr>
	
	<tr>
		<td>Supplier</td>
		<td><form:select path="suppId">
		<form:option value="0" label="--Select list--"/>
			<form:options items="${supplierlist}"/>
			</form:select></td>
	</tr>
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="pimage"/></td>
	</tr>
	<tr>
		<td colspan="3">
			<center><input type="submit" value="Save Changes"/></center>
		</td>
	</tr>

</table>
</form:form>

















<%-- <form:form action="../UpdateProduct" modelAttribute="product" method="post" enctype="multipart/form-data">


<table align="center" cellspacing="3">
	<tr bgcolor="pink">
		<center><td colspan="2">Product Manage</td></center>
	</tr>
	
	<tr>
		
		<td><form:input path="prodId" type="hidden" /></td>
	</tr>
	<tr>
		<td>Product Name</td>
		<td><form:input path="prodName"/></td>
	</tr>
	
	<tr>
		<td>Product Description</td>
		<td><form:input path="prodDesc"/></td>
	</tr>
	
	<tr>
		<td>Price</td>
		<td><form:input path="price"/></td>
	</tr>	 
	
	<tr>
		<td>Stock</td>
		<td><form:input path="stock"/></td>
	</tr>
	
	<tr>
		<td>Category</td>
			<td><form:select path="categoryId">
			<form:option value="0" label="--Select list--"/>
			<form:options items="${categoryList}"/>
			</form:select>
		</td>
	</tr>
	
	<tr>
		<td>Supplier</td>
		<td><form:select path="suppId">
		<form:option value="0" label="--Select list--"/>
			<form:options items="${supplierlist}"/>
			</form:select></td>
	</tr>
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="pimage"/></td>
	</tr>
	<tr>
		<td>
			<center><input type="submit" value="Update"/></center>
		</td>
	</tr>

</table>
</form:form>





 --%>







