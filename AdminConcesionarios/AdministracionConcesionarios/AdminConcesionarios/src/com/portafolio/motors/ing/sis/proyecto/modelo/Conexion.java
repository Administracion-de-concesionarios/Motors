package com.portafolio.motors.ing.sis.proyecto.modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    private static Connection conectar;
//jdbc:mysql://localhost:3306/concesionarios?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String USUARIO = "root";
    private static final String PWD = "password";
    private static final String DIRECCION_DB = "jdbc:mysql://localhost:3306/concesionarios?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

    public Conexion() {
        conectar = null;
        try {
            Class.forName(DRIVER);
            conectar = DriverManager.getConnection(DIRECCION_DB, USUARIO, PWD);

            if (conectar != null) {
                System.out.println("!D");

            }

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Fallo " + e);
        }

    }

    public static Connection getConnection() {
        return conectar;
    }

    public void desconectar() {
        conectar = null;
        if (conectar == null) {
            System.out.println("Desconectado");
        }
    }

}
