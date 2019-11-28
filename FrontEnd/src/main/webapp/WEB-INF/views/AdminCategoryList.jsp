<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link type="text/css" rel="stylesheet" href="/resources/nav.css" >
</head>
<body>
<%@include file="menu.jsp" %>
<div style="width: 100%; height:50px;"></div>
<div class="container">
<h2>Category List for Admin</h2>

<table class="table table-hover" id="apl" class="display" style="border: 2px; width: 100%;">
<tr>
<th>Serial No</th>
<th>CID</th>
<th>Category Name</th>

<th class="span2">Action</th>
</tr>

<c:if test="${empty catList}">
<tr>
<td colspan="10" align="center">No record exists!!</td>
</tr>
</c:if>

<c:forEach var="p" varStatus="st" items="${catList }">

<tr>
<td><c:out value="${st.count }"></c:out></td>
<td><c:out value="${p.cid }"></c:out></td>
<td><c:out value="${p.categoryName }"></c:out></td>

<td class="span4">
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>

<a class="btn btn-info" role="button" href="${pageContext.request.contextPath }/admin/Edit">Edit</a>
<a class="btn btn-danger" role="button" href="${pageContext.request.contextPath }/admin/Delete">Delete</a>
</td>
</tr>

</c:forEach>
</table>
</div>
</body>
</html>