<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		<table class="table">
		  <thead class="thead-dark">
		    <tr>
		      <th>id</th>
		      <th scope="col">Titulo</th>
		      <th scope="col">Banda</th>
		      <th scope="col">Genero</th>
		      <th scope="col">Caratula</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach items="${discos}" var="d">
		  		<tr>
			      <th scope="row">${d.id}</th>
			      <td>${d.titulo}</td>
			      <td>${d.banda}</td>
			      <td>${d.genero}</td>
			      <td><img src="${d.caratula}" height="220px" width="216px"></td>
			    </tr>
		  	</c:forEach>
			    
		  </tbody>
		</table>
		
		
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
			
			
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	</body>	
</html>


	
	
