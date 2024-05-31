<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  session = "true" import="com.productos.negocio.*"%>
    
     <%
	int perfil = 0;
	String usuario = "";
	HttpSession sesion = request.getSession();
	 if (sesion.getAttribute("usuario") == null || (Integer)sesion.getAttribute("perfil") != 3) //Se verifica si existe la variable
	 {
		 %>
			<jsp:forward page="login.jsp">
			<jsp:param name="error" value="Debe registrarse en el sistema." />
			</jsp:forward>
		<%
	 }
	 else
	 {
		 usuario=(String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
		 perfil=(Integer)sesion.getAttribute("perfil");
	 }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>La fragata perfumería</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400..700&display=swap" rel="stylesheet">
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
    	<a href="menu.jsp"><img src="images/casa.png"> Home</a>
    </nav>
    <h2 class="destacado">Modificar y eliminar productos</h2>
    <section class="centrar">
    	<%
		    Productos producto= new Productos();
		    out.print(producto.consultarTodo());
		  %>
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