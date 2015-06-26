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

@SuppressWarnings("serial")
public class Sesion extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession misesion= req.getSession(true);
		misesion.setMaxInactiveInterval(30);// 10 sleaegundos
		misesion.setAttribute("acceso","nuevo");
		
		
	try {
		
		if( req.getParameter("acceso").equals("nuevo")){
			misesion.setAttribute("acceso","nuevo");
			
			resp.sendRedirect("/iniciar.jsp");
		}
		

	}
	catch(Exception e){
		if( req.getParameter("usuario").equals("adminxxx")&&  req.getParameter("contraseña").equals("lokitaxti")){//||misesion.getAttribute("acceso").equals("permitido")){
			misesion.setAttribute("nombre","adminxxx");
			misesion.setAttribute("acceso","permitido");
			List<Empleado> personas = PersonaService.ListaEmpleados();
			req.setAttribute("personas", personas);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/admin.jsp");
			rd.forward(req, resp);
			
		}	
		else if(PersonaService.BuscarEmpleado(req.getParameter("usuario"),req.getParameter("contraseña"))==true){
			misesion.setAttribute("acceso","permitido");
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/entregapedido.jsp");
			rd.forward(req, resp);
			
			
		}
		else if( !req.getParameter("usuario").equals("adminxxx") || req.getParameter("contraseña").equals("lokitaxti")){
			misesion.setAttribute("acceso","denegado");
			misesion.setMaxInactiveInterval(10);// 10 segundos
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/iniciar.jsp");
			rd.forward(req, resp);
		}	
		
	}
	
	finally{ 	//out.close();
	}
	}}

