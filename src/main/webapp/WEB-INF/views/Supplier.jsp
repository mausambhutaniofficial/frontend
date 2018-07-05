<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<title>Supplier </title>
<body>
<br><br><br><br><br>
<br><br><br><br><br>

<c:if test="${flag}">
<form action="<c:url value="/updateSupplier"/>" method="post">
<table> 
	<tr>
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
	
	<tr>
		<td colspan="2">
			<center>
			<input type="submit" value="SUBMIT"/>
			</center>
		</td>
	</tr>
	
</table>

</c:if>
<c:if test="${!flag}">
<form action="InsertSupplier" method="post">

<table m.addAttribute("flag",flag);> 
	<tr>
		<td>Supplier Name</td>
		<td><input type="text" name="supname"/></td>
	</tr>
	
	<tr>
		<td>Supplier Address</td>
		<td><input type="text" name="supaddr"></td>
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

<table align="center">
	<tr bgcolor="pink">
		<td>Supplier Id</td>
		<td>Supplier Name</td>
		<td>Supplier Address</td>
		<td>Operation</td>
	</tr>
	
	<c:forEach items="${supplierlist}" var="supplier">
	<tr>
		<td>${supplier.suppId}</td>
		<td>${supplier.supName}</td>
		<td>${supplier.supAddr}</td>
	
		<td>
			<a href="<c:url value='/deleteSupplier/${supplier.suppId}'/>">Delete</a>
			<a href="<c:url value='/editSupplier/${supplier.suppId}'/>">Edit</a>
	</tr>
	</c:forEach>

</table>
</c:if>

</body>
</html>