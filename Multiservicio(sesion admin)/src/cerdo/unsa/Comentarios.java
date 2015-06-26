package cerdo.unsa;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.List;

import javax.jdo.Query;
import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

import cerdo.unsa.PMF;
import cerdo.unsa.Usuario;
@SuppressWarnings("serial")
public class Comentarios extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse resp)throws IOException {
		
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();

		String nombre = req.getParameter("nombre");
		String correo = req.getParameter("correo");
		String comentarios = req.getParameter("comentarios");
		
		//El Servlet crea un Comentario nuevo y lo hace persistente
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Usuario c = new Usuario(nombre,correo, comentarios);
		try{
			pm.makePersistent(c);
			req.getSession().setAttribute("nombre", c.getNombre());
			req.getSession().setAttribute("correo", c.getCorreo());
			req.getSession().setAttribute("comentarios", c.getComentarios());
			resp.sendRedirect("index.jsp");
		}catch(Exception e){
			System.out.println(e);
		}finally{
			//Comprobar
			if( pm.currentTransaction().isActive() ){
				// Error occurred so rollback the transaction
				pm.currentTransaction().rollback();
		    }
			//
			pm.close();
		}
		
	}
}
