<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>La fragata perfumería</title>
<link href="css/estilo.css" rel="stylesheet"type="text/css"/>
</head>
<body>
	<%
	String codigo=request.getParameter("valor");
	int codigoproducto=Integer.parseInt(codigo);
	
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
    <h2 class="destacado">Modificar Productos</h2>
    <section class="centrar">
    <form action="resultadoeditar.jsp">
                <div>
                    <label for="nombre">ID</label>
                    <input value="<%=codigoproducto%>" type="text" id="id_pro" name="id_pro" readonly>
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
                    <button type="submit">Enviar</button>
                    <button type="reset">Resetear</button>
                </div>
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
