<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration form</title>
<link rel="icon" type="image/x-icon" href="/blue/favicon.ico">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/blue/login/index.css">

<script type="text/javascript" src="/blue/login/index.js" defer></script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Datepicker - Default functionality</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--  <script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
-->
</head>



<body>
	<!-- Jumbotron title -->
	<div class="jumbotron jumbotron-fluid" id="colorJumbo">

		<div class="container">
			<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-4">
					<h1 class="main-title">Blue</h1>
				</div>
				<div class="col-sm-4"></div>
			</div>
		</div>
	</div>

	<!-- Nav Bar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a href="/blue/index.html"
					class="nav-link active" aria-current="page" href="#"
					id="homeButton">Home</a></li>
			</ul>
		</div>

	</nav>

	<!-- Registration data form -->
	<form action="registration">
		<div class="form-row">
			<div class="form-group col-md-1"></div>
			<div class="form-group col-md-4">
				<label for="inputEmail4">Name</label> <input name="name" type="text"
					class="form-control" id="name" placeholder="Name">
			</div>
			<div class="form-group col-md-4">
				<label for="inputEmail4">Surname</label> <input name="surname" type="text"
					class="form-control" id="surname" placeholder="Surname">
			</div>
			<div class="form-group col-md-3"></div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-1"></div>
			<div class="form-group col-md-4">
				<label for="inputPassword4">Email</label> <input name="email" type="text"
					class="form-control" id="mail"
					placeholder="Email@email.mail">
			</div>
			<div class="form-group col-md-4">
				<label for="inputPassword4">Password</label> <input name="password" type="password"
					class="form-control" id="password" placeholder="Password">
			</div>
		</div>
		
				<div class="form-row">
			<div class="form-group col-md-1"></div>
			<div class="form-group col-md-4">
				<label for="inputPassword4">Phone number</label> <input type="text"
					class="form-control" id="phoneNumber" name="phoneNumber"
					placeholder="">
			</div>
			<div class="form-group col-md-4">
				
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-1"></div>

			<div class="form-group col-md-4">
				<label for="inputPassword4">Birth date: </label><input type="date"
					class="form-control" id="birthday" name="birthday">
			</div>
			<div class="form-group col-md-1"></div>

			<div class="form-group col-md-4">

				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio"
						name="account" id="account" value="patient"
						checked onclick="show1()"> <label class="form-check-label"
						for="exampleRadios1"> Patient </label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio"
						name="account" id="account" value="doctor"
						onclick="show2()"> <label class="form-check-label"
						for="exampleRadios2"> Doctor </label>
				</div>

			</div>
		</div>

		<div id="div1" class="hide">
			<div class="form-row">
				<div class="form-group col-md-1"></div>
				<div class="form-group col-md-4">
					<label for="inputPassword4">Address</label> <input type="text"
						class="form-control leo" id="address"
						placeholder="Via Maurizio Quadrio, n. 17, MI">
				</div>
				<div class="form-group col-md-4">
					<label for="inputPassword4">Specialization</label> <input
						type="text" class="form-control leo" id="specialization"
						placeholder="Specialization">
				</div>
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-4"></div>
			<div class="form-group col-md-4">
				<button type="submit" class="btn btn-primary">Sign in</button>
			</div>
		</div>
		<div class="form-group col-md-4"></div>
	</form>


	<div class="jumbotron jumbotron-fluid fixed-bottom" id="footJumbo">
		<div>BLUE (C) 2020</div>
	</div>

</body>


</html>