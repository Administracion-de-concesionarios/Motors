package com.portafolio.motors.ing.sis.proyecto.modelo;

import java.sql.Connection;
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
public class conexionTest {
    
    public conexionTest() {
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
     * Test of getConnection method, of class conexion.
     */
    @Test
    public void testGetConnection() {
        System.out.println("getConnection");
        conexion instance = new conexion();
        Connection expResult = instance.getConnection();
        Connection result = instance.getConnection();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //if (!result.equals(expResult)) {
            fail("The test case is a prototype.");
        //}
        
    }

    /**
     * Test of desconectar method, of class conexion.
     */
//    @Test
//    public void testDesconectar() {
//        System.out.println("desconectar");
//        conexion instance = new conexion();
//        instance.desconectar();
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
    
}
