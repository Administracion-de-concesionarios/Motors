package com.portafolio.motors.ing.sis.proyecto.vista;

import com.portafolio.motors.ing.sis.proyecto.controlador.Listas;
import com.portafolio.motors.ing.sis.proyecto.controlador.concesionarioBuilder;
import com.portafolio.motors.ing.sis.proyecto.modelo.SQLstatement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Yonier Asprilla
 */
public class showConcessionaire extends javax.swing.JPanel {

    private main main;
    private concesionarioBuilder cb;
    DefaultTableModel model;
    SQLstatement mensajero;

    public showConcessionaire(main main) {
        this.main = main;
        initComponents();
        mostrarConcesionarios();
    }

    private void mostrarConcesionarios() {

        this.model.addColumn("ID");
        this.model.addColumn("Nombre");
        this.model.addColumn("Direccion");
        this.model.addColumn("Telefono");
        tbConcesionarios.setModel(model);
        Listas<concesionarioBuilder> datos = mensajero.buscarConcesionarios();
        Object[] filas = new Object[4];
        if (datos != null) {
            try {
                for (int i = 0; i < datos.size(); i++) {
                    filas[0] = (datos.get(i).getId());
                    filas[1] = (datos.get(i).getNombre());
                    filas[2] = (datos.get(i).getDireccion());
                    filas[3] = (datos.get(i).getTelefono());
                    model.addColumn(filas);
                }
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null, "¡No se pudieron cargar los datos", "Motors", JOptionPane.ERROR_MESSAGE);
            }

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

        jScrollPane1 = new javax.swing.JScrollPane();
        tbConcesionarios = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        txtSearch = new LIB.FSTexFieldMD();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jSeparator3 = new javax.swing.JSeparator();
        btnAceptar = new keeptoo.KButton();

        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        tbConcesionarios.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(tbConcesionarios);

        add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 0, 930, 480));

        jPanel1.setBackground(new java.awt.Color(29, 35, 58));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        txtSearch.setBackground(new java.awt.Color(29, 35, 58));
        txtSearch.setForeground(new java.awt.Color(255, 255, 255));
        txtSearch.setBordeColorNoFocus(new java.awt.Color(153, 153, 255));
        txtSearch.setMaterialDesing(true);
        txtSearch.setPlaceholder("Filtrar por nombre");
        txtSearch.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtSearchKeyTyped(evt);
            }
        });
        jPanel1.add(txtSearch, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 260, 150, -1));

        jLabel5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/img/logos.png"))); // NOI18N
        jLabel5.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jPanel1.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 30, 80, -1));

        jLabel6.setFont(new java.awt.Font("SansSerif", 1, 18)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(255, 255, 255));
        jLabel6.setText("Motors");
        jLabel6.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jPanel1.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 70, -1, 30));

        jSeparator3.setForeground(new java.awt.Color(51, 51, 51));
        jSeparator3.setOrientation(javax.swing.SwingConstants.VERTICAL);
        jPanel1.add(jSeparator3, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 60, 11, 50));

        btnAceptar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/trash.png"))); // NOI18N
        btnAceptar.setText("Desvincular");
        btnAceptar.setBorderPainted(false);
        btnAceptar.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        btnAceptar.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnAceptar.setIconTextGap(8);
        btnAceptar.setkBackGroundColor(new java.awt.Color(38, 39, 41));
        btnAceptar.setkEndColor(new java.awt.Color(0, 193, 56));
        btnAceptar.setkHoverColor(new java.awt.Color(24, 25, 63));
        btnAceptar.setkHoverEndColor(new java.awt.Color(0, 193, 56));
        btnAceptar.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        btnAceptar.setkHoverStartColor(new java.awt.Color(24, 25, 63));
        btnAceptar.setkPressedColor(new java.awt.Color(24, 25, 63));
        btnAceptar.setkStartColor(new java.awt.Color(51, 102, 0));
        btnAceptar.setPressedIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnAceptar.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnAceptar.setRolloverSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnAceptar.setSelectedIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/usVerified.png"))); // NOI18N
        btnAceptar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAceptarActionPerformed(evt);
            }
        });
        jPanel1.add(btnAceptar, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 340, 138, -1));

        add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 200, 481));
    }// </editor-fold>//GEN-END:initComponents

    private void txtSearchKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtSearchKeyTyped
        //filtro();
    }//GEN-LAST:event_txtSearchKeyTyped

    private void btnAceptarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAceptarActionPerformed
        //registrar();
    }//GEN-LAST:event_btnAceptarActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private keeptoo.KButton btnAceptar;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JSeparator jSeparator3;
    private javax.swing.JTable tbConcesionarios;
    private LIB.FSTexFieldMD txtSearch;
    // End of variables declaration//GEN-END:variables
}
