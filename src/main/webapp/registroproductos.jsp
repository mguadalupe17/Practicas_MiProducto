<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session = "true" import="com.productos.negocio.*"%>
<!DOCTYPE html>
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
<html>
<head>
<meta charset="UTF-8">
<title>La fragata perfumería</title>
<link href="css/estilo.css" rel="stylesheet"type="text/css"/>
</head>
<body>
<%
 Productos producto = new Productos();
 int id= producto.getNewId()+1;
%>
	<main>
    <header>
        <h1>La fragata perfumería</h1>
        <h2 class="destacado">Descubre las mejores esencias para ti</h2>
        <h4 id="favorito"></h4>
    </header>
    <nav>
    	<a href="menu.jsp"><img src="images/casa.png"> Home</a>
    </nav>
    <h2 class="destacado">Registro de productos</h2>
    <div class="centrar">
     <form action="resultadoregistro.jsp">
     
                <div>
                    <label for="nombre">ID</label>
                    <input value="<%=id%>" type="text" id="id_pro" name="id_pro" readonly>
                </div>
                <div>
                    <label for="categoria">Categoria</label>
				<%
				Categorias categoria = new Categorias();
						out.print(categoria.mostrarCategoria());
				%>

				</div>
                <div>
                    <label for="nombre">Nombre</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                <div>
                    <label for="nombre">Cantidad</label>
                    <input type="number" id="cantidad" name="cantidad" required>
                </div>
                <div>
                    <label for="nombre">Precio</label>
                    <input type="number" id="precio" name="precio" step="0.01" required>
                </div>
                   <div>
                    <label for="nombre">Imagen</label>
                    <input type="file" id="imagen" name="imagen"required>
                </div>
                  <div>
                    <button type="submit">Enviar</button>
                    <button type="reset">Resetear</button>
                </div>
      </form>
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
