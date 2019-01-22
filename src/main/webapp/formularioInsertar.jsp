<html>

<head>
	<meta charset="utf-8">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<title>Discos</title>
		
		<!-- Bootstrap core CSS -->
		<link
		href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css"
		rel="stylesheet">

</head>


<body class="jumbotron">

	<a href="index.jsp">Atras</a>

	<form action="InsertarDisco" method="post">
	  <div class="form-group">
	    <label for="titulo">Titulo del disco:</label>
	    <input type="text" name="titulo" class="form-control">
	  </div>
	  <div class="form-group">
	    <label for="banda">Banda:</label>
	    <input type="text" name="banda" class="form-control">
	  </div>
	  <div class="form-group">
	    <label for="genero">Genero:</label>
	    <input type="text" name="genero" class="form-control">
	  </div>
	  <div class="form-group">
	    <label for="caratula">Caratula:</label>
	    <input type="text" name="caratula" class="form-control">
	  </div>
	  
	  <button type="submit" class="btn btn-primary">Insertar</button>
	</form>



	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
				
				
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</body>


</html>