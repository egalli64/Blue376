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

</head>

<body>
	<!-- Jumbotron title -->
	<div class="jumbotron jumbotron-fluid" id="colorJumbo">

		<div class="container">
			<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-4">
					<h1 class="display-4">Blue</h1>
				</div>
				<div class="col-sm-4"></div>
			</div>
		</div>
	</div>

	<!-- Registration data form -->
	<form>
		<div class="form-row">
			<div class="form-group col-md-1"></div>
			<div class="form-group col-md-4">
				<label for="inputEmail4">Name</label> <input type="email"
					class="form-control" id="inputEmail4" placeholder="Email">
			</div>
			<div class="form-group col-md-4">
				<label for="inputEmail4">Surname</label> <input type="email"
					class="form-control" id="inputEmail4" placeholder="Email">
			</div>
			<div class="form-group col-md-3"></div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-1"></div>
			<div class="form-group col-md-4">
				<label for="inputPassword4">Password</label> <input type="password"
					class="form-control" id="inputPassword4" placeholder="Password">
			</div>
		</div>

		<div class="form-row">
		
		</div>

		<div class="form-group">
			<label for="inputAddress">Address</label> <input type="text"
				class="form-control" id="inputAddress" placeholder="1234 Main St">
		</div>
		<div class="form-group">
			<label for="inputAddress2">Specialization</label> <input type="text"
				class="form-control" id="inputAddress2"
				placeholder="Apartment, studio, or floor">
		</div>
		<div class="form-row">
			<div class="form-group col-md-6"></div>
			<div class="form-group col-md-4">
				<label for="inputState">Boh</label> <select id="inputState"
					class="form-control">
					<option selected>Choose...</option>
					<option>...</option>
				</select>
			</div>
			<div class="form-group col-md-2"></div>
		</div>
		<div class="form-group">
			<div class="form-check">
				<input class="form-check-input" type="checkbox" id="gridCheck">
				<label class="form-check-label" for="gridCheck"> Check me
					out </label>
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Sign in</button>
	</form>

</body>
</html>