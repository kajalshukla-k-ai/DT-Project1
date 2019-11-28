<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>Home page</title>
  <style type="text/css">
  	.col-xs-6-custom {
    	width: 40%;
    	margin-left: 28%;
    	margin-right: 28%;
    }
  	.container
  	{
  		min-width:100%;
  		min-height:490px;
  	}
  </style>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/WEB-INF/image/');">
<div><%@include file="menu.jsp" %></div>
<div style="width: 100%; height: 70px; "></div>
<div class="container">
<div class="row">
<div class="col-xs-6-custom" jumbotron>
<div class="head">
<h3 style="text-shadow: 1px 2px 3px; color:cadetblue; font-family: arial; ">Customer Shipping Details</h3>
</div>
<div class="outer">
<div class="well" style="width: 100%">
<form action="${pageContext.request.contextPath }/invoiceprocess" method="post">
<c:set var="gtot " value="0"></c:set>
<c:forEach var="c" items="${cart }">
<c:set var="gtot" value="${gtot+c.cartprice*c.cartstock }"></c:set>
</c:forEach>

<div class="well">
<table style="text-align: left;width: 350px;">
<tr>
<td colspan="3"> <b>Name     :</b></td><td>${User.name }</td>
</tr>

<tr>
<td colspan="3"> <b>Email    :</b></td><td>${User.emailid }</td>
</tr>

<tr>
<td colspan="3"> <b>Address     :</b></td><td>${User.address }</td>
</tr>

<tr>
<td colspan="3"> <b>Phone     :</b></td><td>${User.mobile }</td>
</tr>

 </table>
</div>
<div class="well">
<label for="Payment">Payment Option</label>
<select name="Payment" class="form-control" >
<option value="COD">Cash On Delivery</option>
<option value="net">Net Banking</option>
<option value="net">Credit Card</option>
<option value="net">Debit Card</option>
</select>
<div class="panel-body" style="padding:0px;">
                    <div class="form-group">
                        <label for="cardNumber" style="padding-top: 5px;">
                            CARD NUMBER</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="cardNumber" placeholder="Valid Card Number" autofocus />
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-7 col-md-7">
                        <label for="expityMonth">
                                    EXPIRY DATE</label>
                            <div class="form-group">
                                
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                
                                    <input type="text" class="form-control" id="expityMonth" placeholder="MM" style="margin-left: -15px;"/>
                                </div>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityYear" placeholder="YY" /></div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-md-5 pull-right">
                            <div class="form-group">
                                <label for="cvCode">
                                    CV CODE</label>
                                <input type="password" class="form-control" id="cvCode" placeholder="CV"/>
                            </div>
                        </div>
                    </div>
                </div>
                
       <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#"><span class="badge pull-right"><span class="fa fa-rupee"></span>${gtot }</span> Final Payment</a>
                </li>
       </ul>
		<input type = "hidden" name = "total" value = "${gtot }">
		<br>
		<input type = "submit" value = "PAY" style="width: 100%" class = "btn btn-danger"> 
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>