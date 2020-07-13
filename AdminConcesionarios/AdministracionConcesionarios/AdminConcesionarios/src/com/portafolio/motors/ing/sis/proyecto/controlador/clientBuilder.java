package com.portafolio.motors.ing.sis.proyecto.controlador;

import java.sql.Date;

/**
 *
 * @author Michael González
 */
public class clientBuilder {

    private int id;
    private String nombre;
    private String apellidos;
    private int telefono;
    private String email;
    private Date fNac;
    private String profesion;

    public clientBuilder(int id, String nombre, String apellidos, int telefono, String email, Date fNac, String profesion) {
        this.id = id;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.telefono = telefono;
        this.email = email;
        this.fNac = fNac;
        this.profesion = profesion;
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

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getfNac() {
        return fNac;
    }

    public void setfNac(Date fNac) {
        this.fNac = fNac;
    }

    public String getProfesion() {
        return profesion;
    }

    public void setProfesion(String profesion) {
        this.profesion = profesion;
    }

    public clientBuilder() {

    }

    @Override
    public String toString() {
        return "clienteBuilder{" + "id=" + id + ", nombre=" + nombre + ", apellidos=" + apellidos + ", telefono=" + telefono + ", email=" + email + ", fNac=" + fNac + ", profesion=" + profesion + '}';
    }

}
