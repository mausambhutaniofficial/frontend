<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>



<div class="container">
<table class="table">
<tr>
	<td>SL #</td>
	<td>Product Name</td>
	<td>Quantity</td>
	<td>Price</td>
	<td>Total Price</td>
	<td>Operation</td>
</tr>
 <c:if test="${empty cartItems}">
<tr><td colspan="6" ><center>Your Cart is Empty.</center>
</c:if>
 
<c:if test="${not empty cartItems}"> 
 
<c:forEach items="${cartItems}" var="cartItem">
<form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="get">
<tr>
	<td></td>
	<td>${cartItem.prodName}</td>
	<td><input type="text" value="${cartItem.quantity}" name="quantity"></td>
	<td>${cartItem.price}</td>
	<td>${cartItem.quantity*cartItem.price}</td>

	<td>
	<input type="submit" value="Update" class="btn-btn-info"/>
	<a href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>" class='btn btn-danger'>Delete</a>
</td>
</tr>
</form>
</c:forEach>
<tr>
	<td colspan="4">Total Purchase Amount</td>
	<td>${totalPurchaseAmount}</td>
	</tr>
	<tr>
	<td colspan="3"><a href="<c:url value="/continueShopping"/>" class=btn-btn-info>Continue Shopping</a></td>
	<td colspan="3"><a href="<c:url value="/checkout"/>" class=btn-btn-info>Checkout</a></td>
		</tr>
		</c:if>  
</table>
</div>