package com.portafolio.motors.ing.sis.proyecto.controlador;

/**
 *
 * @author Yonier Asprilla
 */
public class featuresBuilder {

    private int id;
    private String descripcion;
    private String maxVel;
    private String maxTorque;
    private String tipoCombustible;
    private String aceleracion;
    private String kilometraje;
    private String suspension;
    private String radiador;

    public featuresBuilder(int id, String descripcion, String maxVel, String maxTorque, String tipoCombustible, String aceleracion, String kilometraje, String suspension, String radiador) {
        this.id = id;
        this.descripcion = descripcion;
        this.maxVel = maxVel;
        this.maxTorque = maxTorque;
        this.tipoCombustible = tipoCombustible;
        this.aceleracion = aceleracion;
        this.kilometraje = kilometraje;
        this.suspension = suspension;
        this.radiador = radiador;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getMaxVel() {
        return maxVel;
    }

    public void setMaxVel(String maxVel) {
        this.maxVel = maxVel;
    }

    public String getMaxTorque() {
        return maxTorque;
    }

    public void setMaxTorque(String maxTorque) {
        this.maxTorque = maxTorque;
    }

    public String getTipoCombustible() {
        return tipoCombustible;
    }

    public void setTipoCombustible(String tipoCombustible) {
        this.tipoCombustible = tipoCombustible;
    }

    public String getAceleracion() {
        return aceleracion;
    }

    public void setAceleracion(String aceleracion) {
        this.aceleracion = aceleracion;
    }

    public String getKilometraje() {
        return kilometraje;
    }

    public void setKilometraje(String kilometraje) {
        this.kilometraje = kilometraje;
    }

    public String getSuspension() {
        return suspension;
    }

    public void setSuspension(String suspension) {
        this.suspension = suspension;
    }

    public String getRadiador() {
        return radiador;
    }

    public void setRadiador(String radiador) {
        this.radiador = radiador;
    }

    public featuresBuilder() {
    }

    @Override
    public String toString() {
        return "caracteristicasBuilder{" + "id=" + id + ", descripcion=" + descripcion + ", maxVel=" + maxVel + ", maxTorque=" + maxTorque + ", tipoCombustible=" + tipoCombustible + ", aceleracion=" + aceleracion + ", kilometraje=" + kilometraje + ", suspension=" + suspension + ", radiador=" + radiador + '}';
    }

}
