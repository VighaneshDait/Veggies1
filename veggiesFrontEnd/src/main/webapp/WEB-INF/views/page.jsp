<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />   
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
<title>Online Veggies Shop- ${title} </title>

<script>
   window.menu='${title}';
</script>
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

  
<!-- Home page content-->
<c:if test="${userClickHome == true}">
<%@include file="./home.jsp" %> 
</c:if>


<!-- About page content loading-->
<c:if test="${userClickAbout == true}">
<%@include file="./about.jsp" %> 
</c:if>


<!-- Contact page content loading-->
<c:if test="${userClickContact == true}">
<%@include file="./contact.jsp" %> 
</c:if>

<c:if test="${userClickcategoryProducts == true}">
<%@include file="./listProducts.jsp" %> 
</c:if>


<!-- Footer of page -->
<%@include file="./footer.jsp" %> 

<!---->
<!-- self coded js -->
<script src="${js}/myapp.js"></script>
</body>
</html>
