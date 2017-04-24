<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %> 

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!--<!DOCTYPE html>-->
<html>
<head>
<title>Lighting A Ecommerce Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<link href="${css}/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme style-->
<link href="${css}/style.css" rel="stylesheet" type="text/css" media="all" />	
<script src="${js}/jquery.min.js"></script>

<!--//theme style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script src="${js}/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="${css}/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${js}/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
</head>
<body> 
<!--header-->	
<script src="${js}/responsiveslides.min.js"></script>
<script>  
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: false,
      });
    });
  </script>
 <!-- header code -->
 
 <%@include file="./header.jsp" %> 
<!---->	
<div class="slider">
	  <div class="callbacks_container">
	     <ul class="rslides" id="slider">
	         <li>
				 <div class="banner1">				  
					  <div class="banner-info">
					  <h3>Morbi lacus hendrerit efficitur.</h3>
					  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. consectetur adipiscing elit. consectetur adipiscing elit.</p>
					  </div>
				 </div>
	         </li>
	         <li>
				 <div class="banner2">
					 <div class="banner-info">
					 <h3>Phasellus elementum tincidunt.</h3>
					 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. consectetur adipiscing elit. consectetur adipiscing elit.</p>
					 </div>
				 </div>
			 </li>
	         <li>
	             <div class="banner3">
	        	 <div class="banner-info">
	        	 <h3>Maecenas interposuere volutpat.</h3>
	          	 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. consectetur adipiscing elit. consectetur adipiscing elit.</p>
				 </div>
				 </div>
	         </li>
	      </ul>
	  </div>
  </div>
<!---->
<script src="${js}/bootstrap.js"> </script>

<div class="items">
	 <div class="container">
		 <div class="items-sec">
			 <div class="col-md-3 feature-grid">
				 <a href="product.html"><img src="${images}/img1.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 12000</p>
						 <span class="pric1"><del>Rs 18000</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product.html"><img src="${images}/img2.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 10000</p>
						 <span class="pric1"><del>Rs 14000</del></span>
						 <span class="disc">[14% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product.html"><img src="${images}/img3.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 8500</p>
						 <span class="pric1"><del>Rs 9500</del></span>
						 <span class="disc">[10% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product.html"><img src="${images}/img4.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 12000</p>
						 <span class="pric1"><del>Rs 18000</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="clearfix"></div>
		 </div>
		 <div class="items-sec btm-sec">
			 <div class="col-md-3 feature-grid">
				 <a href="product.html"><img src="${images}/img5.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 500</p>
						 <span class="pric1"><del>Rs 650</del></span>
						 <span class="disc">[8% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product.html"><img src="${images}/img8.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 400</p>
						 <span class="pric1"><del>Rs 750</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product.html"><img src="${images}/img7.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 800</p>
						 <span class="pric1"><del>Rs 1200</del></span>
						 <span class="disc">[12% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href="product.html"><img src="${images}/img6.jpg" alt=""/>	
					 <div class="arrival-info">
						 <h4>Lighting #1</h4>
						 <p>Rs 600</p>
						 <span class="pric1"><del>Rs 1200</del></span>
						 <span class="disc">[50% Off]</span>
					 </div>
					 <div class="viw">
						<a href="product.html"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View</a>
					 </div>
				  </a>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!---->
<div class="offers">
	 <div class="container">
	 <h3>End of Season Sale</h3>
	 <div class="offer-grids">
		 <div class="col-md-6 grid-left">
			 <a href="#"><div class="offer-grid1">
				 <div class="ofr-pic">
					 <img src="${images}/ofr2.jpeg" class="img-responsive" alt=""/>
				 </div>
				 <div class="ofr-pic-info">
					 <h4>Emergency Lights <br>& Led Bulds</h4>
					 <span>UP TO 60% OFF</span>
					 <p>Shop Now</p>
				 </div>
				 <div class="clearfix"></div>
			 </div></a>
		 </div>
		 <div class="col-md-6 grid-right">
			 <a href="#"><div class="offer-grid2">				 
				 <div class="ofr-pic-info2">
					 <h4>Flat Discount</h4>
					 <span>UP TO 30% OFF</span>
					 <h5>Outdoor Gate Lights</h5>
					 <p>Shop Now</p>
				 </div>
				 <div class="ofr-pic2">
					 <img src="${images}/ofr3.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="clearfix"></div>
			 </div></a>
		 </div>
		 <div class="clearfix"></div>
	 </div>
	 </div>
</div>
<!---->
<div class="subscribe">
	 <div class="container">
		 <h3>Newsletter</h3>
		 <form>
			 <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
			 <input type="submit" value="Subscribe">
		 </form>
	 </div>
</div>
<!---->
<div class="footer">
	 <div class="container">
		 <div class="footer-grids">
			 <div class="col-md-3 about-us">
				 <h3>About Us</h3>
				 <p>Maecenas nec auctor sem. Vivamus porttitor tincidunt elementum nisi a, euismod rhoncus urna. Curabitur scelerisque vulputate arcu eu pulvinar. Fusce vel neque diam</p>
			 </div>
			 <div class="col-md-3 ftr-grid">
					<h3>Information</h3>
					<ul class="nav-bottom">
						<li><a href="#">Track Order</a></li>
						<li><a href="#">New Products</a></li>
						<li><a href="#">Location</a></li>
						<li><a href="#">Our Stores</a></li>
						<li><a href="#">Best Sellers</a></li>	
					</ul>					
			 </div>
			 <div class="col-md-3 ftr-grid">
					<h3>More Info</h3>
					<ul class="nav-bottom">
						<li><a href="login.html">Login</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="contact.html">Contact</a></li>
						<li><a href="#">Shipping</a></li>
						<li><a href="#">Membership</a></li>	
					</ul>					
			 </div>
			 <div class="col-md-3 ftr-grid">
					<h3>Categories</h3>
					<ul class="nav-bottom">
						<li><a href="#">Car Lights</a></li>
						<li><a href="#">LED Lights</a></li>
						<li><a href="#">Decorates</a></li>
						<li><a href="#">Wall Lights</a></li>
						<li><a href="#">Protectors</a></li>	
					</ul>					
			 </div>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<%@include file="./footer.jsp" %> 

<!---->
</body>
</html>
