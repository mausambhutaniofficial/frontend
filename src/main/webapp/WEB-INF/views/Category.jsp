<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<title>Category </title>
<body>
<br><br><br><br><br><br>
<c:if test="${flag}">

<form action="<c:url value="/updateCategory"/>" method="post">
 <table>
	<tr>
		<td>Category Id</td>
		<td><input type="text" name="catId" value="${categoryData.categoryId}"readonly/></td>
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catname" value="${categoryData.categoryName}"/></td>
	</tr>
	
	<tr>
		<td>Category Decription</td>
		<td><input type="text" name="catDesc" value="${categoryData.categoryDesc}"/></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<center>
			<input type="submit" value="SUBMIT"/>
			</center>
		</td>
	</tr>
	
</table>

 </form>
</c:if>
<c:if test="${!flag}">
<form action="InsertCatgory" method="post">


<table m.addAttribute("flag",flag); align="center" cellspacing="3" class="table">
 <tr bgcolor="pink">
 	<td colspan="2"><center><b>Manage Categories</b></center></td>
 </tr> 
 
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catname"/></td>
	</tr>
	
	<tr>
		<td>Category Decription</td>
		<td><input type="text" name="catDesc"></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<center>
			<input type="submit" value="SUBMIT"/>
			</center>
		</td>
	</tr>
	
</table>
</form>
<br>
<hr>
<div class="container">
 
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Category Id</th>
        <th>Category Name</th>
        <th>Category Desc</th>
        <th>Operation</th>
      </tr>
    </thead>

</div>
	
	<c:forEach items="${categorylist}" var="category">
	<tr>
		<td>${category.categoryId}</td>
		<td>${category.categoryName}</td>
		<td>${category.categoryDesc}</td>
		
		<td>
			<a href="<c:url value='/deleteCategory/${category.categoryId}'/>">Delete</a>
			<a href="<c:url value='/editCategory/${category.categoryId}'/>">Edit</a>
	</tr>
	</c:forEach>

</table>
</c:if>

</body>
</html>