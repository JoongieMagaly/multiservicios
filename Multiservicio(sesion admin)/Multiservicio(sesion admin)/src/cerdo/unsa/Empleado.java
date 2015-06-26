package cerdo.unsa;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
import com.google.appengine.api.datastore.Key;
@SuppressWarnings("unchecked")
@PersistenceCapable
public class Empleado {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String name;
	
	@Persistent
	private String lastname;
	
	@Persistent
	private String codicoe;

	@Persistent
	private String contrase�a;


	public Empleado(String name, String lastname, String codicoe,String contrase�a) {
		
		this.name = name;
		this.lastname = lastname;
		this.codicoe = codicoe;
		this.contrase�a = contrase�a;	
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getCodicoe() {
		return codicoe;
	}

	public void setCodicoe(String codicoe) {
		this.codicoe = codicoe;
	}
	public String getContrase�a() {
		return contrase�a;
	}
	
	public void setContrase�a(String contrase�a) {
		this.contrase�a = contrase�a;
	}
}
