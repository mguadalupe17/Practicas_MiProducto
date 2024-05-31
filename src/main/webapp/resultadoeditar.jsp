<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 	String codigoproducto=request.getParameter("id_pro");
 	int codigo= Integer.parseInt(codigoproducto);
 	String categoria=request.getParameter("cmbCategoria");
 	int categoriaproducto=Integer.parseInt(categoria);
 	String nombre=request.getParameter("nombre");
 	String cantidad=request.getParameter("cantidad");
 	int cantidadproducto=Integer.parseInt(cantidad);
 	String precio=request.getParameter("precio");
 	float precioproducto=Float.parseFloat(precio);
 	
 	Productos producto= new Productos(codigo,categoriaproducto,nombre,cantidadproducto,precioproducto);
 	boolean verificarproducto= producto.modificarproductos(producto);
 	
 	if (verificarproducto==true){
 		response.sendRedirect("tabla.jsp");
 	}
 %>
</body>
</html>