<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <h1><a href="sesion.jsp">Ventas de Carnes y Embutidos</a></h1>
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

          <a href="/permisoe" color="white">Ver Pedidos</a><br>
        <a href="/permisod" color="white">Ver Delivery</a><br>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="featured_intro">
  <br><br>
    <table style="width:100%" border="1">
      	<tr>
      		<th><h2>Fecha</h2></th>
    		<th><h2>Producto</h2></th>		
    		<th><h2>Cantidad</h2></th>
    		<th><h2>Monto</h2></th>
    		<th><h2>Fecha de recojo</h2></th>
  		</tr>
  		<tr>
    		<td>17/06/2015</td>
    		<td>Costillas</td>
    		<td>5</td>
    		<td>S/65.00</td>		
    		<td>19/06/2015</td>
  		</tr>
      </table>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
</body>
</html>
