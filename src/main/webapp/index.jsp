<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>La fragata perfumería</title>
<link href="css/estilo.css" rel="stylesheet"type="text/css"/>
</head>
<body>
	<main>
    <header>
        <img src="images/logo.png"><h1>La fragata perfumería</h1>
        <h2 class="destacado">Descubre las mejores esencias para ti</h2>
        <h4 id="favorito"></h4>
    </header>
    <nav>
    	<a href="index.jsp"><img src="images/casa.png"> Home</a>
        <a href="consulta.jsp"><img src="images/caja.png"> Ver Productos</a>
		<a href="categoria.jsp"><img src="images/lupa.png">Buscar Por Categoria</a>
        <a href="login.jsp"><img src="images/login.png">Login</a>
    </nav>
    <div class="agrupar">
        <section class= "imaganes">
            <h3></h3>

            <p class="mi-parrafo">
                Nuestra misión es permitir que cada persona pueda encontrar la esencia que defina su personalidad 
              <br>
        La esencia que necesitas la puedes encontrar en nuestra app web navega y se parte de nuestros clientes descubre 
        la experiencia de nuestras aromas
              </p>
            <div class="imagen-container"> 
            <img src="images/perfume1.png" width="400" height="300">
            <img src="images/perfume2.png" width="400" height="300">
            <img src="images/perfume3.png" width="400" height="300">
            </div>
        </section>
        <aside>
            <a href="https://www.linkedin.com/feed/">Ver más información sobre los desarrolladores</a>
        </aside>
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


