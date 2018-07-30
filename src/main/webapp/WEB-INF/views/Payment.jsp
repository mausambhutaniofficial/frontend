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
<center>
<i class="fa fa-credit-card-alt" style="font-size:42px"></i>&nbsp;&nbsp;
<i class="fa fa-cc-visa" style="font-size:42px;color:blue"></i>&nbsp;&nbsp;
<i class="fa fa-money"style="font-size:42px";></i>&nbsp;&nbsp;
<i class="fa fa-cc-mastercard" style="font-size:42px;color:red"></i>&nbsp;&nbsp;</center>
<table>

<tr>
<td><input type="radio"  name="aorb" onClick="hideCOD()"/>Credit Card</td>&nbsp;&nbsp;
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
	
 	<br>
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

 
 <div class="col-md-4">
 <div class="coupon">
  <div class="container">
    
  </div>
  <img src="data:image/png;base64,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" height="50" width="100">
  <div class="container" style="background-color:white">
    <h2><b>FLAT Rs.150 OFF YOUR PURCHASE</b></h2> 
      </div>
  <div class="container">
    <p>Use Promo Code: <span class="promo">FLAT150</span></p>
    <hr>
  </div>
</div>
  <img src="data:image/png;base64,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" height="50" width="100">
  <div class="container" style="background-color:white">
    <h2><b>50% OFF YOUR PURCHASE</b></h2> 
      </div>
  <div class="container">
    <p>Use Promo Code: <span class="promo">NEW50</span></p>
    <hr>
  </div>
</div>


 
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