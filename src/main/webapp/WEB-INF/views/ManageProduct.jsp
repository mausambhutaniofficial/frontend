<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<body>

<br>
<div class="row">

<c:if test="${!flag}">

<form:form action="/frontend/ProductInsert" modelAttribute="product" method="post" enctype="multipart/form-data">


<div class="col-md-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Add New Product</h3>
						<div class="pull-right">
							
						</div>
					</div>
					<div class="panel-body">
						 
					</div>
					<table class="table table-hover" id="dev-table">
						
						<tbody>
						
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
		<td colspan="2">
			<center><input class="btn btn-primary btn-lg" type="submit" value="Add"/></center>
		</td>
	</tr>

</table>
</form:form>
</c:if>
</div>
</div>

<br><br><br>

<c:if test="${!flag}">
			<div class="col-md-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Manage Products</h3>
						<div class="pull-right">
							
						</div>
					</div>
					<div class="panel-body">
						 
					</div>
					<table class="table table-hover" id="dev-table">
	<thead>
      <tr>
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Product Description</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Category</th>
        <th>Supplier</th>
        <th>Operation</th>
        
      </tr>
    </thead>
					<tbody>
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






