package com.portafolio.motors.ing.sis.proyecto.modelo;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexion {

    private static Connection conectar;
//jdbc:mysql://localhost:3306/concesionarios?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

    private static final String driver = "com.mysql.cj.jdbc.Driver";
    private static final String usuario = "root";
    private static final String pwd = "root";
    private static final String direccionDB = "jdbc:mysql://localhost:3306/concesionarios?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

    public conexion() {
        conectar = null;
        try {
            Class.forName(driver);
            conectar = DriverManager.getConnection(direccionDB, usuario, pwd);

            if (conectar != null) {
                System.out.println("!D");

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

}
