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
				<label for="inputEmail4">Name</label> <input type="text"
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
				<label for="inputPassword4">Email</label> <input type="email"
					class="form-control" id="inputPassword4" placeholder="Password">
			</div>
			<div class="form-group col-md-4">
				<label for="inputPassword4">Password</label> <input type="password"
					class="form-control" id="inputPassword4" placeholder="Password">
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-1"></div>
			<div class="form-group col-md-4">
			</div>

			<div class="form-group col-md-4">
				<label for="inputPassword4">Birth date: </label><input type="date"
					class="form-control" id="datepicker">
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

	<div>
		<a href="/blue/index.html" class="btn btn-danger">Log out</a>
	</div>

</body>


</html>