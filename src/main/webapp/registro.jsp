<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>La fragata Perfumeria</title>
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
        
        <section>
            <h2>Registro</h2>

             <form action="respuesta.jsp" method="post" class="registro-form">
                <div>
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                <div>
                    <label for="cedula">Cédula:</label>
                    <input type="text" id="cedula" name="cedula" maxlength="10" required>
                </div>
                <div>
                    <label for="estadoCivil">Estado Civil:</label>
                    <select id="estadoCivil" name="estadoCivil" required>
                        <option value="">Seleccionar</option>
                        <option value="soltero">Soltero</option>
                        <option value="casado">Casado</option>
                        <option value="divorciado">Divorciado</option>
                        <option value="viudo">Viudo</option>
                    </select>
                </div>
                <div>
                    <label for="nombre">Usuario:</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                <div>
                    <label>Lugar de Residencia:</label>
                    <input type="radio" id="sur" name="lugarResidencia" value="sur">
                    <label for="sur">Sur</label>
                    <input type="radio" id="norte" name="lugarResidencia" value="norte">
                    <label for="norte">Norte</label>
                    <input type="radio" id="centro" name="lugarResidencia" value="centro">
                    <label for="centro">Centro</label>
                </div>
                <div>
                    <label for="foto">Foto:</label>
                    <input type="file" id="foto" name="foto" accept="image/jpeg, image/gif, image/bmp" required>
                </div>
                <div>
                    <label for="fechaNacimiento">Fecha de Nacimiento:</label>
                    <input type="month" id="fechaNacimiento" name="fechaNacimiento" required>
                </div>
                <div>
                   <label for="color">Color Favorito:</label>
					<input type="color" id="color" name="color" value="#ff0000" required>

                </div>
                <div>
                    <button type="submit">Enviar</button>
                    <button type="reset">Resetear</button>
                </div>
            </form>
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