<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<head>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<style>
.img-cart {
    display: block;
    max-width: 50px;
    height: auto;
    margin-left: auto;
    margin-right: auto;
}
table tr td{
    border:1px solid #FFFFFF;    
}

table tr th {
    background:#eee;    
}

.panel-shadow {
    box-shadow: rgba(0, 0, 0, 0.3) 7px 7px 7px;
}
</style>
</head>


<body>
<br><br>
<div class="container bootstrap snippet">
    <div class="col-md-12 col-sm-8 content">
                <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info panel-shadow">
                    <div class="panel-heading">
                        <h3>
                           
                           Review your Order
                        </h3>
                    </div>
                    <div class="panel-body"> 
                        <div class="table-responsive">
                        <table class="table">
                            <thead>
                            					<tr>
                                <th>Product</th>
                                
                                <th>Qty</th>
                                <th>Price</th>
                                <th>Total</th>
                            </tr>
                            </thead>
                            <tbody>
                           <c:if test="${empty cartItems}" var="cartItem">
								<tr><td colspan="6"><center>!!! Your Cart is Empty !!!</center></td></tr>
							</c:if>

							<c:if test="${not  empty cartItems}">
								<c:forEach items="${cartItems }" var="cartItem">
								<form action="<c:url value="/updateCartItem/${cartItem.cartItemId }"/>" method="get">
								
                            
                            
                                <tr>
                                    <!-- <td><img src="https://lorempixel.com/400/200/fashion/2/" class="img-cart"></td> -->
                                    <td><strong>${cartItem.prodName}</strong></td>
                                    <td>
<!--                                    
 -->                                        ${cartItem.quantity}
                                        
                                        </td>
                                    <td>${cartItem.price}</td>
                                    <td>${cartItem.quantity * cartItem.price}</td>
                                
                               </form>
								</c:forEach>
								</c:if>
                               
                                <tr>
                                    <td colspan="4" class="text-right"><strong>Total</strong></td>
                                    <td>&#8377;${totalPurchaseAmount}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                </div>
                <a href="<c:url value="/Productdisplay"/>" class="btn btn-success"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp;Continue Shopping</a>
                <a href="<c:url value="/payment"/>" class="btn btn-primary pull-right">Payment<span class="glyphicon glyphicon-chevron-right"></span></a>
                
            </div>
             
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>