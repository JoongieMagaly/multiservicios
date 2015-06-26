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
public class Codigo extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession registro= req.getSession(true);
		
	try {
		if( req.getParameter("codigo").equals("1a2b3c4d5e")){
			registro.setAttribute("acceso","permitido");
			registro.setMaxInactiveInterval(30);// 10 segundos
			resp.sendRedirect("/WEB-INF/registro.jsp");
		}	
		else {
			registro.setAttribute("acceso","denegado");
			registro.setMaxInactiveInterval(30);// 10 segundos
			resp.sendRedirect("/WEB-INF/iniciar.jsp");
		}	
		
	}
	catch(Exception e){
		
		
	}
	
	finally{ 	//out.close();
	}
	}}

