package cerdo.unsa;
import java.io.IOException;

import java.io.PrintWriter;
//import java.io.PrintWriter;
import java.util.List;

import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import javax.jdo.PersistenceManager;
import javax.servlet.http.*;


@SuppressWarnings("serial")
public class Crear extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession registro= req.getSession(); 
		
	try {
		
		if( req.getParameter("acceso").equals("nuevo")){
			registro.setAttribute("acceso","nuevo");
			// 10 segundos
			resp.sendRedirect("/crear.jsp");
		}
		
	}
	catch(Exception e){
		if( req.getParameter("contrase�a")!=null){
			registro.setAttribute("acceso","permitido");
			registro.setAttribute("contrase�a",req.getParameter("contrase�a"));
			registro.setAttribute("codigo",req.getParameter("codigo"));
			
			String contrase�a=(String)registro.getAttribute("contrase�a");
			String nombre=(String)registro.getAttribute("nombre");
			String apellido=(String)registro.getAttribute("apellido");
			String codigo=(String)registro.getAttribute("codigo");
			Empleado nuevo=new Empleado(nombre,apellido,codigo,contrase�a);
			PersistenceManager pm = PMF.get().getPersistenceManager();
			try{
				pm.makePersistent(nuevo);
				
			}catch(Exception u){
				System.out.println(u);
				resp.getWriter().println("Ocurrio un error, <a href='index.jsp'>vuelva a intentarlo</a>");
			}finally{
				pm.close();
			}
			
			resp.sendRedirect("/sesion.jsp");
		}	
		else {
			registro.setAttribute("acceso","denegado");
			registro.setMaxInactiveInterval(30);// 10 segundos
			resp.sendRedirect("/registro.jsp");
		}		
		
	}
	
	finally{ 	//out.close();
	}
	
	
	}}






