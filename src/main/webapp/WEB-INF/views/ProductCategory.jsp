<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp"%>
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




.search-form .form-group {
  float: right !important;
  transition: all 0.35s, border-radius 0s;
  width: 32px;
  height: 32px;
  background-color: #fff;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
  border-radius: 25px;
  border: 1px solid #ccc;
}
.search-form .form-group input.form-control {
  padding-right: 20px;
  border: 0 none;
  background: transparent;
  box-shadow: none;
  display:block;
}
.search-form .form-group input.form-control::-webkit-input-placeholder {
  display: none;
}
.search-form .form-group input.form-control:-moz-placeholder {
  /* Firefox 18- */
  display: none;
}
.search-form .form-group input.form-control::-moz-placeholder {
  /* Firefox 19+ */
  display: none;
}
.search-form .form-group input.form-control:-ms-input-placeholder {
  display: none;
}
.search-form .form-group:hover,
.search-form .form-group.hover {
  width: 100%;
  border-radius: 4px 25px 25px 4px;
}
.search-form .form-group span.form-control-feedback {
  position: absolute;
  top: -1px;
  right: -2px;
  z-index: 2;
  display: block;
  width: 34px;
  height: 34px;
  line-height: 34px;
  text-align: center;
  color: #3596e0;
  left: initial;
  font-size: 14px;
}
</style>

 
 <div class="container bootstrap snippet">
    <div class="col-md-12 col-sm-8 content">
                <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info panel-shadow">
                    <div class="panel-heading">
                        <h3>
                           
                          View by Categories
                        </h3>
                    </div>
                    <div class="panel-body"> 
                        <div class="table-responsive">
                        <table class="table">
                            <thead>
              				<tr>
              					<th></th>
                                <th>Product Name</th>
            					<th>Product Description</th>                    
                                
                                <th>Price</th>
                                
                            </tr>
                            </thead>
                            <tbody>
                								
                            
                            
                            <c:forEach items="${listproductbycategory}" var="product">
                               
                                <tr>
                                    <td><img height="80" width="80" src="/frontend/resources/images/${product.prodId}.jpg"></td>
                                <td>${product.prodName}</td>
                                    <td>${product.prodDesc}</td>
									<td>${product.price}</td>
									
								</tr>	
               					 </c:forEach>                                                    
                              
						       
                                
                            </tbody>
                        </table>
                   
                </div>
                </div>
               
                
                </div>
            </div>
             
        </div>
    </div>
</div>