<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet">
<style type="text/css">
.btn1, .btn2, .btn3 {
	margin-right: 10px;
	background-color: #010a43;
	border-color: #010a43;
}

.btn1:hover, .btn2:hover, .btn3:hover {
	margin-right: 10px;
	background-color: #ffffff;
	border-color: #010a43;
	color: #010a43;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12 header"
				style="background-color: #010a43; color: #FFFFFF;">
				<h1 align="center">Hotel Management</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 formDiv" style="margin: auto; margin-top: 50px;">

			</div>
			<div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 formDiv"
				style="margin: auto; margin-top: 50px;">
				<form action="/addHotel" method="post">
					<div class="form-group">
						<label for="hName">Hotel Name:</label> <input type="text"
							class="form-control" id="hName" name="hotelName"
							placeholder="Enter hotel name to save"
							style="width: 420px; border: 2px solid #010a43">
					</div>
					<div class="form-group">
						<label for="hName">Saved : <c:out
								value="${saved.hotelName}"></c:out></label>
					</div>
					<button type="submit" class="btn btn-primary btn1">Submit</button>
					<button type="button" class="btn btn-primary btn2"
						onclick="location.href='/home'">Reset</button>
					<button type="button" class="btn btn-primary btn3"
						onclick="location.href='/getHotels'">Get All Hotels</button>
				</form>
			</div>
		</div>

	</div>


	<script src="webjars/bootstrap/3.3.6/js/bootstrap.js"></script>

	<script src="webjars/jquery/1.9.1/jquery.js"></script>
</body>
</html>