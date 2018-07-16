<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>



<div class="container">
<table class="table">
<tr>
<td colspan="6"><center><h3>Your Order</h3></center>
<tr>
<td> SL # </td>
<td> Product Name</td>
<td> Quantity</td>
<td> Price</td>
<td> Total Price</td>

</tr>

<c:if test="${empty cartItems}" var="cartItem">
<tr><td colspan="6"><center>!!! Your Cart is Empty !!!</center></td></tr>
</c:if>

<c:if test="${not  empty cartItems}">
<c:forEach items="${cartItems }" var="cartItem">
<form action="<c:url value="/updateCartItem/${cartItem.cartItemId }"/>" method="get">
<tr>
<td></td>
<td>${cartItem.prodName }</td>
<td><input type="text" value=" ${cartItem.quantity }"/></td>
<td>${cartItem.price }</td>
<td>${cartItem.quantity * cartItem.price }</td>
<td>

</td>
</tr>

</form>
</c:forEach>
</c:if>
<tr bgcolor="orange">
<td colspan="4">Total Purchase Amount </td>
<td>${totalPurchaseAmount }</td>
</tr>

<tr bgcolor="lightBlue">
<td colspan="3"><a href="<c:url value="/continueShopping"/>" class="btn btn-info">Continue Shopping</a></td>
<td colspan="3"><a href="<c:url value="/payment"/>" class="btn btn-info">Payment</a></td>
</tr>

</table>
</div>
