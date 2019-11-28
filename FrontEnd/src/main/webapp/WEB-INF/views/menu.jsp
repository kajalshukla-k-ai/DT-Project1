<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="j" uri="http://java.sun.com/jstl/core" %>
    <%@taglib prefix="spring"  uri="http://www.springframework.org/tags"%><spring:url var="css"value="/WEB-INF/CSS/main"/>    
<j:set var="contextRoot" value="${page.Context.request.contextPath }"/>
<<spring:url var="images"value="/WEB-INF/image"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  	<link rel="stylesheet" href="${css}/emart-styles.css">
<head>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-custom navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="${contextRoot}/index"><span><img src="${images}/" class="logo"/></span></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${contextRoot}/index"><span class="glyphicon glyphicon-home"></span>  Home</a></li>
        <li><a href="${contextRoot}/admin/adding">Admin</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin List<span class="caret"></span></a>
    
    <ul class="dropdown-menu">
    <li><a href="${contextRoot}/admin/productList">Product</a></li>
    <li><a href="${contextRoot}/admin/supplierList">Supplier</a></li>
    <li><a href="${contextRoot}/admin/categoryList">Category</a></li>
    </ul>
    </li> 
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <c:forEach var="c" items="${catList}">
    			<li><a href="${contextRoot}/viewCat?cid=${c.categoryid}">${c.categoryName}</a></li>
    		</c:forEach>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
     <c:if test="${pageContext.request.userPrincipal.name==null }">
    	<li><a href = "${pageContext.request.contextPath }/goToRegister">Register</a></li>
    	<li><a href = "${pageContext.request.contextPath }/getLogin">Login</a></li>
    </c:if>
    
    <c:if test="${pageContext.request.userPrincipal.name!=null }">
    <li><a href="#">Welcome: ${pageContext.request.userPrincipal.name}</a></li>
    <li><a href = "${pageContext.request.contextPath }/logout">Logout</a></li>
    <li><a href = "${pageContext.request.contextPath }/goToCart"><i class = "fa fa-cart-plus" aria-hidden = "true"></i> Cart</a></li>
    </c:if>
      </ul>
    </div>
  </div>
</nav>
</body>
</html>