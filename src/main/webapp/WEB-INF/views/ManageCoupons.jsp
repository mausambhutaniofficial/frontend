<%@include file="header1.jsp" %>
<%@ page language="java" contentType="text/html" %>

<%@ page isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<title>Coupons </title>
<head><style>





  /*NAVBAR STYLES*/
  .navbar {
    margin-bottom: 0;
    background-color: #42647F;!important
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
  img:url("resources/images/logo.png");
}

.navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
}

.navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
}

.navbar-nav > li > .dropdown-menu {     background-color:#778899;  }









		</style>
    </head>

 <body>
 <c:if test="${flag}">

<form action="<c:url value="/updateCoupon"/>" method="post">
<div class="col-md-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Edit Coupon</h3>
						<div class="pull-right">
							
						</div>
					</div>
					<div class="panel-body">
						 
					</div>
					<table class="table table-hover" id="dev-table">
						
						<tbody>
						
	<tr>
	<td>Coupon Name</td>
		<td><input type="text" name="couponName" value="${couponData.couponName}"/></td>
	</tr>
	<tr>
	<td>Coupon Description</td>
		<td><input type="text" name="couponDesc" value="${couponData.couponDesc}"/></td>
	</tr>
	
	<tr>
		<td>Coupon Value</td>
		<td><input type="text" name="couponValue" value="${couponData.couponValue}"/></td>
	</tr>
	<td colspan="2">
			<center>
			<button type="submit" class="btn btn-primary btn-lg">Save </button>
			</center>
	</td>	
	
						</tbody>
					</table>
					</form>
				</div>
			</div>
		</div>
	</div>



</c:if>








<div class="row">

<c:if test="${!flag}">
<form action="InsertCoupon" method="post" >
<table m.addAttribute("flag",flag);>

<div class="col-md-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Add New Coupon</h3>
						<div class="pull-right">
							
						</div>
					</div>
					<div class="panel-body">
						 
					</div>
					<table class="table table-hover" id="dev-table">
						
						<tbody>
						
	<tr>
	
		<td>Coupon Name</td>
		<td><input type="text" name="couponName"/></td>
	</tr>
	<tr>
	<td>Coupon Description</td>
		<td><input type="text" name="couponDesc" /></td>
</tr>
	
	<tr>
		<td>Coupon Value</td>
		<td><input type="text" name="couponValue" /></td>
</tr>
<tr>
	<td colspan="2">
			<center>
			<button type="submit" class="btn btn-primary btn-lg">Add </button>
			</center>
	</td>	
	
						</tbody>
					</table>
					</form>
				</div>
			</div>
		</div>
	</div>



</c:if>






			<div class="col-md-12">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Manage Coupons</h3>
						<div class="pull-right">
							
						</div>
					</div>
					<div class="panel-body">
						 
					</div>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>
								 <th>Coupon Name</th>
        <th>Coupon Decription</th>
        <th>Coupon Value</th>
        <th>Operation</th>
      </tr>
						</thead>
						<tbody>
							<c:forEach items="${couponlist}" var="coupon">
	<tr>
	
		<td>${coupon.couponName}</td>
		<td>${coupon.couponDesc}</td>
		<td>${coupon.couponValue}</td>
		
		<td>
		
		
	 <%-- <button rel="tooltip" class="btn btn-primary"type="submit" value="Update"><i class="fa fa-pencil"></i></button>                                   
 	<a href="<c:url value='/deleteCoupon/${coupon.couponName}'/>" class="btn btn-danger"><i class="fa fa-trash-o"></i></a> --%>
		
			<a href="<c:url value='/deleteCoupon/${coupon.couponName}'/>">Delete</a>
			<a href="<c:url value='/editCoupon/${coupon.couponName}'/>">Edit</a>
	</tr>
	</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>




</body>
</html>
</html>