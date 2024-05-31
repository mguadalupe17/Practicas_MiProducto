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
 	String codigo= request.getParameter("valor");
 	int codigoproducto= Integer.parseInt(codigo);
 	
 	Productos producto= new Productos();
 	boolean eliminarproducto= producto.eliminarproductos(codigoproducto);
 	
 	if (eliminarproducto==true){
 		response.sendRedirect("tabla.jsp");
 	}
 %>

</body>
</html>