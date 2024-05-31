<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.seguridad.*" session= "true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	usuario Usuario = new usuario();
	String nuser= request.getParameter("usuario");
	String ncontrasena= request.getParameter("contrasena");
	HttpSession sesion= request.getSession();
	boolean respuesta = Usuario.verificarUsuario(nuser, ncontrasena);
	
	if (respuesta == true){
		sesion.setAttribute("usuario",Usuario.getCorreo());
		sesion.setAttribute("perfil",Usuario.getPerfil());
		if(Usuario.getPerfil()==3){
			response.sendRedirect("menu.jsp");
		}
		if(Usuario.getPerfil()==2){
			response.sendRedirect("menu_comprador.jsp");
		}
		if(Usuario.getPerfil()==1){
			response.sendRedirect("menu_administrador.jsp");
		}
	}
	else 
	{
		%>
		<jsp:forward page="login.jsp">
			<jsp:param name="error"
				value="Datos incorrectos.<br>Vuelva a intentarlo." />
		</jsp:forward>
		<%
	}
%>
</body>
</html>