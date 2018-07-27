<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<%-- <jsp:include page="Header.jsp"/> --%>



<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >

<!-- <link href="resources/css/TotalProduct.css" rel="stylesheet" >  -->

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
</head>

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



/*  #back2Top {
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
 */






.item-photo{display:flex;justify-content:center;align-items:center;border-right:1px solid #f6f6f6;}
.btn-success{width:60%;border-radius:0;}
.section{width:100%;margin-left:-15px;padding:2px;padding-left:15px;padding-right:15px;background:#f8f9f9}




 </style>


<br><br><br>
 
  
 
 
 
 
 
 
 
 
 
        	<div class="row">
               <div class="col-xs-4 item-photo">
                    <img style="max-width:100%;" src="<c:url value="/resources/images/${product.prodId}.jpg"/>" width="300" heigt="300"/>
                </div>
                <div class="col-xs-5" style="border:0px solid gray">
                    <!-- Datos del vendedor y titulo del producto -->
                    <h3>${product.prodName}</h3>    
                     <small style="color:#337ab7">(5054 votes)</small></h5>
        
        <br><br>
          ${product.prodDesc}
                    <!-- Precios -->
                    <h6 class="title-price"><small>Our Price</small></h6>
                    <h3 style="margin-top:0px;">&#8377;${product.price}</h3>
        
                    
                    
                      
                    	<form action="<c:url value="/addToCart/${product.prodId}"/>" method="get">
                    <div class="section" style="padding-bottom:20px;">
                        <class="title-attr"><h4>Quantity<select name="quantity"></h4>  
                        <option value="1">1</option>
		<option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option>                  
                        </select>
                    </div>                
        
                    <!-- Botones de compra -->
                    <div class="section" style="padding-bottom:20px;">
                        <button type="submit" class="btn btn-success"><span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add To Cart</button>
                        <h6><span class="glyphicon glyphicon-heart-empty" style="cursor:pointer;"></span>Like</h6>
                    </div>                                        
                </div>                              
        
       
        </form>
              
       
        <%@include file="footer.jsp" %>        
    </body>