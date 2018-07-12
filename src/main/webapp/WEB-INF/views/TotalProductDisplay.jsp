<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>

<div class="container">
<table class="table">

<tr>
	<td rowspan="9">
		<img src="<c:url value="/resources/images/${product.prodId}.jpg"/>" width="300" heigt="300">
		</td>
		</tr>
<tr>
	<td>Product Id</td>
	<td>${product.prodId}</td>
	</tr>
		
<tr>
	<td>Product Name</td>
	<td>${product.prodName}</td>
	</tr>
	<tr>
	<tr>
	<td>Product Description</td>
	<td>${product.prodDesc}</td>
	</tr>
	<td>Price</td>
	<td>${product.price}</td>
	</tr>
		<tr>
	<td>Supplier Id</td>
	<td>${product.suppId}</td>
	</tr>
	<tr>
	<td>Category</td>
	<td>${CategoryName}</td>
	</tr>
	<form action="<c:url value="/addToCart/${product.prodId}"/>" method="get">	<tr>
	<td>Quantity</td>
	<td>
		<select name="quantity" class="form-control btn-block">
		<option value="1">1</option>
		<option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option>
		</select>
	
	</td>
	</tr>
	<tr>
	<td colspan="2" >
	<input type="submit" value="AddToCart" class="btn btn-info btn-block"/>
	</td>
	</tr>
	</form>
</table>



</div>