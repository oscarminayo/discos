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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
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
		      <th scope="col">¿Eliminar?</th>
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
			      <td><a href="#exampleModal" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">Eliminar</a></td>
			    </tr>
		  	</c:forEach>
		  </tbody>
		</table>
		
		
		
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Eliminar</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        ¿Seguro que quieres eliminar este disco?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
		        
		        	<a href="EliminarDisco?id=${disco.id}" class="btn btn-danger">ELIMINAR</a>
		        
		      </div>
		    </div>
		  </div>
		</div>
		
		
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
		
		<script>
		$('#myModal').on('shown.bs.modal', function () {
	 		 $('#myInput').trigger('focus')
			})
		</script>
		
	</body>	
</html>


	
	
