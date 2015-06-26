<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@page import="java.util.*" %>
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
    <div class="fl_right">
      <img id="c" src="Los-Tres-Cerditos-76911.gif" alt="" >
      <h2>Presentación:</h2>
      <p>Reciba un cordial y nuestra formal presentación. Nosotros somos Multiservicios La #1, una empresa dedicada a la venta y distribución de carne de cerdos y embutidos para todo tipo de pedidos. Contamos con carnes de la mejor calidad y los embutidos más suculentos que haya probado. Nuestro objetivo es garantizar la calidad y satisfacer las necesidades de nuestros clientes.</p>
      <h2>Propietarios: </h2>
      <p>Wilson Salazar, Sandra Machuca e hijos.</p>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="footer">
    <div class="footbox twitter">
      <h2>Facebook</h2>
      <ul>
        <li><a href="https://www.facebook.com/pages/Multiservicios-y-Distribuciones-La1/1592046441054930?ref=hlc"><img src="facebookSiguenos.jpg" alt="" style="width:200px"/></a></li>
      </ul>
    </div>
    <div class="footbox flickr">
      <h2>Conócenos...</h2>
      <ul>
        <li><a href="#"><img  src="#" alt="" /></a></li>
        <li><a href="#"><img  src="#" alt="" /></a></li>
        <li><a href="#"><img  src="#" alt="" /></a></li>
        <li><a href="#"><img  src="#" alt="" /></a></li>
        <li><a href="#"><img  src="#" alt="" /></a></li>
        <li><a href="#"><img  src="#" alt="" /></a></li>
      </ul>
      <br class="clear" />
    </div>
    <div class="footbox posts">
      <h2>Comenta...</h2>
      <div id="respond">
  
        <form id="myForm" name="myForm" action="/comentarios" method="post">
          <p>
            <label for="name">Name:</label>
            <input type="text" name="nombre" id="nombre"  value="" size="22">
          </p><br>
          <p>
            <label for="email">Email:</label>
            <input type="email" name="correo" id="correo"  value="" size="22">
          </p><br>
          <p>
            <textarea name="comentarios" id="comentarios" cols="32" rows="7"></textarea>
          </p><br>
          <p id="enviar">
          
            <input name="enviar" type="submit" id="enviar" value="Enviar">
            &nbsp;
            <input name="reset" type="reset" id="reset" tabindex="5" value="Limpiar">
          </p>
        </form>
      </div>
    </div>
    <div class="footbox banners last">
  
      <h2>Comentarios</h2>
      <div id="comments">
        <ul class="commentlist">
          <li class="comment_odd">
            <div class="author"><span class="name"><a href="#"><%=session.getAttribute("nombre")%></a></span> <span class="wrote">escribió:</span></div>
            <div class="submitdate"><a href="">Mayo 28, 2015 at 12:54 pm</a></div>
            <p><%=session.getAttribute("comentarios")%></p>
          </li>
        </ul>
      </div>      
    </div>
    <br class="clear" />
  </div>
</div>

<!-- ####################################################################################################### -->
</body>
</html>
