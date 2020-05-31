<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Image de la pizza</title>
		<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style type="text/css">
.thumbnail {
	height: 380px;
	margin-bottom: 50px;
}

.button {
	background-color: gray;
	color: white;
}

.button:hover {
	background-color: darkgray;
}

.zoom {
	-webkit-transform: scale(1);
	transform: scale(1);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}

.zoom:hover {
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
}
</style>
	</head>
	<body>
	

		<form action="FileUpload" method="POST" enctype="multipart/form-data">
			
			<div class="col-md-6 col-sm-8 col-xs-10">
				<div class="thumbnail">
					<div class="caption" style="text-align: center;">
						<p>Nom de la pizza : </p>
						<input type="text" name="name" placeholder="ex : quatre saison">
						<p>Image : </p>
						<input type="file" name="fileToUpload">
						<br/><br/>
						<input class="btn btn-primary" type="submit" value="Submit">
					</div>
				</div>
			</div>
		</form>
	</body>
</html>

