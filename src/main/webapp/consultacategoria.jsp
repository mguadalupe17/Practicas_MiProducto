<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>La fragata perfumería</title>
<link href="css/estilo.css" rel="stylesheet"type="text/css"/>
</head>
<body>
	<main>
    <header>
        <h1>La fragata perfumería</h1>
        <h2 class="destacado">Descubre las mejores esencias para ti</h2>
        <h4 id="favorito"></h4>
    </header>
    <nav>
    	<a href="index.jsp"><img src="images/casa.png"> Home</a>
        <a href="consulta.jsp"><img src="images/caja.png"> Ver Productos</a>
        <a href="categoria.jsp"><img src="images/lupa.png">Buscar Por Categoria</a>
        <a href="login.jsp"><img src="images/login.png">Login</a>
    </nav>
    <div class="centrar">
    	<%
    	String categoria= request.getParameter("cmbCategoria");
    	int valor = Integer.valueOf(categoria);
		    Productos producto= new Productos();
		    out.print(producto.buscarProductoCategoria(valor));
		  %>
    </div>
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

