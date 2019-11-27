<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"  content="text/html"  charset="ISO-8859-1">
<meta name="viewport" content="width=device-width , initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Home Page</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<div class="container" style="margin-top: 80px;">
<hr>
<div class="modal fade eg-demo-model-sm" tabindex="1" role="dialog" aria-lablelledby="mymodel" aria-hidden="true" id="onload">
<div class="model-dialog model-lg">
<div class="model-content">
<div class="model-header">
<button type="button" class="close" data-dismiss="model">X</button>
</div>
<div class="model-body"><span> Record Added Successfully !!!</span>
<div class="model-footer">
<a href="${page.Content.request.contextPath }/admin/adding" class="btn btn-primary" role="button">Back</a>
</div>
</div>
</div>
</div>
</div>
</div>
<script type="text/javascript">
$(document.ready(function () {
	$('#onload').status('show');
	}));

</script>
</body>
</html>