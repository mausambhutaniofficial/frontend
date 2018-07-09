<%@ page language="java" contentType="text/html" %>
<%@include file="/WEB-INF/views/Header.jsp" %>

<head>
  <title>ShoppingWhopping.com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/index.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
</head>
<body>

<div class="container">
   
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
	  <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/one.png" alt="Los Angeles" height="100%" width="100%"">
      </div>

      <div class="item">
        <img src="resources/images/two.jpg" alt="Chicago" height="100%" width="100%">
      </div>
    
      <div class="item">
        <img src="resources/images/three.jpg" alt="New york" height="100%" width="100%">
      </div>
	  
	  <div class="item">
        <img src="resources/images/four.png" alt="New york" height="100%" width="100%">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<br>
 <h2><center><font face="trebuchet ms"><mark>ShoppingWhopping Exclusives</mark><span class="glyphicon" style="color:#f4511e">&#xe042;</span></center></h2><br><br>

      <div class="row">
      <div class="col-md-1"></div>
      
        <div class="col-md-4">
          
            <a href="#"><img class="card-img-top" src="resources/images/port1.jpeg" width="150" height="250"></a>
        <div class="card-body">
        <h4 class="card-title">
        <a href="/frontend/GetProductByCategory/182">in Headphones</a>
        </h4>
        <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#Headphones">Get Info</button>
  		<div id="Headphones" class="collapse">
    	JBL T450 Headset with Mic Bluetooth Headset with Mic  (Black, Over the Ear)
  		</div>
        </div>
        </div>
        
        <div class="col-md-4 portfolio-item">
          
            <a href="#"><img class="card-img-top" src="resources/images/port2.jpeg" width="150" height="250"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">in Smart Watches</a>
              </h4>
              
              <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#Smart_Watches">Get Info</button>
  <div id="Smart_Watches" class="collapse">
    Apple Watch 38 mm Stainless Steel Case with Modern Buckle - Small  (Pink Strap Small)
  </div>
              
            </div>
          </div>
        
        <div class="col-md-3  portfolio-item">
          
            <a href="#"><img class="card-img-top" src="resources/images/port3.jpeg" width="150" height="250"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">in Men's Shirts </a>
              </h4>
              <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#Men">Get Info</button>
  <div id="Men" class="collapse">
    Peter England University Men's Self Design Casual Spread Shirt
  </div>
            
            </div>
          </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-4  portfolio-item">
          
            <a href="#"><img class="card-img-top" src="resources/images/port4.jpeg" width="150" height="250"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">in Women's Tops/T-Shirts</a>
              </h4>
                <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#Women">Get Info</button>
  <div id="Women" class="collapse">
    AANIA Casual 3/4th Sleeve Embroidered Women Red Top
  </div>
              
              
            </div>
          </div>
        
        <div class="col-md-4 portfolio-item">
          
            <a href="#"><img class="card-img-top" src="resources/images/port5.jpeg" width="150" height="250"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">in iPhones and Mobile Phones</a>
              </h4>
              <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#iPhones_and_Mobile_Phones">Get Info</button>
  <div id="iPhones_and_Mobile_Phones" class="collapse">
    Apple iPhone 8 Plus (Gold, 64 GB)
  </div>
              
            </div>
          </div>
        
        <div class="col-md-3  portfolio-item">
          
            <a href="#"><img class="card-img-top" src="resources/images/port6.jpeg" width="300" height="250"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">in Mac Books and Laptops</a>
              </h4>
              
              <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#Mac_Books_and_Laptops">Get Info</button>
  <div id="Mac_Books_and_Laptops" class="collapse">
    Apple Macbook Pro Core i7 - (16 GB/512 GB SSD/Mac OS Sierra/2 GB Graphics) MLH42HN/A  (15 inch, Space Grey, 1.83 kg)
  </div>
              
            </div>
          </div>
        </div>
        


















<%@include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>


