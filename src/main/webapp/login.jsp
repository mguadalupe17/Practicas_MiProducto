<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/estilo.css" rel="stylesheet" type="text/css">
</head>
<body class="pagina-login">
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
    	<section>
            <h2>Iniciar sesión</h2>
            <div class="container"> <!-- Agregar la clase "container" aquí -->
                <form action="procesarLogin.jsp" method="post">
                <div class="form-group">
                    <label for="usuario">Usuario:</label>
                    <input type="text" id="usuario" name="usuario" required>
                </div>
                <div class="form-group">
                    <label for="contrasena">Contraseña:</label>
                    <input type="password" id="contrasena" name="contrasena" required>
                </div>
                <input type="submit"></input>
            </form>
            <div>
                <a href="registro.jsp">¿No tienes una cuenta?</a>
                <a href="recuperacion.jsp">Cambiar contraseña</a>
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