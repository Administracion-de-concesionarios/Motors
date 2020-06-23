package co.portafolio.motors.ing.sis.proyecto.modelo;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Yonier Asprilla
 */
public class Conexion {

    private static Connection conectar;
    private static final String driver = "com.mysql.cj.jdbc.Driver";
    private static final String usuario = "root";
    private static final String pwd = "root";
    private static final String direccionDB = "jdbc:mysql://localhost:3306/concesionarios?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

    //jdbc:mysql://localhost/concesionarios
    public Conexion() {
        conectar = null;
        try {
            Class.forName(driver);
            conectar = DriverManager.getConnection(direccionDB, usuario, pwd);

            if (conectar != null) {
                System.out.println("Connected !D");

            }

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Fallo " + e);
        }

    }

    public Connection getConnection() {
        return conectar;
    }

    public void desconectar() {
        conectar = null;
        if (conectar == null) {
            System.out.println("Desconectado");
        }
    }

    /*

public static final String URL="jdbc:mysql://localhost:3306/COCINA2?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    void crateConnection(){
        try{
            //Connect to database
            Class.forName("con.mysql.cj.jdbc.Driver");
            Connection connect = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/concesionarios", "root","root");
            System.out.println("Connected !D");
        }
        catch(ClassNotFoundException ex){
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE,null,ex);
        }
        catch(SQLException ex){
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE,null,ex);
            ex.printStackTrace();
        }
    }*/
}
