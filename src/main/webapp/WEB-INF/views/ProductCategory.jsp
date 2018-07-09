<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
<div class="container">
 
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Product Description</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Category</th>
        <th>Supplier</th>
    
        
      </tr>
    </thead>

</div>
	
	<c:forEach items="${listproductbycategory}" var="product">
	
	<tr>
		<td>${product.prodId}</td>
		<td>${product.prodName}</td>
		<td>${product.prodDesc}</td>
		<td>${product.price}</td>
		<td>${product.stock}</td>
		<td>${product.categoryId}</td>
		<td>${product.suppId}</td>
		
	
</tr>
</c:forEach>
</table>
