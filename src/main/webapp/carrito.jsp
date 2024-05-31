<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="java.util.List" import="java.util.ArrayList" import= "java.text.DecimalFormat" import="java.sql.SQLException" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>La fragata perfumería</title>
<link href="css/estilo.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <header>
        <h1>La fragata perfumería</h1>
        <h2 class="destacado">Descubre las mejores esencias para ti</h2>
        <h4 id="favorito"></h4>
    </header>
    <nav>
        <a href="menu_comprador.jsp"><img src="images/casa.png" alt="Home"> Home</a>
    </nav>
    <section>
        <form name="listadoProductos" id="productForm" method="post"> 
            <%
            Productos productos = new Productos();
            String tabla = productos.consultarProductos();
            out.print(tabla);
            %>
            <br>
            <div>
                <input class="boton" type="submit" name="button" id="button" value="Enviar" />
            </div>
        </form>
        <ul>
            <%
            DecimalFormat df = new DecimalFormat("#.00");
            List<String> listaElementos = (List<String>)session.getAttribute("carrito"); 
            List<Integer> listacomp = new ArrayList<>();
            List<Double> precio = new ArrayList<>();
            List<String> ids = new ArrayList<>();
            if (listaElementos == null) { 
                listaElementos = new ArrayList<String>(); 
                session.setAttribute("carrito", listaElementos); 
            }
            String[] elementos = request.getParameterValues("productos");  
            int i = 0;
            if (elementos != null) {
                while (i < elementos.length) {
                    listaElementos.add(elementos[i]);
                    i++;
                }
            }
            for (String tmp : listaElementos) {
                out.println("<li>" + tmp + "</li>");
            }
            listacomp = productos.suma(listaElementos);
            precio = productos.precio(listacomp);
            ids = productos.elegidos(listaElementos);
            %>
        </ul>
        <main>
            <table class="factura">
                <tr>
                    <th>Id</th>
                    <th>Total</th>
                </tr>
                <%
                for (int j = 0; j < ids.size(); j++) {
                %>
                <tr>
                    <td><%=ids.get(j)%></td>
                    <td><%=df.format(precio.get(j))%></td>
                </tr>
                <%
                }
                %>
            </table>
        </main>
        <div>
            <label>Total: <%=df.format(productos.precioTotal(precio))%> $</label>
        </div>
        <div class="contenedor">
            <form action="borrarCarrito.jsp" method="post">
                <input class="boton" type="submit" value="Borrar Carrito">
            </form>
        </div>
        <div class="contenedor">
            <form action="cerrarSesion.jsp" method="post">
                <input class="boton" type="submit" value="Cerrar Sesión">
            </form>
       </div>
    </section>
    <br>
    <br>
    <footer>
        <ul>
            <li><a href="https://www.facebook.com"><img src="images/facebook.png" alt="Facebook"></a></li>
            <li><a href="https://www.instagram.com"><img src="images/instagram.png" alt="Instagram"></a></li>
            <li><a href="https://twitter.com"><img src="images/gorjeo.png" alt="Twitter"></a></li>
        </ul>
    </footer>
</body>
</html>
