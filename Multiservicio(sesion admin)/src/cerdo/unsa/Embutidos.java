package cerdo.unsa;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.jdo.annotations.*;

import com.google.appengine.api.datastore.Key;
@PersistenceCapable
public class Embutidos{
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private double precio;
	
	@Persistent
	private double cantidad;
	
	public Embutidos(String n){
		nombre=n;
	    precio=0.0;
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

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public double getCantidad() {
		return cantidad;
	}

	public void setCantidad(double cantidad) {
		this.cantidad = cantidad;
	}

	@Override
	public String toString() {
		return "Embutidos [nombre=" + nombre + ", precio="
				+ precio + ", cantidad=" + cantidad + "]";
	}
	
}


