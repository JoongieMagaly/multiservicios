<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cerdo.unsa.*"%>
<%@ page import="cerdo.unsa.Carne"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.*;" %>

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

<script>
   function calcula(){
    var peso = document.calcular.peso.value;
    var precio = document.formu.precio.value;
    var unidad= document.calcular.unidad.value;
    if(unidad.equals("gr")){
    	var result = eval((peso+'*'+precio)/1000);
   		document.calcular.resultado.value = result;
    }
    else if(unidad.equals("kg")){
    	var result=eval(peso+'*'+precio);
    	document.calcular.resultado.value=result;
    }
} 
</script>

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
        <li><a href="index.jsp">Inicio</a></li>
        <li><a href="#">Te ofrecemos</a>
          <ul>
            <li><a href="carnes.jsp">Carne de cerdo</a></li>
            <li><a href="embutidos.jsp">Embutidos</a></li>
          </ul>
        </li>
        <li class="active"><a href="pedidos.jsp">Pedidos</a></li>
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
    <form name="calcular" action="#" method="get">
      <div class="text">
      		<h3><label for="nombre">Nombre/Empresa:</label></h3>
      		<input type="text" name="nombre" tabindex="1"><br><br>
      		<h3><label for="dni">DNI/RUC:</label></h3>
      		<input type="number" name="dni" tabindex="2"><br><br>
      		<h3><label for="direccion">Dirección:</label></h3>
      		<input type="text" name="direccion" tabindex="3"><br><br>
      		<h3><label for="telefono">Teléfono:</label></h3>
      		<input type="number" name="telefono" tabindex="4"><br><br>
      		<h3><label for="fechare">Fecha de recojo:(aaaa-mm-dd)</label></h3>
      		<input type="date" name="fechare" tabindex="5"><br><br>
      		<h3><label for="entrega">Tipo de entrega: Personal</label></h3><br>
    	</div>
    	<br><br>
    	
    	<table style="width:100%" border="1">
      	<tr>
    		<th><h2>Producto</h2></th>		
    		<th><h2>Cantidad</h2></th>
    		<th><h2>Monto</h2></th>
  		</tr>
  		<%String[] nombre = session.getValueNames();
      	for (int i=0; i<nombre.length; i++){
      		if (nombre[i].equals("cabeza") || nombre[i].equals("cogote") || nombre[i].equals("costillas")
      				|| nombre[i].equals("lomo") || nombre[i].equals("brazuelo") || nombre[i].equals("pierna")){
      			ArrayList<String> list = (ArrayList<String>)session.getAttribute(nombre[i]);
      			int len=list.size()-1;
      			%>
  		<tr>
    		<th rowspan=<%=len%>><%=list.get(0)%></th>
    		<%for (int j=1; j<list.size(); j++){ %>
    		<td><%=list.get(j) %> <input type="number" name="peso"> <select name="unidad">
    		    <option value="--" >--</option>
    		    <option value="gr" >gr</option>
    		    <option value="kg" >kg</option>
    		    <input type="Button" name="" value="ver monto" onclick="calcula()">
    		    </select></td>
    		<td><input type="Text" name="resultado" value="0" size="4"> 
    		
    		</td>
  		</tr>
  		      	<%}}%>
        <%} %>
      </table><br><br>
      
       	<table style="width:100%" border="1">
      	<tr>
    		<th><h2>Producto</h2></th>		
    		<th><h2>Cantidad</h2></th>
    		<th><h2>Monto</h2></th>
  		</tr>
  		<%String[] name = session.getValueNames();
      	for (int i=0; i<name.length; i++){
      		if (name[i].equals("queso de chancho") || name[i].equals("jamonada") ||name[i].equals("mortadela")
      				|| name[i].equals("salchicha") || name[i].equals("chorizo") || name[i].equals("manteca")){
      			ArrayList<String> list = (ArrayList<String>)session.getAttribute(name[i]);%>
  		<tr>
    		<td><%=list.get(0)%></td>
    		<td><input type="number" name="peso"> <select name="unidad">
    		    <option value="--" onclick="calcula">--</option>
    		    <option value="gr" onclick="calcula">gr</option>
    		    <option value="kg" onclick="calcula">kg</option>
    		    </select></td>
    		<td><input type="Text" name="resultado" value="0" size="4"></td>
  		</tr>
  		      	<%}%>
        <%} %>
      </table><br><br>
      	<input name="submit" type="submit" formaction="carnes.jsp" value="Carnes">
     	&nbsp;
     	<input name="submit" type="submit" formaction="embutidos.jsp" value="Embutidos">
     	&nbsp; 
      	<input name="reset" type="reset" id="reset" tabindex="5" value="Limpiar">
     	&nbsp;
      	<input name="submit" type="submit" value="Confirmar">
      	&nbsp;
      	<input name="submit" type="submit"  formaction="delivery.jsp" value="Delivery">
    </form>
    <br class="clear" />
  </div>
</div>
</body>
</html>
