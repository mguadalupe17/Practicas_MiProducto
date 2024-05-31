<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Categoria</title>
	<link href="css/estilo.css" rel="stylesheet" type="text/css">
	<script>
		function mostrarResultados() {
    		var hombre = document.getElementById("hombre");
   			var mujer = document.getElementById("mujer");
    		var resultadosHombre = document.getElementById("resultadosHombre");
    		var resultadosMujer = document.getElementById("resultadosMujer");

    		if (hombre.checked) {
        		resultadosHombre.style.display = "block";
        		resultadosMujer.style.display = "none";
   	 		} else if (mujer.checked) {
        		resultadosHombre.style.display = "none";
        		resultadosMujer.style.display = "block";
    		}
		}
	</script>
</head>
<body>
	<main>
		<header>
    		<h1>Buscar por Categoría</h1>
   			<h2 class="destacado">Descubre las mejores esencias para ti</h2>
		</header>
		<nav>
		<a href="index.jsp"><img src="images/casa.png"> Home</a>
        <a href="consulta.jsp"><img src="images/caja.png"> Ver Productos</a>
        <a href="categoria.jsp"><img src="images/lupa.png">Buscar Por Categoria</a>
        <a href="login.jsp"><img src="images/login.png">Login</a>
    </nav>

		<section>
			<h2>Seleccione una opción:</h2>
			<form action="consultacategoria.jsp">
				<%
				Categorias categoria= new Categorias();
				out.print(categoria.mostrarCategoria());
				%>
			<input type= "submit">
			</form>
			
		</section>
    		

		<footer>
    		<ul>
            	<li><a href="https://www.facebook.com"><img src="images/facebook.png"></a>
            	<li><a href="https://www.instagram.com"><img src="images/instagram.png"></a>
 				<li><a href="https://twitter.com"><img src="images/gorjeo.png"></a>
        </ul>
		</footer>
	</main>
</body>
</html>