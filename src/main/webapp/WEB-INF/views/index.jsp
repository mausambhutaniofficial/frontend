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
 <h2><center><font face="trebuchet ms"><mark>ShoppingWhopping Categories</mark><span class="glyphicon" style="color:#f4511e">&#xe042;</span></center></h2><br><br>

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
                <a href="/frontend/GetProductByCategory/186">in Smart Watches</a>
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
                <a href="/frontend/GetProductByCategory/196">in Men's Shirts </a>
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
                <a href="/frontend/GetProductByCategory/220">in Women's Tops/T-Shirts</a>
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
                <a href="/frontend/GetProductByCategory/222">in iPhones and Mobile Phones</a>
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
                <a href="/frontend/GetProductByCategory/223">in Mac Books and Laptops</a>
              </h4>
              
              <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#Mac_Books_and_Laptops">Get Info</button>
  <div id="Mac_Books_and_Laptops" class="collapse">
    Apple Macbook Pro Core i7 - (16 GB/512 GB SSD/Mac OS Sierra/2 GB Graphics) MLH42HN/A  (15 inch, Space Grey, 1.83 kg)
  </div>
              
            </div>
          </div>
        </div>
        
<hr>
<h2><center><font face="trebuchet ms"><mark>ShoppingWhopping Exclusives</mark><span class="glyphicon" style="color:#f4511e">&#xe042;</span></center></h2><br><br>
<div class="row">
  <div class="column">
    <div class="card">
      <center><img  src="resources/images/ex1.jpeg" alt="Jane" width="200" height="300"></center>
      <div class="container">
        <h4>Apple iPhone X (Space Gray)</h4>
        <p class="title">Apple</p>
        <p>64 GB ROM <br>
        5.8 inch Super Retina HD Display<br>
        12MP + 12MP Dual Rear Camera | 7MP Front Camera<br>
        A11 Bionic Chip with 64-bit Architecture, Neural Engine,<br> Embedded M11 Motion Coprocessor Processor</p>
        <p><button class="button">&#8377;88,999</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <center><img src="resources/images/ex2.jpg" alt="Mike" width="200" height="300"></center>
      <div class="container">
        <h4>OnePlus 6 (Mirror Black)</h4>
        <p class="title">OnePlus</p>
        <p>6 GB RAM | 64 GB ROM | Expandable Upto 400 GB<br>
        6.28-inch Full HD Display<br>
        20MP+16MP primary dual camera with OIS, Super Slow motion,<br> Portrait mode | 16MP front  camera<br> 
        3300mAH battery</p>
        <p><button class="button">&#8377;34,999</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
       <center><img src="resources/images/ex3.jpg" alt="Mike" width="300" height="300"></center>
      <div class="container">
        <h4>Samsung Galaxy S9 Plus SM-G965FZBDINS<br> (Coral Blue) </h4>
        <p class="title">Samsung</p>
        <p>6 GB RAM | 64 GB ROM | Expandable Upto 400 GB
        <br>6.2 inch Quad HD+ Display<br>
12MP + 12MP Dual Rear Camera | 8MP Front Camera<br>
3500 mAh Battery</p>
        <p><button class="button">&#8377;64,900</button></p>
      </div>
    </div>
  </div>
</div>

<br>

<div class="row">
  <div class="column">
    <div class="card">
      <center><img  src="resources/images/ex4.jpeg" alt="Jane" width="290" height="300"></center>
      <div class="container">
        <h4>HP Core i7 7th Gen (Dark Ash SIlver)</h4>
        <p class="title">hp</p>
        <p>Intel Core i7 Processor (7th Gen) <br>
        8 GB DDR3 RAM<br>
        64 bit Windows 10 Operating System<br>
        13.3 inch Display | 512 GB SSD</p>
        <p><button class="button">&#8377;1,14,500</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <center><img src="resources/images/ex5.jpg" alt="Mike" width="350" height="300"></center>
      <div class="container">
        <h4>Apple MacBook Pro Core i7 7th Gen (SPace Grey)</h4>
        <p class="title">Apple</p>
        <p>Intel Core i7 Processor (7th Gen)<br>
        16 GB DDR3 RAM<br>
        64 bit Mac OS Operating System<br> 
        15.4 inch Display | 512 GB SSD</p>
        <p><button class="button">&#8377;2,24,900
</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
       <center><img src="resources/images/ex6.jpeg" alt="Mike" width="300" height="280"></center>
      <div class="container">
        <h4>Dell Inspiron Core i7 6th Gen (Black) </h4>
        <p class="title">Dell</p>
        <p>NVIDIA GeForce GTX 960M GPU Enriches the Visuals of <br>the Latest Games Around
        <br>16 GB DDR3 RAM<br>
64 bit Windows 10 Operating System<br>
15.6 inch Touchscreen Display | 1 TB HDD|128 GB SSD</p>
        <p><button class="button">&#8377;1,20,000
</button></p>
      </div>
    </div>
  </div>
</div>












<%@include file="/WEB-INF/views/footer.jsp" %>


</body>
</html>


