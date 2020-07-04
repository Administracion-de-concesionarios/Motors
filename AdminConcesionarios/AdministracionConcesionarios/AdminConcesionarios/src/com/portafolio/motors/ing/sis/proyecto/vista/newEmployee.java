package com.portafolio.motors.ing.sis.proyecto.vista;

import com.portafolio.motors.ing.sis.proyecto.controlador.concesionarioBuilder;
import com.portafolio.motors.ing.sis.proyecto.modelo.SQLstatement;
import com.toedter.calendar.JDateChooser;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.swing.JOptionPane;

/**
 *
 * @author Yonier Asprilla
 */
public class newEmployee extends javax.swing.JPanel {

    private main main;
    private concesionarioBuilder cb;
    SQLstatement instance;

    public newEmployee(main main) {
        this.instance = new SQLstatement();
        this.main = main;
        initComponents();
    }

    private void add() {
        try {

            String id = txtId.getText();
            String nombre = txtNombre.getText();
            String apellidos = txtApellidos.getText();
            Object direccion = txtDireccion.getText();
            String telefono = txtTelefono.getText();
            String DNI = txtDNI.getText();
            String jefe = txtJefe.getText();
            Object salario = sueldo.getSelectedItem();

            //TOMO LA FECHA SELECCIONADA INICIAL
            Date fechaEntrada = dateIn.getDate();
            long formato = fechaEntrada.getTime();
            java.sql.Date entrada = new java.sql.Date(formato);

            java.sql.Date salida = null;
            if (undefined.isSelected()) {
                dateOut.enable(false);
                dateOut.setDate(null);
            } else {
                //TOMO FECHA SELECCIONADA FINAL
                Date fechaSalida = dateOut.getDate();
                long formatto = fechaSalida.getTime();
                salida = new java.sql.Date(formatto);
            }
            String puesto = (String) cargo.getSelectedItem();

            if (txtId.equals("") && txtNombre.equals("") && txtApellidos.equals("") && txtDireccion.equals("") && txtTelefono.equals("")
                    && txtDNI.equals("") && txtJefe.equals("") && dateIn.equals("")) {
                JOptionPane.showMessageDialog(null, "¡Debes llenar todos los campos!", "Motors", JOptionPane.INFORMATION_MESSAGE);
            } else {

                //IMPRIMO DATOS DE PRUEBA
                System.out.println("LA VISTA TIENE USERNAME " + id);
                System.out.println("LA VISTA TIENE NOMBRES " + nombre);
                System.out.println("LA VISTA TIENE APELLIDOS " + apellidos);
                System.out.println("LA VISTA TIENE DIRECCION " + direccion);
                System.out.println("LA VISTA TIENE TELEFONO " + telefono);
                System.out.println("LA VISTA TIENE DNI " + DNI);
                System.out.println("LA VISTA TIENE SALARIO " + salario);
                System.out.println("LA VISTA TIENE JEFE " + jefe);
                System.out.println("LA VISTA TIENE ENTRADA " + entrada);
                System.out.println("LA VISTA TIENE SALIDA " + salida);
                System.out.println("LA VISTA TIENE CARGO " + puesto);

                boolean add = instance.addEmployee(id, nombre, apellidos, direccion, telefono, DNI, salario, jefe, entrada, salida, puesto);
                if (add != false) {
                    JOptionPane.showMessageDialog(null, "¡Se ha vinculado el nuevo empleado!", "Motors", JOptionPane.INFORMATION_MESSAGE);
                } else {
                    JOptionPane.showMessageDialog(null, "¡Ocurrió un error!", "Motors", JOptionPane.ERROR_MESSAGE);
                }
            }
        } catch (NullPointerException throwables) {
            System.out.println("LA VISTA DIJO: " + throwables.getMessage() + " SEGUIDO DE: " + throwables.getCause());
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel20 = new javax.swing.JLabel();
        btnAtras = new keeptoo.KButton();
        jLabel5 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        txtTelefono = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        txtDNI = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        txtJefe = new javax.swing.JTextField();
        jLabel14 = new javax.swing.JLabel();
        txtId = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        txtNombre = new javax.swing.JTextField();
        jLabel16 = new javax.swing.JLabel();
        txtApellidos = new javax.swing.JTextField();
        jLabel17 = new javax.swing.JLabel();
        txtDireccion = new javax.swing.JTextField();
        cargo = new javax.swing.JComboBox<>();
        dateIn = new com.toedter.calendar.JDateChooser();
        jLabel18 = new javax.swing.JLabel();
        undefined = new javax.swing.JCheckBox();
        jLabel19 = new javax.swing.JLabel();
        dateOut = new com.toedter.calendar.JDateChooser();
        sueldo = new javax.swing.JComboBox<>();
        btnNew = new keeptoo.KButton();
        btnAceptar1 = new keeptoo.KButton();
        jLabel21 = new javax.swing.JLabel();

        setBackground(new java.awt.Color(204, 204, 204));
        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(14, 14, 14));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel2.setFont(new java.awt.Font("Perpetua Titling MT", 1, 18)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(204, 204, 204));
        jLabel2.setText("Motors &");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 260, -1, -1));

        jLabel1.setFont(new java.awt.Font("Perpetua Titling MT", 1, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(204, 204, 204));
        jLabel1.setText("CONCESIONARIOS");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 230, -1, -1));

        jLabel3.setFont(new java.awt.Font("Perpetua Titling MT", 1, 18)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(204, 204, 204));
        jLabel3.setText("Asociados");
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 290, -1, -1));

        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/img/logos.png"))); // NOI18N
        jPanel1.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 390, 280, -1));

        jLabel20.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/img/miniLogo.png"))); // NOI18N
        jPanel1.add(jLabel20, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 260, -1, -1));

        add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 290, 660));

        btnAtras.setText("He terminado");
        btnAtras.setBorderPainted(false);
        btnAtras.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        btnAtras.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnAtras.setIconTextGap(8);
        btnAtras.setkBackGroundColor(new java.awt.Color(136, 136, 136));
        btnAtras.setkEndColor(new java.awt.Color(136, 136, 136));
        btnAtras.setkHoverColor(new java.awt.Color(24, 25, 63));
        btnAtras.setkHoverEndColor(new java.awt.Color(136, 136, 136));
        btnAtras.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        btnAtras.setkHoverStartColor(new java.awt.Color(14, 14, 14));
        btnAtras.setkPressedColor(new java.awt.Color(136, 136, 136));
        btnAtras.setkSelectedColor(new java.awt.Color(136, 136, 136));
        btnAtras.setkStartColor(new java.awt.Color(136, 136, 136));
        btnAtras.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnAtras.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnAtras.setRolloverSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnAtras.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnAtras.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAtrasActionPerformed(evt);
            }
        });
        add(btnAtras, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 20, 110, 30));

        jLabel5.setFont(new java.awt.Font("Perpetua Titling MT", 1, 18)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(102, 102, 102));
        jLabel5.setText("Estas a punto");
        add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 130, -1, -1));

        jLabel7.setFont(new java.awt.Font("Perpetua Titling MT", 1, 18)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(102, 102, 102));
        jLabel7.setText("Asociar un");
        add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 160, -1, -1));

        jLabel6.setFont(new java.awt.Font("Perpetua Titling MT", 1, 18)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(102, 102, 102));
        jLabel6.setText("a la organizacion");
        add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 220, -1, -1));

        jLabel9.setFont(new java.awt.Font("Perpetua Titling MT", 1, 18)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(102, 102, 102));
        jLabel9.setText("Nuevo empleado ");
        add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 190, -1, -1));

        jLabel10.setForeground(new java.awt.Color(102, 102, 102));
        jLabel10.setText("Telefono");
        add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(750, 400, -1, -1));

        txtTelefono.setFont(new java.awt.Font("Georgia", 0, 14)); // NOI18N
        add(txtTelefono, new org.netbeans.lib.awtextra.AbsoluteConstraints(750, 420, 237, 35));

        jLabel11.setForeground(new java.awt.Color(102, 102, 102));
        jLabel11.setText("DNI");
        add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(1040, 110, -1, -1));

        txtDNI.setFont(new java.awt.Font("Georgia", 0, 14)); // NOI18N
        add(txtDNI, new org.netbeans.lib.awtextra.AbsoluteConstraints(1040, 130, 237, 35));

        jLabel13.setForeground(new java.awt.Color(102, 102, 102));
        jLabel13.setText("Fecha Ingreso");
        add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(1040, 250, -1, -1));

        txtJefe.setFont(new java.awt.Font("Georgia", 0, 14)); // NOI18N
        add(txtJefe, new org.netbeans.lib.awtextra.AbsoluteConstraints(1040, 200, 237, 35));

        jLabel14.setForeground(new java.awt.Color(102, 102, 102));
        jLabel14.setText("Usename");
        add(jLabel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(750, 110, -1, -1));

        txtId.setFont(new java.awt.Font("Georgia", 0, 14)); // NOI18N
        add(txtId, new org.netbeans.lib.awtextra.AbsoluteConstraints(750, 130, 237, 35));

        jLabel15.setForeground(new java.awt.Color(102, 102, 102));
        jLabel15.setText("Nombres");
        add(jLabel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(750, 180, -1, -1));

        txtNombre.setFont(new java.awt.Font("Georgia", 0, 14)); // NOI18N
        add(txtNombre, new org.netbeans.lib.awtextra.AbsoluteConstraints(750, 200, 237, 35));

        jLabel16.setForeground(new java.awt.Color(102, 102, 102));
        jLabel16.setText("Apellidos");
        add(jLabel16, new org.netbeans.lib.awtextra.AbsoluteConstraints(750, 250, -1, -1));

        txtApellidos.setFont(new java.awt.Font("Georgia", 0, 14)); // NOI18N
        add(txtApellidos, new org.netbeans.lib.awtextra.AbsoluteConstraints(750, 270, 237, 35));

        jLabel17.setForeground(new java.awt.Color(102, 102, 102));
        jLabel17.setText("Direccion");
        add(jLabel17, new org.netbeans.lib.awtextra.AbsoluteConstraints(750, 320, -1, -1));

        txtDireccion.setFont(new java.awt.Font("Georgia", 0, 14)); // NOI18N
        add(txtDireccion, new org.netbeans.lib.awtextra.AbsoluteConstraints(750, 340, 237, 35));

        cargo.setBackground(new java.awt.Color(69, 73, 74));
        cargo.setFont(new java.awt.Font("Georgia", 0, 14)); // NOI18N
        cargo.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Elije el cargo", "Vendedor", "Area de recursos humanos", "Mecanico", "Jefe Supervisor", "Gerente", "Atención al cliente", " " }));
        add(cargo, new org.netbeans.lib.awtextra.AbsoluteConstraints(1040, 490, 237, 35));
        add(dateIn, new org.netbeans.lib.awtextra.AbsoluteConstraints(1040, 270, 240, 35));

        jLabel18.setForeground(new java.awt.Color(102, 102, 102));
        jLabel18.setText("Jefe Encargado");
        add(jLabel18, new org.netbeans.lib.awtextra.AbsoluteConstraints(1040, 180, -1, -1));

        undefined.setFont(new java.awt.Font("Georgia", 0, 14)); // NOI18N
        undefined.setText("Undifined");
        undefined.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                undefinedActionPerformed(evt);
            }
        });
        add(undefined, new org.netbeans.lib.awtextra.AbsoluteConstraints(1040, 350, -1, -1));

        jLabel19.setForeground(new java.awt.Color(102, 102, 102));
        jLabel19.setText("Fecha Salida");
        add(jLabel19, new org.netbeans.lib.awtextra.AbsoluteConstraints(1040, 400, -1, -1));

        dateOut.setFont(new java.awt.Font("Georgia", 0, 14)); // NOI18N
        add(dateOut, new org.netbeans.lib.awtextra.AbsoluteConstraints(1040, 420, 240, 35));

        sueldo.setBackground(new java.awt.Color(69, 73, 74));
        sueldo.setFont(new java.awt.Font("Georgia", 0, 14)); // NOI18N
        sueldo.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Elije el suelo", "1.500.000", "2.000.000", "2.500.000", "3.000.000", "3.500.000", "4.000.000", "5.000.000", "8.000.000" }));
        add(sueldo, new org.netbeans.lib.awtextra.AbsoluteConstraints(750, 490, 237, 35));

        btnNew.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/btnNew.png"))); // NOI18N
        btnNew.setText("Uno mas");
        btnNew.setBorderPainted(false);
        btnNew.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        btnNew.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnNew.setIconTextGap(10);
        btnNew.setkBackGroundColor(new java.awt.Color(38, 39, 41));
        btnNew.setkEndColor(new java.awt.Color(0, 193, 56));
        btnNew.setkHoverColor(new java.awt.Color(24, 25, 63));
        btnNew.setkHoverEndColor(new java.awt.Color(0, 193, 56));
        btnNew.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        btnNew.setkHoverStartColor(new java.awt.Color(14, 14, 14));
        btnNew.setkPressedColor(new java.awt.Color(24, 25, 63));
        btnNew.setkStartColor(new java.awt.Color(51, 102, 0));
        btnNew.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnNew.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnNew.setRolloverSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnNew.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        add(btnNew, new org.netbeans.lib.awtextra.AbsoluteConstraints(860, 590, 138, -1));

        btnAceptar1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnAceptar1.setText("Aceptar");
        btnAceptar1.setBorderPainted(false);
        btnAceptar1.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        btnAceptar1.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnAceptar1.setIconTextGap(8);
        btnAceptar1.setkBackGroundColor(new java.awt.Color(38, 39, 41));
        btnAceptar1.setkEndColor(new java.awt.Color(0, 193, 56));
        btnAceptar1.setkHoverColor(new java.awt.Color(24, 25, 63));
        btnAceptar1.setkHoverEndColor(new java.awt.Color(0, 193, 56));
        btnAceptar1.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        btnAceptar1.setkHoverStartColor(new java.awt.Color(14, 14, 14));
        btnAceptar1.setkPressedColor(new java.awt.Color(24, 25, 63));
        btnAceptar1.setkStartColor(new java.awt.Color(51, 102, 0));
        btnAceptar1.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnAceptar1.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnAceptar1.setRolloverSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnAceptar1.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnAceptar1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAceptar1ActionPerformed(evt);
            }
        });
        add(btnAceptar1, new org.netbeans.lib.awtextra.AbsoluteConstraints(1050, 590, 138, -1));

        jLabel21.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/img/prueba.png"))); // NOI18N
        add(jLabel21, new org.netbeans.lib.awtextra.AbsoluteConstraints(1110, 0, -1, -1));
    }// </editor-fold>//GEN-END:initComponents

    private void btnAtrasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAtrasActionPerformed
        main.irDashboard(this, cb);
    }//GEN-LAST:event_btnAtrasActionPerformed

    private void undefinedActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_undefinedActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_undefinedActionPerformed

    private void btnAceptar1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAceptar1ActionPerformed
        add();
    }//GEN-LAST:event_btnAceptar1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private keeptoo.KButton btnAceptar1;
    private keeptoo.KButton btnAtras;
    private keeptoo.KButton btnNew;
    private javax.swing.JComboBox<String> cargo;
    private com.toedter.calendar.JDateChooser dateIn;
    private com.toedter.calendar.JDateChooser dateOut;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JComboBox<String> sueldo;
    private javax.swing.JTextField txtApellidos;
    private javax.swing.JTextField txtDNI;
    private javax.swing.JTextField txtDireccion;
    private javax.swing.JTextField txtId;
    private javax.swing.JTextField txtJefe;
    private javax.swing.JTextField txtNombre;
    private javax.swing.JTextField txtTelefono;
    private javax.swing.JCheckBox undefined;
    // End of variables declaration//GEN-END:variables
}