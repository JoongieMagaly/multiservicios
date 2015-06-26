package cerdo.unsa;

import java.util.*;
import javax.jdo.annotations.*;

import com.google.appengine.api.datastore.Key;
@PersistenceCapable
public class Usuario {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private String correo;
	
	@Persistent
	private String comentarios;
	
	public Usuario(String n,String c,String com){
		nombre=n;
	    correo=c;
	    comentarios=com;
	}

	public Key getKey() {
		return key;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getComentarios() {
		return comentarios;
	}

	public void setCOmentarios(String comentarios) {
		this.comentarios = comentarios;
	}

	@Override
	public String toString() {
		return "Usuario [key=" + key + ", nombre=" + nombre + ", correo="
				+ correo + ", comentarios=" + comentarios + "]";
	}
	
}

