<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  	<style type="text/css">
  		.footer {
	  		width:100%;
      		background-color: black;
      		padding: 8px;
	  		position: relative;
  			right: 0;
  			bottom: 0;
  			left: 0;
	  		border:solid 1px #000;
    		border-left:none;
    		border-right:none;
    		color: white;
    	}
    </style>
</head>
<body>
<div class="container-fluid text-center" id="footer">
<p> Copyright &copyHome Decor<br><small>2019</small></p>
<ul class="nav navbar-nav">
      <li ><a href="${pageContext.request.contextPath }/contactUs">Contact us</a></li>
      <li><a href="${pageContext.request.contextPath }/aboutUs">About us</a></li>
		<li><a href="http://www.facebook.com" class="fa fa-facebook" style="font-size:20px; "></a></li>
		<li><a href="http://www.twitter.com" class="fa fa-twitter" style="font-size:20px;"></a></li>



</ul>
</div>
</body>
</html>