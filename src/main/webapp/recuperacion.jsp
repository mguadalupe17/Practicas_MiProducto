<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        <a href="tabla.jsp"><img src="images/tabla.png">Tabla Productos</a>
        <a href="registroproductos.jsp"><img src="images/mas.png">Ingreso de productos</a>
        <a href="categoria.jsp"><img src="images/lupa.png">Buscar Por Categoria</a>
        <a href="login.jsp"><img src="images/login.png">Login</a>
    </nav>
        <section id="cambioClaveForm">
            <h2>Cambio de contraseña</h2>
            <!-- Aquí va tu formulario de recuperación de contraseña -->
        <div class="container cambio-clave-form">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="currentPassword">Contraseña actual:</label>
        <input type="password" id="currentPassword" name="currentPassword" required><br><br>

        <label for="newPassword">Nueva contraseña:</label>
        <input type="password" id="newPassword" name="newPassword" required><br><br>

        <label for="confirmPassword">Confirmar contraseña:</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required><br><br>

        <input type="submit" value="Change Password">
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