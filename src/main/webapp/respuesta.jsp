<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String nombre= request.getParameter("nombre");
	String cedula= request.getParameter("cedula");
	String estadocivil= request.getParameter("estadoCivil");
	String lresidencia= request.getParameter("lugarResidencia");
	String foto= request.getParameter("foto");
	String fnacimiento= request.getParameter("fechaNacimiento");
	String colorfav= request.getParameter("color");
	
	
	out.print("Su nombre es: "+nombre + "</br>");
	out.print("Su cedula es: "+cedula + "</br>");
	out.print("Su estado civil es: "+ estadocivil + "</br>");
	out.print("Su lugar de residencia es: "+ lresidencia + "</br>");
	out.print("Su foto es: "+foto + "</br>");
	out.print("Su fecha de nacimiento es: "+fnacimiento + "</br>");
	out.print("Su color favorito es: "+colorfav + "</br>");
	%>

</body>
</html>