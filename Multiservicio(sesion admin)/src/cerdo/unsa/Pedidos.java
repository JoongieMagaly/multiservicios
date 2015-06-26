package cerdo.unsa;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.jdo.Query;
import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Pedidos extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse resp)throws IOException {
		
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		/*HttpSession pedidosesion= req.getSession(true);
		pedidosesion.setMaxInactiveInterval(30);*/
		
		String nombre = ""; 
		String[] forma=null;
		ArrayList<String> carnes=null;
		ArrayList<String> embutidos=null;
		try{
			if (req.getParameterValues("cabeza")!=null){
				nombre = "cabeza";
				forma = req.getParameterValues("cabeza");
				carnes=new ArrayList<String>();
				carnes.add(0, nombre);
				for (int i=0; i<forma.length; i++){
					carnes.add(i+1, forma[i]);
				}
				req.getSession().setAttribute(nombre, carnes);
			}
			if (req.getParameterValues("cogote")!=null){
				nombre = "cogote";
				forma = req.getParameterValues("cogote");
				carnes=new ArrayList<String>();
				carnes.add(0, nombre);
				for (int i=0; i<forma.length; i++){
					carnes.add(i+1, forma[i]);
				}
				req.getSession().setAttribute(nombre, carnes);
			}
			if (req.getParameterValues("costilla")!=null){
				nombre = "costillas";
				forma = req.getParameterValues("costilla");
				carnes=new ArrayList<String>();
				carnes.add(0, nombre);
				for (int i=0; i<forma.length; i++){
					carnes.add(i+1, forma[i]);
				}
				req.getSession().setAttribute(nombre, carnes);
			}
			if (req.getParameterValues("lomo")!=null){
				nombre = "lomo";
				forma = req.getParameterValues("lomo");
				carnes=new ArrayList<String>();
				carnes.add(0, nombre);
				for (int i=0; i<forma.length; i++){
					carnes.add(i+1, forma[i]);
				}
				req.getSession().setAttribute(nombre, carnes);
			}
			if (req.getParameterValues("brazuelo")!=null){
				nombre = "brazuelo";
				forma = req.getParameterValues("brazuelo");
				carnes=new ArrayList<String>();
				carnes.add(0, nombre);
				for (int i=0; i<forma.length; i++){
					carnes.add(i+1, forma[i]);
				}
				req.getSession().setAttribute(nombre, carnes);
			}
			if (req.getParameterValues("pierna")!=null){
				nombre = "pierna";
				forma = req.getParameterValues("pierna");
				carnes=new ArrayList<String>();
				carnes.add(0, nombre);
				for (int i=0; i<forma.length; i++){
					carnes.add(i+1, forma[i]);
				}
				req.getSession().setAttribute(nombre, carnes);
			}
			if (req.getParameterValues("queso")!=null){
				nombre = "queso de chancho";	
				embutidos=new ArrayList<String>();
				embutidos.add(nombre);
				req.getSession().setAttribute(nombre, embutidos);
			}
			if (req.getParameterValues("jamonada")!=null){
				nombre = "jamonada";
				embutidos=new ArrayList<String>();
				embutidos.add(nombre);
				req.getSession().setAttribute(nombre, embutidos);
			}
			if (req.getParameterValues("mortadela")!=null){
				nombre = "mortadela";				
				embutidos=new ArrayList<String>();
				embutidos.add(nombre);
				req.getSession().setAttribute(nombre, embutidos);
			}
			if (req.getParameterValues("salchicha")!=null){
				nombre = "salchicha";			
				embutidos=new ArrayList<String>();
				embutidos.add(nombre);
				req.getSession().setAttribute(nombre, embutidos);
			}
			if (req.getParameterValues("chorizo")!=null){
				nombre = "chorizo";			
				embutidos=new ArrayList<String>();
				embutidos.add(nombre);
				req.getSession().setAttribute(nombre, embutidos);
			}
			if (req.getParameterValues("manteca")!=null){
				nombre = "manteca";
				embutidos=new ArrayList<String>();
				embutidos.add(nombre);
				req.getSession().setAttribute(nombre, embutidos);
			}
			RequestDispatcher rd = req.getRequestDispatcher("pedidos.jsp");
			rd.forward(req, resp);
		}catch (Exception e){
			System.out.println(e.getMessage());
		}
	}
}
