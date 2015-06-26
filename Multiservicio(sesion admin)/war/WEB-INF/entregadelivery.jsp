<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Multiservicios la #1</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="estilo1.css" type="text/css" />
<script src="/js/jquery-1.11.3.min.js"></script>
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
<!-- ############################################iniciar  ####################################################### -->
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
    
    <div id="search">
    
    <form action="/sesion?acceso=nuevo" method="post">
       <input type="submit"  value="Iniciar Sesion">
       </form>
    </div>
    
    <br class="clear">
  </div>
</div>
<!-- ####################################################################################################### -->
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="featured_intro">
    <div class="fl_left">
      <h2>Multiservicios y Distribuciones La #1</h2>
    </div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
          <li class="active"><a href="/permisoe">Pedidos</a></li>
        <li><a href="/permisod">Delivery</a></li>
      </ul>
    </div>
    <div id="search">
    	<form action="/index.jsp">
       <input type="submit"  value="Cerrar Sesion"></form>
    </div>
    <br class="clear" />
  </div>
</div>
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
    		<th><h2>Fecha de entrega</h2></th>
    		<th><h2>Direccion</h2></th>
  		</tr>
  		<tr>
    		<td>17/06/2015</td>
    		<td>Jamonada</td>
    		<td>10</td>
    		<td>S/87</td>
    		<td>20/07/2015</td>		
    		<td>Los arces 103-Cayma</td>
  		</tr>
      </table>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
</body>
</html>
