<%@ page language="java" contentType="text/html" %>
<%@include file="header1.jsp" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<title>Category </title>
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
<br><br><br>
<c:if test="${flag}">
<form action="<c:url value="/updateCategory"/>" method="post" enctype="multipart/form-data">

<div class="col-md-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Edit Category</h3>
						<div class="pull-right">
							
						</div>
					</div>
					<div class="panel-body">
						 
					</div>
					<table class="table table-hover" id="dev-table">
						
						<tbody>
						
<tr>
		<td>Category Id</td>
		<td><input type="text" name="catId" value="${categoryData.categoryId}"readonly/></td>
	<tr>
		<td>Category Name</td>
		<td><input type="text" size="50" name="catname" value="${categoryData.categoryName}"/></td>
	</tr>
	
	<tr>
		<td>Category Decription</td>
		<td><input type="text" size="50" name="catDesc" value="${categoryData.categoryDesc}"/></td>
	</tr>
	<td>Category Image</td>
		<td><input type="file" name="cimage"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center>
			<input type="submit" value="Save changes"/>
			</center>
		</td>
	</tr>
	
</table>

 </form>
</c:if>







<div class="row">
<c:if test="${!flag}">
<form action="InsertCatgory" method="post" enctype="multipart/form-data">


<table m.addAttribute("flag",flag); class="table table-hover" id="dev-table">
<div class="col-md-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">&nbsp;&nbsp;&nbsp;&nbsp;Add New Category</h3>
						<div class="pull-right">
							
						</div>
					</div>
					<div class="panel-body">
						 
					</div>
					
						
						<tbody>
						
	<tr>
		<td>&nbsp;&nbsp;Category Name</td>
		<td><input type="text" name="catname" size="50"/></td>
	</tr>
	
	<tr>
		<td>&nbsp;&nbsp;Category Decription</td>
		<td><input type="text" name="catDesc" size="50"></td>
	</tr>
	<td>&nbsp;&nbsp;Category Image</td>
		<td><input type="file" name="cimage"/></td>
	</tr>
	<tr>
	<td colspan="2">
			<center>
			<button type="submit" class="btn btn-primary btn-lg">Add </button>
			</center>
	</td>	
	</tr>
	
						</tbody>
					</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	



</c:if>






			<div class="col-md-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Manage Categories</h3>
						<div class="pull-right">
							
						</div>
					</div>
					<div class="panel-body">
						 
					</div>
					<table class="table table-hover" id="dev-table">
    <thead>
      <tr>
        <th>Category Id</th>
        <th>Category Name</th>
        <th>Category Desc</th>
        <th>Category Image</th>
        <th>Operation</th>
      </tr>
    </thead>
						<tbody>
		<c:forEach items="${categorylist}" var="category">
	<tr>
		<td>${category.categoryId}</td>
		<td>${category.categoryName}</td>
		<td>${category.categoryDesc}</td>
		<td><img height="80" width="80" src="/frontend/resources/images/${category.categoryId}.jpg"></td>
		
		<td>
			<a href="<c:url value='/deleteCategory/${category.categoryId}'/>">Delete</a>
			<a href="<c:url value='/editCategory/${category.categoryId}'/>">Edit</a>
	</tr>
	</c:forEach>

</table>


</body>
</html>






