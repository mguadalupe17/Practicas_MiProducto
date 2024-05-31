<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ver productos</title>
<link href="css/estilo.css" rel="stylesheet" type="text/css">
</head>
<body>
	<main>
    <header>
        <h1>La fragata perfumería</h1>
        <h2 class="destacado">Descubre las mejores esencias para ti</h2>
    </header>
    <nav>
    	<a href="index.jsp"><img src="images/casa.png"> Home</a>
        <a href="consulta.jsp"><img src="images/caja.png"> Ver Productos</a>
        <a href="categoria.jsp"><img src="images/lupa.png">Buscar Por Categoria</a>
        <a href="login.jsp"><img src="images/login.png">Login</a>
    </nav>

    <section id="productos">
        <h2>Explora nuestras fragancias</h2>
       	  <div class="centrar">
					<div class="down">
						<h2>Listado de Productos</h2>
        				<%
							Productos pro = new Productos();
							String tabla = pro.verProductos();
							out.print(tabla);
						%>
					</div>
				</div>
       
        
          
    </section>
</main>

<footer>
    	<ul>
            <li><a href="https://www.facebook.com"><img src="images/facebook.png"></a>
            <li><a href="https://www.instagram.com"><img src="images/instagram.png"></a>
 			<li><a href="https://twitter.com"><img src="images/gorjeo.png"></a>
        </ul>
</footer>

</body>
</html>