<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body>
 
 
<br><br>
<br>
    <div class="col-md-8 ">
            <div class="well well-sm">
                <!-- <form class="form-horizontal" method="post"> -->
                    <fieldset>
                        <legend><center><font face="trebuchet ms" size="10">Secured Payment<i style="font-size:64px" class="fa">&#xf046;</i></font></center></legend>
                        <br>
						<center><mark><font face="trebucet ms" size="4px">Amount to be paid: &#8377;${totalPurchasedAmount}</font></mark></center>
						<br><br>
						Got a PromoCode? Apply Here:<br><br>
						<form action="/frontend/applyoffer" method="post">
			<input name="couponcode" type="text">
			<input type="text" name="totalamount" value="${totalPurchasedAmount}" hidden>
			<input type="submit" class="btn btn-primary" class="btn btn-info" value="Apply"/>
			<!-- <input type="button" class="btn btn-primary" class="btn btn-info" value="Apply" onclick="location.href = '/frontend/applyoffer;"></center> -->
			</form>
						                      
						                      <br>
<center>Please select one of the Payment Options below:</center>

<i class="fa fa-credit-card-alt" style="font-size:42px"></i>&nbsp;&nbsp;
<i class="fa fa-cc-visa" style="font-size:42px;color:blue"></i>&nbsp;&nbsp;
<i class="fa fa-money"style="font-size:42px";></i>&nbsp;&nbsp;
<i class="fa fa-cc-mastercard" style="font-size:42px;color:red"></i>&nbsp;&nbsp;
<table>

<tr>
<td><input type="radio"  name="aorb" onClick="hideCOD()"/>Credit Card</td>
<td><input type="radio"  name="aorb" onClick="hideCC()" />Cash On Delivery </td>
</tr> 


</table>

 

<br><br><br>
<hr>
<br><br>

<div style="position: absolute; left: 10px; top: 100px; visibility:hidden" id="cod"><br/>
<br><br><br><br><br><br><br><br><br><br><br><br>
		
<form action="<c:url value="/paymentProcess"/>" method="post">
	
	

		
		<input type="text" name="totalPurchasedAmount" value="${totalPurchasedAmount}" hidden>
	
 	
	&nbsp;&nbsp;&nbsp;Continue to use Cash on Delivery
	<input type="text" name="paymenttype" value="COD" hidden/>
			<input type="submit" value="Continue"/>
			
	
</form>
</div>



<div style="position: absolute; left: 10px; top: 100px; visibility:hidden" id="CC"><br/><div class="container">

<br><br><br><br><br><br><br><br><br><br><br><br>
<form action="<c:url value="/paymentProcess"/>" method="post">
	
	
	
 	
			<input type="checkbox" name="paymenttype" value="CC"/>Credit CArd
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="paymenttype" value="DC"/>Debit CArd
		<br><br>
		
	
	
	Card no:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="cardno" required>
<br><br>

		CVV:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="cvv" required>
	
	<br><br>
		Valid Upto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="validupto" required>
	<br>
	
	
		
			<input type="submit" value="Payment"/>
			
		
</div>

</form>
</div></div>

</fieldset>
</div>

 
<br>


<script language="Javascript">
function hideCOD()
{

    document.getElementById("cod").style.visibility="hidden";
    document.getElementById("CC").style.visibility="visible";    

}

function hideCC()
{
	console.log("cc methd is called")
   
    document.getElementById("cod").style.visibility="visible";
	 document.getElementById("CC").style.visibility="hidden";
}
</script>
 
 
 

 
</body>
</html>

 <%--  <div class="container">


			<form action="/frontend/applyoffer" method="post">
			<input name="couponcode" type="text">
			<input type="text" name="totalamount" value="${totalPurchasedAmount}" hidden>
			<input type="submit" value="Apply Offer"/>
			</form>
		
<form action="<c:url value="/paymentProcess"/>" method="post">
	<table class="table">
	
	<tr>
		<td colspan="2"><center><b>Payment options</b></center></td>
	</tr>
	<tr bgcolor="orange">
<td colspan="4">Total Purchase Amount </td>
<td>&#8377;${totalPurchasedAmount}</td>
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
		
		<td><input type="text" name="totalPurchasedAmount" value="${totalPurchasedAmount}" hidden></td>
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


 --%>