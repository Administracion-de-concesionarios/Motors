package com.portafolio.motors.ing.sis.proyecto.modelo;

import com.portafolio.motors.ing.sis.proyecto.controlador.Listas;
import com.portafolio.motors.ing.sis.proyecto.controlador.concesionarioBuilder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Yonier Asprilla
 */
public class SQLstatement {

    private Listas<concesionarioBuilder> lista;
    conexion c = new conexion();
    Statement sta;
    String sql;
    private final Connection cn = c.getConnection();
    PreparedStatement ps = null;
    ResultSet rs = null;
    private concesionarioBuilder concesionario;

    public SQLstatement() {
        this.lista = new Listas<>();
    }

    public Listas<concesionarioBuilder> listaConcesionarios() {
        return lista;
    }

    /**
     * REGISTRAR CONCESIONARIOS
     *
     * @param id
     * @param nombre
     * @param direccion
     * @param telefono
     * @return
     */
    public boolean nuevosConcesionarios(int id, String nombre, String direccion, int telefono) {
        try {
            
            ps = cn.prepareStatement("call SP_INSERTARCONCESIONARIO (?,?,?,?)");
            //PARAMETROS DE ENTRADA
            ps.setInt(1, id);
            ps.setString(2, nombre);
            ps.setString(3, direccion);
            ps.setInt(4, telefono);

            boolean prueba = ps.execute();
            if (prueba == true) {
                JOptionPane.showMessageDialog(null, "¡Se registro en concesionario con exito!");
                //Dialogs.showInformationDialog(Stage, "Registro Completo!!", "Information Dialog", "tittle");
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "¡Error al insertar los datos en la BD!");
            Logger.getLogger(SQLstatement.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }

    public Listas<concesionarioBuilder> buscarConcesionarios() {
        try {
            ps = cn.prepareStatement("call SP_BUSCARCONCESIONARIO");
            rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    concesionario = new com.portafolio.motors.ing.sis.proyecto.controlador.concesionarioBuilder();
                    concesionario.setId(rs.getInt(1));
                    concesionario.setNombre(rs.getString(2));
                    concesionario.setDireccion(rs.getString(3));
                    concesionario.setTelefono(rs.getInt(4));
                    lista.addFirst(concesionario);
                }
            }
            return lista;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public boolean agregarCaracteristicas(int id, String descripcion, String maxVel, String maxTorque, String tipoCombustible, String aceleracion, String kilometraje, String suspension, String radiador) {

        try {
            ps = cn.prepareStatement("call SP_INSERTARCARACTERISTICAS (?,?,?,?,?,?,?,?,?)");

            ps.setInt(1, id);
            ps.setString(2, descripcion);
            ps.setString(3, maxVel);
            ps.setString(4, maxTorque);
            ps.setString(5, tipoCombustible);
            ps.setString(6, aceleracion);
            ps.setString(7, kilometraje);
            ps.setString(8, suspension);
            ps.setString(9, radiador);

            boolean insert = ps.execute();
            if (insert != false) {
                JOptionPane.showMessageDialog(null, "¡Se han registrado las caracteristicas con exito!", "Motors", JOptionPane.INFORMATION_MESSAGE);
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "¡Error al insertar los datos en la BD!");
            Logger.getLogger(SQLstatement.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

}
