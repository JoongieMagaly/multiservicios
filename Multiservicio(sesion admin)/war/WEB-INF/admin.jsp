<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cerdo.unsa.Empleado"%>
<%@ page import="cerdo.unsa.PersonaService"%>
<%@ page import="java.util.List" %>
    
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Multiservicios la #1</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="estilo1.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div class="fl_left">
      <h1><a href="index.jsp">Ventas de Carnes y Embutidos</a></h1>
      <p>La calidad, lo selecto e higiene usted lo encuentra en La #1</p>
    </div>
    <div class="fl_right"><img src="logo.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li class="active"><a href="index.jsp">Inicio</a></li>
        <li><a href="#">Te ofrecemos</a>
          <ul>
            <li><a href="carnes.jsp">Carne de cerdo</a></li>
            <li><a href="embutidos.jsp">Embutidos</a></li>
          </ul>
        </li>
        <li><a href="pedidos.jsp">Pedidos</a></li>
        <li><a href="delivery.jsp">Delivery</a></li>
        <li class="last"><a href="contactanos.jsp">Contáctanos</a></li>
          <li class="last"><a href="/cerrar">cerrar Sesion</a><br></li>    
      </ul>
    </div>
       
    <br class="clear">
  </div>
</div>

          <a href="/admin" color="white">Ver Empleados</a><br>
          <a href="/permisoe" color="white">Ver Pedidos</a><br>
        <a href="/permisod" color="white">Ver Delivery</a><br>
 

<form action="/Borrar" method="get">
Eliminar por correo codigo<br>
<input type=text name=eliminar>
<br>
<input type="submit" id="bot" value="Eliminar">
</form>

<table BORDER id="tab">
	<tr>
		<th>CODIGO</th> <th>NOMBRE</th> <th>APELLIDO</th><th>CONTRASEÑA</th>
	</tr>
<%
for( Empleado persona : (List<Empleado>)request.getAttribute("personas") ) {
	
%>
<tr>
		<td><%= persona.getCodicoe() %></td>
		<td><%= persona.getName() %></td>
		<td><%= persona.getLastname() %></td>
		<td><%= persona.getContraseña() %></td>
</tr>
<%
}
%>
</table>



</body>
</html>
