<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet">
<style type="text/css">
.btn1 {
	margin-right: 10px;
	background-color: #010a43;
	border: 1px solid #010a43;
}
.btn1:hover {
	margin-right: 10px;
	background-color: #ffffff;
	border: 2px solid #010a43;
	color: #010a43;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12 header"
				style="background-color: #192965; color: #f5f0e3">
				<h1 align="center">Hotel Management</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-md-5 formDiv"
				style="margin-left: 350px; margin-top: 20px;">

				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>Hotel ID</th>
							<th>Hotel Name</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${hotels}" var="hotel" varStatus="loop">
							<tr>
								<td><c:out value="${hotel.hotelId}"></c:out></td>
								<td><c:out value="${hotel.hotelName}"></c:out></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				<button type="button" class="btn btn-primary btn1"
					onclick="location.href='/home'">Home</button>

			</div>
		</div>


	</div>


	<script src="webjars/bootstrap/3.3.6/js/bootstrap.js"></script>

	<script src="webjars/jquery/1.9.1/jquery.js"></script>


</body>
</html>