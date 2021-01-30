package cl.awakelab.empleados.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="employees")
public class Empleados {

	@Id
	@Column(name="employee_id")
	private int id;
	
	@Column(name="first_name")
	private String nombre;
	
	@Column(name="last_name")
	private String apellido;

	private String email;
	
	@Column(name="phone")
	private String telefono;
	
	@Column(name="hire_date")
	private Date fechaContratacion;
	
	@ManyToOne
	@JoinColumn(name="manager_id")
	private Empleados jefe;
	

	@Column(name="job_title")
	private String cargo;
	
	public Empleados() {
		
	}

	public Empleados(int id, String nombre, String apellido, String email, String telefono, Date fechaContratacion,
			Empleados jefe, String cargo) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.email = email;
		this.telefono = telefono;
		this.fechaContratacion = fechaContratacion;
		this.jefe = jefe;
		this.cargo = cargo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public Date getFechaContratacion() {
		return fechaContratacion;
	}

	public void setFechaContratacion(Date fechaContratacion) {
		this.fechaContratacion = fechaContratacion;
	}

	public Empleados getJefe() {
		return jefe;
	}

	public void setJefe(Empleados jefe) {
		this.jefe = jefe;
	}


	public String getCargo() {
		return cargo;
	}

	public void setCargo(String cargo) {
		this.cargo = cargo;
	}
	
	
	
	
}
