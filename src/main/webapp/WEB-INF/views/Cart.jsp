<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<head>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<style>





  /*NAVBAR STYLES*/
  .navbar {
    margin-bottom: 0;
    background-color: #42647F !important;
    z-index: 9999;
    border: 0;
    font-size: 15px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
}

.navbar li a, .navbar .navbar-brand {
    color: #fff !important;
     padding: 0 15px;
  height: 60%;
  line-height: 80px;
 
}

.navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
}

.navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
}



#back2Top {
    width: 40px;
    line-height: 40px;
    overflow: hidden;
    z-index: 999;
    display: none;
    cursor: pointer;
    -moz-transform: rotate(270deg);
    -webkit-transform: rotate(270deg);
    -o-transform: rotate(270deg);
    -ms-transform: rotate(270deg);
    transform: rotate(270deg);
    position: fixed;
    bottom: 50px;
    right: 0;
    background-color: #DDD;
    color: #555;
    text-align: center;
    font-size: 30px;
    text-decoration: none;
}
#back2Top:hover {
    background-color: #DDF;
    color: #000;
}













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





<br><br>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<div class="container bootstrap snippet">
    <div class="col-md-12 col-sm-8 content">
                <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info panel-shadow">
                    <div class="panel-heading">
                        <h3>
                           
                           Your Cart
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
                            <c:if test="${empty cartItems}">
								<tr><td colspan="6" ><center>Your Cart is Empty.</center>
							</c:if>
 
								<c:if test="${not empty cartItems}"> 
 
									<c:forEach items="${cartItems}" var="cartItem">
									<form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="get">
                            
                            
                                <tr>
                                    <!-- <td><img src="https://lorempixel.com/400/200/fashion/2/" class="img-cart"></td> -->
                                    <td><strong>${cartItem.prodName}</strong></td>
                                    <td>
<!--                                     <form class="form-inline">
 -->                                        <input name="quantity" type="text" value="${cartItem.quantity}">
                                        <!-- <input type="submit" value="Update" class="btn-btn-info"/> -->
                                        <button rel="tooltip" class="btn btn-primary"type="submit" value="Update"><i class="fa fa-pencil"></i></button>                                   
 										<a href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>" class="btn btn-danger"><i class="fa fa-trash-o"></i></a>			
<!--                                        </form>
 -->                                    </td>
                                    <td>${cartItem.price}</td>
                                    <td>${cartItem.quantity * cartItem.price}</td>
                                
                               </form>
								</c:forEach>
                               
                                <tr>
                                    <td colspan="4" class="text-right"><strong>Total</strong></td>
                                    <td>${totalPurchaseAmount}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                </div>
                <a href="<c:url value="/Productdisplay"/>" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-arrow-left" ></span>&nbsp;Continue Shopping</a>
                <a href="<c:url value="/checkout"/>" class="btn btn-primary pull-right">Next<span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
            </c:if>  
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>