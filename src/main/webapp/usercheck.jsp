<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="mipk.beanDB"%>
<%@page import="java.sql.SQLException"%>

<!DOCTYPE html>
<html>
<head>
<%
boolean sessionCorrecta = false;
String resultado = "";

//control de sesion
try {
    String acceso = session.getAttribute("attributo1").toString();
     if (acceso.equals("1")){
         resultado = "<div><h1 style='color: white; font-weight: bold;'>Inicio de sesión correcto</h1></div>";
     };
} catch (Exception e) {
    resultado = "<div><h1 style='color: darkred; font-weight: bold;'>No ha iniciado ninguna sesión</h1></div>";
}
%>
<link rel="stylesheet" href="common/general.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<h1>Control de Sesión</h1>
<hr/>
<hr/>
<%=resultado %>
<div id="contenedor1">
</div>

</body></html>