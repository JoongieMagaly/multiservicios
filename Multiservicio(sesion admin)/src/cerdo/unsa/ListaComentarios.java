package cerdo.unsa;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

	@SuppressWarnings("serial")
	public class ListaComentarios extends HttpServlet{
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			final Query q = pm.newQuery(Usuario.class);
					
				//q.setOrdering("id descending");
				//q.setRange(0, 10);			 
				try{
					@SuppressWarnings("unchecked")
					List<Usuario> comentarios = (List<Usuario>) q.execute();
					req.setAttribute("comentarios", comentarios);
					RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/listaComentarios.jsp");
					rd.forward(req, resp);
				}catch(Exception e){
					System.out.println(e);
				}finally{
					//Comprobar
					if( pm.currentTransaction().isActive() ){
						// Error occurred so rollback the transaction
						pm.currentTransaction().rollback();
				    }
					//
					q.closeAll();
					pm.close();
				}		
		}
	}
