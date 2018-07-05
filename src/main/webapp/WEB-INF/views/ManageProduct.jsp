<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<body>
<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>

<%-- <c:if test="${flag}">
<form:form action="<c:url value='/UpdateProduct'/>" modelAttribute="product" method="post">

<table align="center" cellspacing="3">
	<tr bgcolor="pink">
		<center><td colspan="2">Product Manage</td></center>
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
		<td>
			<center><input type="submit" value="Update"/></center>
		</td>
	</tr>

</table>
</form:form>

</c:if> --%>

<c:if test="${!flag}">

<form:form action="<c:url value='/ProductInsert'/>" modelAttribute="product" method="post">

<table align="center" cellspacing="3">
	<tr bgcolor="pink">
		<center><td colspan="2">Product Manage</td></center>
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
		<td>
			<center><input type="submit" value="Save"/></center>
		</td>
	</tr>

</table>
</form:form>
</c:if>
<c:if test="${!flag}">
<table align="center">
	<tr bgcolor="pink">
		<td>Product Id</td>
		<td>Product Name</td>
		<td>Product Description</td>
		<td>Price</td>
		<td>Stock</td>
		<td>Category</td>
		<td>Supplier</td>
		<td>Operation</td>
	</tr>
	
	<c:forEach items="${productList}" var="product">
	
	<tr>
		<td>${product.prodId}</td>
		<td>${product.prodName}</td>
		<td>${product.prodDesc}</td>
		<td>${product.price}</td>
		<td>${product.stock}</td>
		<td>${product.categoryId}</td>
		<td>${product.suppId}</td>
		
		<td>
			<a href="<c:url value='/deleteProduct/${product.prodId}'/>">Delete</a>
			<a href="<c:url value='/editProduct/${product.prodId}'/>">Edit</a>
		
		
</td>
</tr>
</c:forEach>
</table></c:if>



</body>