<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>

<div class="container">
<form action="<c:url value="/paymentProcess"/>" method="post">
	<table class="table">
	
	<tr>
		<td colspan="2"><center><b>Payment options</b></center></td>
	</tr>
	<tr bgcolor="orange">
<td colspan="4">Total Purchase Amount </td>
<td>&#8377;${totalPurchaseAmount}</td>
</tr>

	
	<tr>
		<td >
			<input type="radio" name="paymenttype" value="CC"/>Credit CArd</td>
			<td  colspan="2"><input type="radio" name="paymenttype" value="COD"/>Cash On Delivery</td>
		</tr>
	
	<tr>
		<td>Cart no:</td>
		<td><input type="text" name="cardno" required></td>
	</tr>
	<tr>
		<td>CVV</td>
		<td><input type="text" name="cvv" required></td>
	</tr>
	<tr>
		<td>Valid Upto</td>
		<td><input type="text" name="validupto" required></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<input type="submit" value="Payment"/>
		</td>
	</tr>
</div>
	</table>
	</form>
	</div>