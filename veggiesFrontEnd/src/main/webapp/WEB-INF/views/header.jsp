<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


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
<div class="header-top">
	 <div class="header-bottom">			
				<div class="logo">
					<h1><a href="index.html">Lighting</a></h1>					
				</div>
			 <!---->		 
			 <div class="top-nav">
				<ul class="memenu skyblue"><li id="home"><a href="${contextRoot}/home">Home</a></li>
					<li class="grid" id="products"><a>Categories</a>
						<div class="mepanel">
							<div class="row">
							
							<%@include file="./sidebar.jsp" %>
							
								</div>
						</div>
					</li>
					<li class="grid" id="contact"><a href="${contextRoot}/contact">Contact</a>
					</li>
					<li class="grid" id="about"><a href="${contextRoot}/about">About Us</a></li>
					<!--<li class="grid"><a href="contact.html">Contact</a></li>-->					
				</ul>				
			 </div>
			 <!---->
			 <div class="cart box_1">
				 <a href="checkout.html">
					<div class="total">
					<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
					<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
				</a>
				<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
			 	<div class="clearfix"> </div>
			 </div>
			 <div class="clearfix"> </div>
			 <!---->			 
			 </div>
			<div class="clearfix"> </div>
</div>
