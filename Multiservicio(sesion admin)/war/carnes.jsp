<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!-- The HTML 4.01 Transitional DOCTYPE declaration-->
<!-- above set at the top of the file will set     -->
<!-- the browser's rendering engine into           -->
<!-- "Quirks Mode". Replacing this declaration     -->
<!-- with a "Standards Mode" doctype is supported, -->
<!-- but may lead to some differences in layout.   -->

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
    <div class="fl_right"><img src="logo.jpg" alt="" ></div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li><a href="index.jsp">Inicio</a></li>
        <li class="active"><a href="#">Te ofrecemos</a>
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
      <form action="/iniciar.jsp">
       <input type="submit"  value="Iniciar Sesion"></form>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="featured_intro">
  <br><br>
  <div id="carnes">
  <form name="formu" action="/pedidos" method="get">
    <h2>Te ofrecemos:</h2><br><br>
      <table style="width:100%" border="1">
      	<tr>
    		<th>Cabeza</th>		
    		<th>Cogote</th>
    		<th>Costillas</th>
  		</tr>
  		<tr>
    		<td><img id="d" src="cabeza.jpg" width="150px" alt=""><br><br>
    			<input type="checkbox" name="cabeza" value="entera">Entera  S/<input type="text" name="precio" value="3.50" disabled size="4">x Kg<br>
				<input type="checkbox" name="cabeza" value="picada">Picada  S/<input type="text" name="precio" value="5.00" disabled size="4"> x Kg<br>
    		</td>
    		<td><img id="d" src="cogote.jpg" width="150px" alt=""><br><br>
    			S/<input type="text" name="precio" value="12.00" disabled size="4"> x Kg<br><br>
    			<input type="checkbox" name="cogote" value="adobo">Para el adobo<br>
				<input type="checkbox" name="cogote" value="horno">Para el horno<br>
    		</td>		
    		<td><img id="d" src="costilla.jpg" width="150px" alt=""><br><br>
    			S/<input type="text" name="precio" value="13.00" disabled size="4"> x Kg<br><br>
    			<input type="checkbox" name="costilla" value="chicharron">Para chicharrón<br>
				<input type="checkbox" name="costilla" value="horno">Para el horno<br>
    		</td>
  		</tr>
      </table><br><br>
      <table style="width:100%" border="1">
      	<tr>
    		<th>Lomo</th>		
    		<th>Brazuelo</th>
    		<th>Pierna</th>
  		</tr>
  		<tr>
    		<td><img id="d" src="lomo.jpg" width="150px" alt=""><br><br>
    			S/<input type="text" name="precio" value="14.00" disabled size="4"> x Kg<br><br>
    			<input type="checkbox" name="lomo" value="chuleta">Chuleta<br>
				<input type="checkbox" name="lomo" value="horno">Para el horno<br>
    		</td>
    		<td><br><br><img id="d" src="brazuelos.jpg" width="150px" alt=""><br><br>
    			S/<input type="text" name="precio" value="11.00" disabled size="4"> x Kg<br><br>
    			<input type="checkbox" name="brazuelo" value="adobo">Para el adobo<br>
				<input type="checkbox" name="brazuelo" value="horno">Para el horno<br>
				<input type="checkbox" name="brazuelo" value="chicharron">Para chicharrón<br>
				<input type="checkbox" name="brazuelo" value="chuleta">Chuleta<br>
    		</td>		
    		<td><img id="d" src="pierna.jpg" width="150px" alt=""><br><br>
    			S/<input type="text" name="precio" value="13.00" disabled size="4"> x Kg<br><br>
    			<input type="checkbox" name="pierna" value="chuleta">Chuleta<br>
				<input type="checkbox" name="pierna" value="horno">Para el horno<br>
    		</td>
  		</tr>
      </table><br><br>
      	<input type="submit" value="Enviar Pedido" />
      </form>
   </div>
    <br class="clear" />
  </div>
</div>
</body>
</html>
