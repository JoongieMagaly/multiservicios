package cerdo.unsa;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.jdo.annotations.*;

import com.google.appengine.api.datastore.Key;
@PersistenceCapable
public class Carne{
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private String[] forma;
	
	@Persistent
	private String precio;
	
	@Persistent
	private String cantidad;
	
	@Persistent
	private String unidad;
	
	public Carne(String n, String[] f, String p){
		nombre=n;
	    forma=f;
	    precio=p;
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

	public String[] getForma() {
		return forma;
	}

	public void setForma(String[] forma) {
		this.forma = forma;
	}

	public String getPrecio() {
		return precio;
	}

	public void setPrecio(String precio) {
		this.precio = precio;
	}

	public String getCantidad() {
		return cantidad;
	}

	public void setCantidad(String cantidad) {
		this.cantidad = cantidad;
	}

	public String getUnidad() {
		return unidad;
	}

	public void setUnidad(String unidad) {
		this.unidad = unidad;
	}

	@Override
	public String toString() {
		return "Carne [nombre=" + nombre + ", forma=" + array()
				+ ", precio=" + precio + ", cantidad=" + cantidad + ", unidad="
				+ unidad + "]";
	}
	
	public String array(){
		String s="";
		for (int i=0; i<forma.length;i++){
			s+=forma[i]+" ";
		}
		return s;
	}
}


