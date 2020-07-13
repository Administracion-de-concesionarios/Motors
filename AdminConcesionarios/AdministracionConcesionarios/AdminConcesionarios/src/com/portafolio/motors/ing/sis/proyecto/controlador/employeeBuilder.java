package com.portafolio.motors.ing.sis.proyecto.controlador;

import java.sql.Date;

/**
 *
 * @author Yonier Asprilla
 */
public class employeeBuilder {

    private String id;
    private String nombre;
    private String apellidos;
    private Object direccion;
    private String telefono;
    private String dni;
    private Object sueldo;
    private String jefe;
    private Date fechaAlta;
    private Date fechaBaja;
    private String tipoEmpleado;

    public employeeBuilder(String id, String nombre, String apellidos, Object direccion, String telefono, String dni, Object sueldo, String jefe, Date fechaAlta, Date fechaBaja, String tipoEmpleado) {
        this.id = id;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.direccion = direccion;
        this.telefono = telefono;
        this.dni = dni;
        this.sueldo = sueldo;
        this.jefe = jefe;
        this.fechaAlta = fechaAlta;
        this.fechaBaja = fechaBaja;
        this.tipoEmpleado = tipoEmpleado;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public Object getDireccion() {
        return direccion;
    }

    public void setDireccion(Object direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public Object getSueldo() {
        return sueldo;
    }

    public void setSueldo(Object sueldo) {
        this.sueldo = sueldo;
    }

    public String getJefe() {
        return jefe;
    }

    public void setJefe(String jefe) {
        this.jefe = jefe;
    }

    public Date getFechaAlta() {
        return fechaAlta;
    }

    public void setFechaAlta(Date fechaAlta) {
        this.fechaAlta = fechaAlta;
    }

    public Date getFechaBaja() {
        return fechaBaja;
    }

    public void setFechaBaja(Date fechaBaja) {
        this.fechaBaja = fechaBaja;
    }

    public String getTipoEmpleado() {
        return tipoEmpleado;
    }

    public void setTipoEmpleado(String tipoEmpleado) {
        this.tipoEmpleado = tipoEmpleado;
    }

    public employeeBuilder() {

    }

    @Override
    public String toString() {
        return "employeeBuilder{" + "id=" + id + ", nombre=" + nombre + ", apellidos=" + apellidos + ", direccion=" + direccion + ", telefono=" + telefono + ", dni=" + dni + ", sueldo=" + sueldo + ", jefe=" + jefe + ", fechaAlta=" + fechaAlta + ", fechaBaja=" + fechaBaja + ", tipoEmpleado=" + tipoEmpleado + '}';
    }

}
