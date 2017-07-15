<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<html>
<head>
<title>Online Veggies Shop- ${title} </title>
<link href="${css}/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme style-->
<link href="${css}/style.css" rel="stylesheet" type="text/css" media="all" />	
<script src="${js}/jquery.min.js"></script>
<!-- DataTables Bootstrap -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet" type="text/css" media="all" />


<!--//theme style-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
 <!-- header code -->

 <%@include file="./header.jsp" %>
 
   <div class="content">
       <div class="container">
           <div class="row">
           <div class="col-xs-12"> 
                 
                 <div class="jumbotron">
                      <h1>
                           ${errorTitle} 
                      </h1>
                      <hr>
                      
                      <blockquote>
                      
                           {errorDescription}
                           
                      </blockquote>
                 </div>
                      
           </div>
           
           </div>
       
       </div>
   
   </div> 
   
   
<!-- Footer of page -->
<%@include file="./footer.jsp" %> 
 
 
</body>