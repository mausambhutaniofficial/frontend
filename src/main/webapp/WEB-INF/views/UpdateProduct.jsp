<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<%-- <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<body>
<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
<form:form action="../UpdateProduct" modelAttribute="product" method="post" enctype="multipart/form-data">


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
