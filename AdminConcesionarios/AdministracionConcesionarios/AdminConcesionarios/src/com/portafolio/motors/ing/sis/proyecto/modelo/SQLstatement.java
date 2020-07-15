package com.portafolio.motors.ing.sis.proyecto.modelo;

import com.portafolio.motors.ing.sis.proyecto.controlador.Listas;
import com.portafolio.motors.ing.sis.proyecto.controlador.clientBuilder;
import com.portafolio.motors.ing.sis.proyecto.controlador.concesionarioBuilder;
import com.portafolio.motors.ing.sis.proyecto.controlador.employeeBuilder;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import static java.util.Collections.singleton;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Yonier Asprilla
 */
public class SQLstatement {

    conexion c;
//    private static final SQLstatement instance = new SQLstatement();
//
//    public static SQLstatement getInstance() {
//        return instance;
//    }

    Statement sta;
    String sql;
    private final Connection cn = conexion.getConnection();
    PreparedStatement ps = null;
    ResultSet rs = null;
    private Listas<concesionarioBuilder> lista;
    private concesionarioBuilder concesionario;
    private Listas<employeeBuilder> listEmployee;
    private employeeBuilder employee;
    private Listas<clientBuilder> clientList;
    private clientBuilder client;

    //CONSTRUCTOR
    public SQLstatement() {
        this.c = new conexion();
        this.lista = new Listas<>();
    }

    public Listas<concesionarioBuilder> listaConcesionarios() {
        return lista;
    }

