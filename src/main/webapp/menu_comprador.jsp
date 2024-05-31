<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.productos.seguridad.*"%>

<%
	int perfil = 0;
	String usuario = "";
	HttpSession sesion = request.getSession();
	 if (sesion.getAttribute("usuario") == null || (Integer)sesion.getAttribute("perfil") != 2) //Se verifica si existe la variable
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
    	<a href="menu_comprador.jsp"><img src="images/casa.png"> Home</a>
    </nav>
    	<%
					pagina pag=new pagina();
					String menu=pag.mostrarMenu(perfil);
					out.print(menu);
		%>

        <aside>
            <a href="https://ec.linkedin.com/">Ver más información sobre los desarrolladores</a>
        </aside>
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