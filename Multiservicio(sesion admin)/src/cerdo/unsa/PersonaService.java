package cerdo.unsa;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

/* Clase que tendrá los métodos para registrar y hacer consulta de los datos, 
 * para hacer consulta de datos usando JDO se utiliza el lenguaje JDOQL, 
 * que es el query language para consultar datos persistentes. */
public class PersonaService {
	//Cuantos datos mostrara en la consulta
	private final static int FETCH_MAX_RESULTS = 10;
	
	/*
	//Metodo para insertar un dato
	public static void insertar(String nombres, String apellidos, String correo, String color){
	 //LLamamos a la clase que tendra la persistencia
	 final PersistenceManager pm = PMF.get().getPersistenceManager();
	 //Creamos nuestra variable del tipo tutorial
	 final Persona persona = new Persona(nombres, apellidos,correo,color);
	 //Y hacemos el dato que sea persistente
	 pm.makePersistent(persona);
	}
	*/
	
	//Para consultar una persona por color
	
	
	//Para consulta todas las personas
	@SuppressWarnings("unchecked")
	public static List<Empleado> ListaEmpleados(){
	 final PersistenceManager pm = PMF.get().getPersistenceManager();
	 final Query query = pm.newQuery(Empleado.class);
	 query.setRange(0, FETCH_MAX_RESULTS);
	 return (List<Empleado>) query.execute();
	}
	
	@SuppressWarnings("unchecked")
	public static boolean BuscarEmpleado(String codigo,String contrase�a){
		boolean encontrado=false;
		 final PersistenceManager pm = PMF.get().getPersistenceManager();
		 String query = " select from " +
		 Empleado.class.getName() +
		 " where codicoe == '" +
		 codigo +  "'";
		 List<Empleado> personas = (List<Empleado>)pm.newQuery(query).execute();
			for(Empleado e:personas){
				if(e.getCodicoe().equals(codigo)&&e.getContrase�a().equals(contrase�a)){
				encontrado=true;	
		
				}
				
			}
				
			
		 return(encontrado);
		}
}