    /**
     * EN ESTE METODO SE REGISTRAN TODOS LOS CONCESIONARIOS EN LA BD
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

    /**
     * EN ESTE METODO SE CONSULTAN TODOS LOS DATOS DE LOS CONCESIONARIOS SIN
     * IMPORTAR CUAL SEA
     */
    public Listas<concesionarioBuilder> buscarConcesionarios() {
        try {
            ps = cn.prepareStatement("select * from gc_concesionario");
            rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    concesionario = new concesionarioBuilder();
                    concesionario.setId(rs.getInt(1));
                    concesionario.setNombre(rs.getString(2));
                    concesionario.setDireccion(rs.getString(3));
                    concesionario.setTelefono(rs.getInt(4));
                    lista.addFirst(concesionario);
                }
            }
            System.out.println("datos al llenar la lista");
            System.out.println(concesionario.getId());
            System.out.println(concesionario.getNombre());
            return lista;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (NullPointerException throwables) {
            throwables.getCause();
        }
        return null;
    }

    /**
     * EN ESTE METODO SE CONSULTAN LOS DATOS DE LOS CONCESIONARIOS POR ID
     *
     * @param id
     * @return
     */
    public Listas<concesionarioBuilder> consultarConcesionarios(int id) {
        try {
            ps = cn.prepareStatement("select * from gc_concesionario where CON_ID = ?");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    concesionarioBuilder datos = new concesionarioBuilder();
                    datos.setId(rs.getInt(1));
                    datos.setNombre(rs.getString(2));
                    datos.setDireccion(rs.getString(3));
                    datos.setTelefono(rs.getInt(4));
                    lista.addFirst(datos);
                }
            }
            return lista;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "No se pudieron cargar los datos!");
            System.err.format("SQL State: %s\n%s ", e.getSQLState(), e.getMessage());
        }
        return null;
    }

    /**
     * EN ESTE METODO SE ENVIAN LOS DATOS A LA BD PARA MODIFICARLOS
     *
     * @param id
     * @param nombre
     * @param direccion
     * @param telefono
     * @return
     */
    public boolean modificarConcesionarios(int id, String nombre, String direccion, int telefono) {
        try {

            ps = cn.prepareStatement("call SP_MODIFICARCONCESIONARIO (?,?,?,?)");
            ps.setInt(1, id);
            ps.setString(2, nombre);
            ps.setString(3, direccion);
            ps.setInt(4, telefono);

            int modificar = ps.executeUpdate();
            if (modificar > 0) {
                JOptionPane.showMessageDialog(null, "Los datos se han modificado con exito en la BD");
            } else {
                JOptionPane.showMessageDialog(null, "Lo sentimos, los datos no se han podido modificar!", "Error", JOptionPane.ERROR_MESSAGE);
                return false;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error inesperado, estamos trabajando en ello!", "Error de la BD", JOptionPane.ERROR_MESSAGE);
            Logger.getLogger(SQLstatement.class.getName()).log(Level.SEVERE, null, e.getMessage());
        }
        return true;
    }

    public Listas<concesionarioBuilder> eliminarConcesionarios(int id) {
        try {

            ps = cn.prepareStatement("call SP_BORRARCONCESIONARIO (?)");
            ps.setInt(1, id);
            ps.executeUpdate();
            if (rs != null) {
                while (rs.next()) {
                    concesionario = new concesionarioBuilder();
                    concesionario.setId(rs.getInt(1));
                    concesionario.setNombre(rs.getString(2));
                    concesionario.setDireccion(rs.getString(3));
                    concesionario.setTelefono(rs.getInt(4));
                    lista.addFirst(concesionario);
                }
            }
            JOptionPane.showMessageDialog(null, "El concesionario se ha eliminado con exito!!", "Eliminando...!", JOptionPane.INFORMATION_MESSAGE);
            return lista;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Upss, no se ha podido esta vez!", "Error desde la BD", JOptionPane.ERROR_MESSAGE);
            System.err.format("SQL DIJO: ", e.getSQLState(), e.getMessage());
        }
        return null;
    }

    /**
     * EN ESTE METODO SE REGISTRAN LAS CARACTERISTICAS DE CADA VEHICULO
     *
     * @param id
     * @param descripcion
     * @param maxVel
     * @param maxTorque
     * @param tipoCombustible
     * @param aceleracion
     * @param kilometraje
     * @param suspension
     * @param radiador
     * @return
     */
    public boolean agregarCaracteristicas(int id, String descripcion, String maxVel, String maxTorque, String tipoCombustible, String aceleracion, String kilometraje, String suspension, String radiador) {

        try {
            ps = cn.prepareStatement("call SP_AGREGARCARACTERISTICAS (?,?,?,?,?,?,?,?,?)");

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

    /**
     * ESTE METODO LO UTILIZAMOS PARA AGREGAR NUEVOS EMPLEADOS A LA BD
     *
     * @param id
     * @param nombre
     * @param apellidos
     * @param direccion
     * @param telefono
     * @param dni
     * @param jefe
     * @param entrada
     * @param salida
     * @return
     */
    public boolean addEmployee(String id, String nombre, String apellidos, Object direccion, String telefono, String dni, Object sueldo, String jefe, Date entrada, Date salida, String cargo) {
        try {
            ps = cn.prepareStatement("call SP_INSERTAREMPLEADO(?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, id);
            ps.setString(2, nombre);
            ps.setString(3, apellidos);
            ps.setObject(4, direccion);
            ps.setString(5, telefono);
            ps.setString(6, dni);
            ps.setObject(7, sueldo);
            ps.setString(8, jefe);
            ps.setDate(9, entrada);
            ps.setDate(10, salida);
            ps.setString(11, cargo);

            boolean add = ps.execute();

            if (add != false) {
                System.out.println("SE ESTA MANDANDO A LA DB: USERNAME " + id);
                System.out.println("SE ESTA MANDANDO A LA DB: NOMBRES " + nombre);
                System.out.println("SE ESTA MANDANDO A LA DB: APELLIDOS " + apellidos);
                System.out.println("SE ESTA MANDANDO A LA DB: DIRECCION " + direccion);
                System.out.println("SE ESTA MANDANDO A LA DB: TELEFONO " + telefono);
                System.out.println("SE ESTA MANDANDO A LA DB: DNI " + dni);
                System.out.println("SE ESTA MANDANDO A LA DB: SALARIO " + sueldo);
                System.out.println("SE ESTA MANDANDO A LA DB: JEFE " + jefe);
                System.out.println("SE ESTA MANDANDO A LA DB: ENTRADA " + entrada);
                System.out.println("SE ESTA MANDANDO A LA DB: SALIDA " + salida);
                System.out.println("SE ESTA MANDANDO A LA DB: CARGO " + cargo);
                JOptionPane.showMessageDialog(null, "¡Se ha vinculado un nuevo empleado!", "Motors", JOptionPane.INFORMATION_MESSAGE);
            }

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "¡Error al insertar los datos en la BD!");
            Logger.getLogger(SQLstatement.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
        return true;
    }

    /**
     *
     * @return
     */
    public Listas<employeeBuilder> showData() {
        try {
            ps = cn.prepareStatement("select * from gc_empleado");
            rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    employee = new employeeBuilder();
                    employee.setId(rs.getString(1));
                    employee.setNombre(rs.getString(2));
                    employee.setApellidos(rs.getString(3));
                    employee.setDireccion(rs.getString(4));
                    employee.setTelefono(rs.getString(5));
                    employee.setDni(rs.getString(6));
                    employee.setSueldo(rs.getObject(7));
                    employee.setJefe(rs.getString(8));
                    employee.setFechaAlta(rs.getDate(9));
                    employee.setFechaBaja(rs.getDate(10));
                    employee.setTipoEmpleado(rs.getString(11));
                    listEmployee.addFirst(employee);
                }
            }
            return listEmployee;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (NullPointerException throwables) {
            throwables.getCause();
        }
        return null;
    }

    /**
     *
     * @param username
     * @return
     */
    public Listas<employeeBuilder> buscarPorSeleccion(Object username) {

        try {
            ps = cn.prepareStatement("selec * from gc_empleado where EMP_ID = ?");
            ps.setObject(1, username);
            rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    employeeBuilder datos = new employeeBuilder();
                    datos.setId(rs.getString(1));
                    datos.setNombre(rs.getString(2));
                    datos.setApellidos(rs.getString(3));
                    datos.setDireccion(rs.getString(4));
                    datos.setTelefono(rs.getString(5));
                    datos.setDni(rs.getString(6));
                    datos.setSueldo(rs.getObject(7));
                    datos.setJefe(rs.getString(8));
                    datos.setFechaAlta(rs.getDate(9));
                    datos.setFechaBaja(rs.getDate(10));
                    datos.setTipoEmpleado(rs.getString(11));
                    listEmployee.addFirst(datos);
                }
            }
            return listEmployee;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "No se pudieron cargar los datos!", "Motors", JOptionPane.ERROR_MESSAGE);
            System.err.format("SQL State: %s\n%s ", e.getSQLState(), e.getMessage());
        }
        return null;
    }

    public boolean modifyEmployee(String id, String nombre, String apellidos, Object direccion, String telefono, String dni, Object sueldo, String jefe, Date entrada, Date salida, String cargo) {
        try {
            ps = cn.prepareStatement("call SP_MODIFICAREMPLEADO (?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, id);
            ps.setString(2, nombre);
            ps.setString(3, apellidos);
            ps.setObject(4, direccion);
            ps.setString(5, telefono);
            ps.setString(6, dni);
            ps.setObject(7, sueldo);
            ps.setString(8, jefe);
            ps.setDate(9, entrada);
            ps.setDate(10, salida);
            ps.setString(11, cargo);

            int modify = ps.executeUpdate();
            if (modify > 0) {
                JOptionPane.showMessageDialog(null, "¡Se han modificado los datos en la base de datos!", "Motors", JOptionPane.INFORMATION_MESSAGE);
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "¡Ocurrió un error al mandar los datos a la BD", "Motors", JOptionPane.ERROR_MESSAGE);
            System.out.println("LA BD DIJO: " + e.getMessage());
        }
        return false;
    }

    //CRUD client
    /**
     * INSERTAR NUEVO CLIENTE A LA BASE DE DATOS
     *
     * @param id
     * @param nombre
     * @param apellidos
     * @param telefono
     * @param email
     * @param fNac
     * @param profesion
     * @return
     */
    public boolean addClient(int id, String nombre, String apellidos, int telefono, String email, Date fNac, String profesion) {
        try {
            ps = cn.prepareStatement("call SP_AGREGARCLIENTE(?,?,?,?,?,?,?)");

            ps.setInt(1, id);
            ps.setString(2, nombre);
            ps.setString(3, apellidos);
            ps.setInt(4, telefono);
            ps.setString(5, email);
            ps.setDate(6, fNac);
            ps.setString(7, profesion);

            rs = ps.executeQuery();
            if (rs != null) {
                System.out.println("DATOS: ID " + id);
                System.out.println("DATOS: NOMBRE " + nombre + " " + apellidos);
                System.out.println("DATOS: TELEFONO " + telefono);
                System.out.println("DATOS: EMAIL " + email);
                System.out.println("DATOS: FECHA NAC " + fNac.toString());
                System.out.println("DATOS: PROFESION " + profesion);
                JOptionPane.showMessageDialog(null, "¡Se ha registrado un nuevo cliente!", "Motors", JOptionPane.INFORMATION_MESSAGE);
                return true;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "¡Error al insertar los datos en la BD!", "Motors", 0);
            Logger.getLogger(SQLstatement.class.getName()).log(Level.SEVERE, null, e);
            e.printStackTrace();
        } catch (NullPointerException e) {
            System.out.println("Error " + e);
        }
        return false;
    }

    /**
     * EN ESTE METODO SE CONSULTAN LOS DATOS DE TODOS LOS CLIENTES
     *
     * @return
     */
    public Listas<clientBuilder> buscarClientes() {
        try {
            ps = cn.prepareStatement("SELECT * FROM gc_cliente");
            rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    client = new clientBuilder();
                    client.setId(rs.getInt(1));
                    client.setNombre(rs.getString(2));
                    client.setApellidos(rs.getString(3));
                    client.setTelefono(rs.getInt(4));
                    client.setEmail(rs.getString(5));
                    client.setfNac(rs.getDate(6));
                    client.setProfesion(rs.getString(7));
                    clientList.addFirst(client);
                }
            }
            return clientList;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (NullPointerException throwables) {
            throwables.getCause();
        }
        return null;
    }

    /**
     * SE BUSCAN LOS DATOS DE LOS CLIENTES POR ID
     *
     * @param id
     * @return
     */
    public Listas<clientBuilder> findClient(int id) {
        try {
            ps = cn.prepareStatement("SELECT * FROM gc_cliente WHERE CON_ID = ?");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    clientBuilder cliente = new clientBuilder();
                    cliente.setId(rs.getInt(1));
                    cliente.setNombre(rs.getString(2));
                    cliente.setApellidos(rs.getString(3));
                    cliente.setTelefono(rs.getInt(4));
                    cliente.setEmail(rs.getString(5));
                    cliente.setfNac(rs.getDate(6));
                    cliente.setProfesion(rs.getString(7));
                    clientList.addFirst(cliente);
                }
            }
            return clientList;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "No se pudieron cargar los datos!");
            System.err.format("SQL State: %s\n%s ", e.getSQLState(), e.getMessage());
        }
        return null;
    }

    /**
     * SE ENVIAN LOS DATOS DE LOS CLIENTES A LA BD PARA MODIFICARLOS
     *
     * @param id
     * @param nombre
     * @param apellidos
     * @param email
     * @param telefono
     * @param fNac
     * @param profesion
     * @return
     */
    public boolean modifyClient(int id, String nombre, String apellidos, int telefono, String email, Date fNac, String profesion) {
        try {

            ps = cn.prepareCall("CALL SP_MODIFICARCLIENTE (?,?,?,?,?,?,?)");
            ps.setInt(1, id);
            ps.setString(2, nombre);
            ps.setString(3, apellidos);
            ps.setInt(4, telefono);
            ps.setString(5, email);
            ps.setDate(6, fNac);
            ps.setString(7, profesion);

            int modificar = ps.executeUpdate();
            if (modificar > 0) {
                JOptionPane.showMessageDialog(null, "Los datos se han modificado con exito en la BD");
                return true;
            } else {
                JOptionPane.showMessageDialog(null, "Lo sentimos, los datos no se han podido modificar!", "Error", JOptionPane.ERROR_MESSAGE);
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error inesperado, estamos trabajando en ello!", "Error de la BD", JOptionPane.ERROR_MESSAGE);
            Logger.getLogger(SQLstatement.class.getName()).log(Level.SEVERE, null, e.getMessage());
        }
        return false;
    }

    /**
     * SE ELIMINA EL CLIENTE CON EL ID ESPECIFICADO.
     *
     * @param id
     * @return
     */
    public Listas<clientBuilder> deleteClient(int id) {
        try {

            ps = cn.prepareCall("CALL SP_ELIMINARCLIENTE(?)");
            ps.setInt(1, id);
            ps.executeUpdate();
            if (rs != null) {
                while (rs.next()) {
                    client = new clientBuilder();
                    client.setId(rs.getInt(1));
                    client.setNombre(rs.getString(2));
                    client.setApellidos(rs.getString(3));
                    client.setTelefono(rs.getInt(4));
                    client.setEmail(rs.getString(5));
                    client.setfNac(rs.getDate(6));
                    client.setProfesion(rs.getString(7));
                    clientList.addFirst(client);
                }
            }
            JOptionPane.showMessageDialog(null, "El cliente se ha eliminado con exito!!", "Eliminando...!", JOptionPane.INFORMATION_MESSAGE);
            return clientList;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Upss, no se ha podido esta vez!", "Error desde la BD", JOptionPane.ERROR_MESSAGE);
            System.err.format("SQL DIJO: ", e.getSQLState(), e.getMessage());
        }
        return null;
    }

}
