package com.portafolio.motors.ing.sis.proyecto.modelo;

import com.portafolio.motors.ing.sis.proyecto.controlador.Listas;
import com.portafolio.motors.ing.sis.proyecto.controlador.concesionarioBuilder;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Yonier Asprilla
 */
public class SQLstatementTest {
    
    public SQLstatementTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of listaConcesionarios method, of class SQLstatement.
     */
    @Test
    public void testListaConcesionarios() {
        System.out.println("listaConcesionarios");
        SQLstatement instance = new SQLstatement();
        Listas<concesionarioBuilder> expResult = null;
        Listas<concesionarioBuilder> result = instance.listaConcesionarios();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of nuevosConcesionarios method, of class SQLstatement.
     */
    @Test
    public void testNuevosConcesionarios() {
        System.out.println("nuevosConcesionarios");
        int id = 0;
        String nombre = "";
        String direccion = "";
        int telefono = 0;
        SQLstatement instance = new SQLstatement();
        boolean expResult = false;
        boolean result = instance.nuevosConcesionarios(id, nombre, direccion, telefono);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of buscarConcesionarios method, of class SQLstatement.
     */
    @Test
    public void testBuscarConcesionarios() {
        System.out.println("buscarConcesionarios");
        SQLstatement instance = new SQLstatement();
        Listas<concesionarioBuilder> expResult = null;
        Listas<concesionarioBuilder> result = instance.buscarConcesionarios();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of agregarCaracteristicas method, of class SQLstatement.
     */
    @Test
    public void testAgregarCaracteristicas() {
        System.out.println("agregarCaracteristicas");
        int id = 0;
        String descripcion = "";
        String maxVel = "";
        String maxTorque = "";
        String tipoCombustible = "";
        String aceleracion = "";
        String kilometraje = "";
        String suspension = "";
        String radiador = "";
        SQLstatement instance = new SQLstatement();
        boolean expResult = false;
        boolean result = instance.agregarCaracteristicas(id, descripcion, maxVel, maxTorque, tipoCombustible, aceleracion, kilometraje, suspension, radiador);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
