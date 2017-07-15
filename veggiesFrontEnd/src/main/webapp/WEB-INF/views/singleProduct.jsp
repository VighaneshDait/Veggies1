


 <div class="container">
			
			<ol class="breadcrumb">
		  <li><a href="${contextRoot}/home">Home</a></li>
		  <li class="active">Category</li>
		  <li><a href="${contextRoot}/show/category/${product.categoryId}/products">${product.categoryId}</a></li>
		  <li class="active">${product.name}</li>
		 </ol>
	</div>
	
	
	
	 <div class="container">				
		 <div class="product-price1">
			 <div class="top-sing">
				  <div class="col-md-7 single-top">	
					 <div class="flexslider">
							  <ul class="slides">
								<li data-thumb="images/si.jpg">
									<div class="thumb-image"> <img src="${images}/${product.code}.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
							<!-- 	<li data-thumb="images/si2.jpg">
									 <div class="thumb-image"> <img src="images/si2.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
								<li data-thumb="images/si3.jpg">
								   <div class="thumb-image"> <img src="images/si3.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>  -->
							  </ul>
						</div>					 					 
					 <script src="js/imagezoom.js"></script>
						<script defer src="js/jquery.flexslider.js"></script>
						<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						  });
						});
						</script>

				 </div>	
			     <div class="col-md-5 single-top-in simpleCart_shelfItem">
					  <div class="single-para ">
						 <h4>${product.name}</h4>							
							<h5 class="item_price">&#8377;${product.unitprice}/Kg</h5>							
							<p class="para">${product.description} </p>
							<div class="prdt-info-grid">
								 <ul>
									 <li>- Brand : Fos Lighting</li>
									 <li>- Dimensions : (LXBXH) in cms of...</li>
									 <li>- Color : Brown</li>
									 <li>- Material : Wood</li>
								 </ul>
							</div>
							<h6>Quantity Available:${product.quantity}</h6>
							<div class="check">
							 <p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>Enter pin code for delivery &amp; availability</p>
							 <form class="navbar-form">
								  <div class="form-group">
									<input type="text" class="form-control" placeholder="Enter Pin code">
								  </div>
								  <button type="submit" class="btn btn-default">Verify</button>
							 </form>
							     
						    </div>
							<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-success">
							<span class="glyphicon glyphicon-shopping-cart"></span>ADD TO CART</a>							
				
								<a href="${contextRoot}/show/category/${product.categoryId}/products" class="btn btn-primary">
							Back</a>							
			
					 </div>
				 </div>
				 <div class="clearfix"> </div>
			 </div>
	     </div>
	     </div>
	
	
