<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
      </ul>
    </div>
    <div id="search"><form action="/iniciar.jsp">
       <input type="submit"  value="Iniciar Sesion"></form>
    </div>
    <br class="clear">
  </div>
</div>

<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="featured_intro">
  <br><br>
  	<form action="/sesion.jsp" method="post">
    	<div class="text">
      		<h3><label for="codigo">Código de  Empleado:</label></h3>
      		<input type="text" name="codigo" value="12323132" tabindex="1"><br><br>
      		<p>*Conserva este Codigo para poder Iniciar Sesion
      		<h3><label for="pass">Contraseña:</label></h3>
      		<input type="password" name="contraseña" tabindex="2"><br><br>
      	</div>
    		<input name="submit" type="submit"  value="Registrar">
      		&nbsp;
      		<input name="reset" type="reset" id="reset" tabindex="5" value="Limpiar">
    </form>
    <br class="clear" />
  </div>
</div>

<!-- ####################################################################################################### -->
</body>
</html>
