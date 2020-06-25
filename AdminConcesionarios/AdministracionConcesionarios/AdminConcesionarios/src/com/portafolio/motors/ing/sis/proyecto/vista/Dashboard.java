package com.portafolio.motors.ing.sis.proyecto.vista;

import com.portafolio.motors.ing.sis.proyecto.controlador.concesionarioBuilder;

/**
 *
 * @author Yonier Asprilla
 */
public class Dashboard extends javax.swing.JPanel {

    private main main;
    private concesionarioBuilder cb;

    public Dashboard(main main, concesionarioBuilder cb) {
        this.main = main;
        this.cb = cb;
        initComponents();
        ocultar();
    }

    private void ocultar() {

        navA.setVisible(false);
        navB.setVisible(false);
        navC.setVisible(false);
        navD.setVisible(false);
        navE.setVisible(false);
        navF.setVisible(false);
        navG.setVisible(false);
        navH.setVisible(false);
        navI.setVisible(false);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        contenedor = new javax.swing.JPanel();
        pnlConcesionarios = new javax.swing.JPanel();
        jLabel17 = new javax.swing.JLabel();
        btnDesvincular = new keeptoo.KButton();
        btnModificarDatos = new keeptoo.KButton();
        btnNuevosConcesionarios = new keeptoo.KButton();
        btbBuscarConcesionarios = new keeptoo.KButton();
        pnlOfertas = new javax.swing.JPanel();
        pnlEmpleados = new javax.swing.JPanel();
        kButton1 = new keeptoo.KButton();
        kButton2 = new keeptoo.KButton();
        kButton3 = new keeptoo.KButton();
        kButton4 = new keeptoo.KButton();
        jLabel16 = new javax.swing.JLabel();
        jPanelRound2 = new LIB.JPanelRound();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jPanelRound1 = new LIB.JPanelRound();
        btnHome = new javax.swing.JLabel();
        btnEmpleados = new javax.swing.JLabel();
        btnMecanico = new javax.swing.JLabel();
        btnInventario = new javax.swing.JLabel();
        btnOfertas = new javax.swing.JLabel();
        btnClientes = new javax.swing.JLabel();
        btnMediosPay = new javax.swing.JLabel();
        btnConcesionarios = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        btnAutos = new javax.swing.JLabel();
        navI = new javax.swing.JLabel();
        navF = new javax.swing.JLabel();
        navG = new javax.swing.JLabel();
        navH = new javax.swing.JLabel();
        navA = new javax.swing.JLabel();
        navE = new javax.swing.JLabel();
        navD = new javax.swing.JLabel();
        navC = new javax.swing.JLabel();
        navB = new javax.swing.JLabel();
        fSLabel1 = new LIB.FSLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        LBHora = new rojeru_san.RSLabelHora();
        LBFecha = new rojeru_san.RSLabelFecha();
        jLabel14 = new javax.swing.JLabel();

        setBackground(new java.awt.Color(238, 238, 238));
        setPreferredSize(new java.awt.Dimension(1280, 605));
        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        contenedor.setBackground(new java.awt.Color(204, 153, 255));
        contenedor.setLayout(new java.awt.CardLayout());

        pnlConcesionarios.setBackground(new java.awt.Color(238, 238, 238));
        pnlConcesionarios.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel17.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel17.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/prb1.png"))); // NOI18N
        pnlConcesionarios.add(jLabel17, new org.netbeans.lib.awtextra.AbsoluteConstraints(1100, 490, 70, 70));

        btnDesvincular.setBackground(new java.awt.Color(255, 255, 255));
        btnDesvincular.setForeground(new java.awt.Color(0, 0, 0));
        btnDesvincular.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/userRemove.png"))); // NOI18N
        btnDesvincular.setText("       Desvincular ");
        btnDesvincular.setToolTipText("");
        btnDesvincular.setActionCommand("Asociar empleado");
        btnDesvincular.setBorderPainted(false);
        btnDesvincular.setFont(new java.awt.Font("Georgia", 0, 18)); // NOI18N
        btnDesvincular.setHorizontalAlignment(javax.swing.SwingConstants.LEADING);
        btnDesvincular.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnDesvincular.setIconTextGap(7);
        btnDesvincular.setkBackGroundColor(new java.awt.Color(255, 255, 255));
        btnDesvincular.setkEndColor(new java.awt.Color(255, 255, 255));
        btnDesvincular.setkForeGround(new java.awt.Color(0, 0, 0));
        btnDesvincular.setkHoverColor(new java.awt.Color(0, 193, 56));
        btnDesvincular.setkHoverEndColor(new java.awt.Color(0, 193, 56));
        btnDesvincular.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        btnDesvincular.setkHoverStartColor(new java.awt.Color(0, 193, 56));
        btnDesvincular.setkIndicatorColor(new java.awt.Color(51, 51, 51));
        btnDesvincular.setkStartColor(new java.awt.Color(255, 255, 255));
        pnlConcesionarios.add(btnDesvincular, new org.netbeans.lib.awtextra.AbsoluteConstraints(630, 20, 170, 90));

        btnModificarDatos.setBackground(new java.awt.Color(255, 255, 255));
        btnModificarDatos.setForeground(new java.awt.Color(0, 0, 0));
        btnModificarDatos.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/userMod (2).png"))); // NOI18N
        btnModificarDatos.setText("    Modificar datos");
        btnModificarDatos.setActionCommand("Asociar empleado");
        btnModificarDatos.setBorderPainted(false);
        btnModificarDatos.setFont(new java.awt.Font("Georgia", 0, 18)); // NOI18N
        btnModificarDatos.setHorizontalAlignment(javax.swing.SwingConstants.LEADING);
        btnModificarDatos.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnModificarDatos.setIconTextGap(8);
        btnModificarDatos.setkBackGroundColor(new java.awt.Color(255, 255, 255));
        btnModificarDatos.setkEndColor(new java.awt.Color(255, 255, 255));
        btnModificarDatos.setkForeGround(new java.awt.Color(0, 0, 0));
        btnModificarDatos.setkHoverColor(new java.awt.Color(0, 193, 56));
        btnModificarDatos.setkHoverEndColor(new java.awt.Color(0, 193, 56));
        btnModificarDatos.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        btnModificarDatos.setkHoverStartColor(new java.awt.Color(0, 193, 56));
        btnModificarDatos.setkIndicatorColor(new java.awt.Color(51, 51, 51));
        btnModificarDatos.setkStartColor(new java.awt.Color(255, 255, 255));
        pnlConcesionarios.add(btnModificarDatos, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 20, 224, 90));

        btnNuevosConcesionarios.setBackground(new java.awt.Color(255, 255, 255));
        btnNuevosConcesionarios.setForeground(new java.awt.Color(0, 0, 0));
        btnNuevosConcesionarios.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/imprimir.png"))); // NOI18N
        btnNuevosConcesionarios.setText("   Nuevo Concesionario");
        btnNuevosConcesionarios.setActionCommand("Asociar empleado");
        btnNuevosConcesionarios.setBorderPainted(false);
        btnNuevosConcesionarios.setFont(new java.awt.Font("Georgia", 0, 18)); // NOI18N
        btnNuevosConcesionarios.setHorizontalAlignment(javax.swing.SwingConstants.LEADING);
        btnNuevosConcesionarios.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnNuevosConcesionarios.setIconTextGap(8);
        btnNuevosConcesionarios.setkBackGroundColor(new java.awt.Color(255, 255, 255));
        btnNuevosConcesionarios.setkEndColor(new java.awt.Color(255, 255, 255));
        btnNuevosConcesionarios.setkForeGround(new java.awt.Color(0, 0, 0));
        btnNuevosConcesionarios.setkHoverColor(new java.awt.Color(0, 193, 56));
        btnNuevosConcesionarios.setkHoverEndColor(new java.awt.Color(0, 193, 56));
        btnNuevosConcesionarios.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        btnNuevosConcesionarios.setkHoverStartColor(new java.awt.Color(0, 193, 56));
        btnNuevosConcesionarios.setkIndicatorColor(new java.awt.Color(51, 51, 51));
        btnNuevosConcesionarios.setkStartColor(new java.awt.Color(255, 255, 255));
        btnNuevosConcesionarios.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNuevosConcesionariosActionPerformed(evt);
            }
        });
        pnlConcesionarios.add(btnNuevosConcesionarios, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 20, 250, 90));

        btbBuscarConcesionarios.setBackground(new java.awt.Color(255, 255, 255));
        btbBuscarConcesionarios.setForeground(new java.awt.Color(0, 0, 0));
        btbBuscarConcesionarios.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/info.png"))); // NOI18N
        btbBuscarConcesionarios.setText("      Buscar Concesionario");
        btbBuscarConcesionarios.setActionCommand("Asociar empleado");
        btbBuscarConcesionarios.setBorderPainted(false);
        btbBuscarConcesionarios.setFont(new java.awt.Font("Georgia", 0, 18)); // NOI18N
        btbBuscarConcesionarios.setHorizontalAlignment(javax.swing.SwingConstants.LEADING);
        btbBuscarConcesionarios.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btbBuscarConcesionarios.setIconTextGap(8);
        btbBuscarConcesionarios.setkBackGroundColor(new java.awt.Color(255, 255, 255));
        btbBuscarConcesionarios.setkEndColor(new java.awt.Color(255, 255, 255));
        btbBuscarConcesionarios.setkForeGround(new java.awt.Color(0, 0, 0));
        btbBuscarConcesionarios.setkHoverColor(new java.awt.Color(0, 193, 56));
        btbBuscarConcesionarios.setkHoverEndColor(new java.awt.Color(0, 193, 56));
        btbBuscarConcesionarios.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        btbBuscarConcesionarios.setkHoverStartColor(new java.awt.Color(0, 193, 56));
        btbBuscarConcesionarios.setkIndicatorColor(new java.awt.Color(51, 51, 51));
        btbBuscarConcesionarios.setkStartColor(new java.awt.Color(255, 255, 255));
        btbBuscarConcesionarios.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btbBuscarConcesionariosActionPerformed(evt);
            }
        });
        pnlConcesionarios.add(btbBuscarConcesionarios, new org.netbeans.lib.awtextra.AbsoluteConstraints(864, 20, 260, 90));

        contenedor.add(pnlConcesionarios, "card2");

        pnlOfertas.setBackground(new java.awt.Color(255, 153, 153));
        pnlOfertas.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        contenedor.add(pnlOfertas, "card3");

        pnlEmpleados.setBackground(new java.awt.Color(238, 238, 238));
        pnlEmpleados.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        kButton1.setBackground(new java.awt.Color(255, 255, 255));
        kButton1.setForeground(new java.awt.Color(0, 0, 0));
        kButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/info.png"))); // NOI18N
        kButton1.setText("      Buscar Empleado");
        kButton1.setActionCommand("Asociar empleado");
        kButton1.setBorderPainted(false);
        kButton1.setFont(new java.awt.Font("Georgia", 0, 18)); // NOI18N
        kButton1.setHorizontalAlignment(javax.swing.SwingConstants.LEADING);
        kButton1.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        kButton1.setIconTextGap(8);
        kButton1.setkBackGroundColor(new java.awt.Color(255, 255, 255));
        kButton1.setkEndColor(new java.awt.Color(255, 255, 255));
        kButton1.setkForeGround(new java.awt.Color(0, 0, 0));
        kButton1.setkHoverColor(new java.awt.Color(0, 193, 56));
        kButton1.setkHoverEndColor(new java.awt.Color(0, 193, 56));
        kButton1.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        kButton1.setkHoverStartColor(new java.awt.Color(0, 193, 56));
        kButton1.setkIndicatorColor(new java.awt.Color(51, 51, 51));
        kButton1.setkStartColor(new java.awt.Color(255, 255, 255));
        pnlEmpleados.add(kButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(900, 20, 224, 90));

        kButton2.setBackground(new java.awt.Color(255, 255, 255));
        kButton2.setForeground(new java.awt.Color(0, 0, 0));
        kButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/userAdd.png"))); // NOI18N
        kButton2.setText("   Nuevo empleado");
        kButton2.setActionCommand("Asociar empleado");
        kButton2.setBorderPainted(false);
        kButton2.setFont(new java.awt.Font("Georgia", 0, 18)); // NOI18N
        kButton2.setHorizontalAlignment(javax.swing.SwingConstants.LEADING);
        kButton2.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        kButton2.setIconTextGap(8);
        kButton2.setkBackGroundColor(new java.awt.Color(255, 255, 255));
        kButton2.setkEndColor(new java.awt.Color(255, 255, 255));
        kButton2.setkForeGround(new java.awt.Color(0, 0, 0));
        kButton2.setkHoverColor(new java.awt.Color(0, 193, 56));
        kButton2.setkHoverEndColor(new java.awt.Color(0, 193, 56));
        kButton2.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        kButton2.setkHoverStartColor(new java.awt.Color(0, 193, 56));
        kButton2.setkIndicatorColor(new java.awt.Color(51, 51, 51));
        kButton2.setkStartColor(new java.awt.Color(255, 255, 255));
        kButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kButton2ActionPerformed(evt);
            }
        });
        pnlEmpleados.add(kButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 20, 224, 90));

        kButton3.setBackground(new java.awt.Color(255, 255, 255));
        kButton3.setForeground(new java.awt.Color(0, 0, 0));
        kButton3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/userMod (2).png"))); // NOI18N
        kButton3.setText("    Modificar datos");
        kButton3.setActionCommand("Asociar empleado");
        kButton3.setBorderPainted(false);
        kButton3.setFont(new java.awt.Font("Georgia", 0, 18)); // NOI18N
        kButton3.setHorizontalAlignment(javax.swing.SwingConstants.LEADING);
        kButton3.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        kButton3.setIconTextGap(8);
        kButton3.setkBackGroundColor(new java.awt.Color(255, 255, 255));
        kButton3.setkEndColor(new java.awt.Color(255, 255, 255));
        kButton3.setkForeGround(new java.awt.Color(0, 0, 0));
        kButton3.setkHoverColor(new java.awt.Color(0, 193, 56));
        kButton3.setkHoverEndColor(new java.awt.Color(0, 193, 56));
        kButton3.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        kButton3.setkHoverStartColor(new java.awt.Color(0, 193, 56));
        kButton3.setkIndicatorColor(new java.awt.Color(51, 51, 51));
        kButton3.setkStartColor(new java.awt.Color(255, 255, 255));
        pnlEmpleados.add(kButton3, new org.netbeans.lib.awtextra.AbsoluteConstraints(320, 20, 224, 90));

        kButton4.setBackground(new java.awt.Color(255, 255, 255));
        kButton4.setForeground(new java.awt.Color(0, 0, 0));
        kButton4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/userRemove.png"))); // NOI18N
        kButton4.setText("       Desvincular ");
        kButton4.setToolTipText("");
        kButton4.setActionCommand("Asociar empleado");
        kButton4.setBorderPainted(false);
        kButton4.setFont(new java.awt.Font("Georgia", 0, 18)); // NOI18N
        kButton4.setHorizontalAlignment(javax.swing.SwingConstants.LEADING);
        kButton4.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        kButton4.setIconTextGap(7);
        kButton4.setkBackGroundColor(new java.awt.Color(255, 255, 255));
        kButton4.setkEndColor(new java.awt.Color(255, 255, 255));
        kButton4.setkForeGround(new java.awt.Color(0, 0, 0));
        kButton4.setkHoverColor(new java.awt.Color(0, 193, 56));
        kButton4.setkHoverEndColor(new java.awt.Color(0, 193, 56));
        kButton4.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        kButton4.setkHoverStartColor(new java.awt.Color(0, 193, 56));
        kButton4.setkIndicatorColor(new java.awt.Color(51, 51, 51));
        kButton4.setkStartColor(new java.awt.Color(255, 255, 255));
        pnlEmpleados.add(kButton4, new org.netbeans.lib.awtextra.AbsoluteConstraints(630, 20, 170, 90));

        jLabel16.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel16.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/prb1.png"))); // NOI18N
        pnlEmpleados.add(jLabel16, new org.netbeans.lib.awtextra.AbsoluteConstraints(1100, 490, 70, 70));

        contenedor.add(pnlEmpleados, "card4");

        add(contenedor, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 50, 1160, 560));

        jPanelRound2.setColorPrimario(new java.awt.Color(29, 35, 58));
        jPanelRound2.setColorSecundario(new java.awt.Color(29, 35, 58));
        jPanelRound2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel9.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/img/miniLogo.png"))); // NOI18N
        jLabel9.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jPanelRound2.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 40, 30));

        jLabel10.setFont(new java.awt.Font("SansSerif", 1, 14)); // NOI18N
        jLabel10.setForeground(new java.awt.Color(204, 204, 204));
        jLabel10.setText("Motors");
        jLabel10.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jPanelRound2.add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 0, -1, 30));

        add(jPanelRound2, new org.netbeans.lib.awtextra.AbsoluteConstraints(1110, 20, 110, -1));

        jPanelRound1.setColorPrimario(new java.awt.Color(29, 35, 58));
        jPanelRound1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnHome.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnHome.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/home.png"))); // NOI18N
        btnHome.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnHome.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnHomeMouseClicked(evt);
            }
        });
        jPanelRound1.add(btnHome, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 40, 100, -1));

        btnEmpleados.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnEmpleados.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/newUser.png"))); // NOI18N
        btnEmpleados.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnEmpleados.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnEmpleadosMouseClicked(evt);
            }
        });
        jPanelRound1.add(btnEmpleados, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 120, 100, -1));

        btnMecanico.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnMecanico.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/taller2.png"))); // NOI18N
        btnMecanico.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnMecanico.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnMecanicoMouseClicked(evt);
            }
        });
        jPanelRound1.add(btnMecanico, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 180, 100, -1));

        btnInventario.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnInventario.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/inventory1.png"))); // NOI18N
        btnInventario.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnInventario.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnInventarioMouseClicked(evt);
            }
        });
        jPanelRound1.add(btnInventario, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 240, 100, -1));

        btnOfertas.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnOfertas.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/sale.png"))); // NOI18N
        btnOfertas.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnOfertas.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnOfertasMouseClicked(evt);
            }
        });
        jPanelRound1.add(btnOfertas, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 300, 100, -1));

        btnClientes.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnClientes.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/clients.png"))); // NOI18N
        btnClientes.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnClientes.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnClientesMouseClicked(evt);
            }
        });
        jPanelRound1.add(btnClientes, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 350, 100, -1));

        btnMediosPay.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnMediosPay.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/pay.png"))); // NOI18N
        btnMediosPay.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnMediosPay.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnMediosPayMouseClicked(evt);
            }
        });
        jPanelRound1.add(btnMediosPay, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 400, 100, -1));

        btnConcesionarios.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnConcesionarios.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/stock.png"))); // NOI18N
        btnConcesionarios.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnConcesionarios.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnConcesionariosMouseClicked(evt);
            }
        });
        jPanelRound1.add(btnConcesionarios, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 500, 100, -1));

        jLabel15.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/prb3.png"))); // NOI18N
        jPanelRound1.add(jLabel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, -20, 130, 110));

        btnAutos.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        btnAutos.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/caracteristicas.png"))); // NOI18N
        btnAutos.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnAutos.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnAutosMouseClicked(evt);
            }
        });
        jPanelRound1.add(btnAutos, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 450, 100, -1));

        navI.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/vertical.png"))); // NOI18N
        jPanelRound1.add(navI, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 490, 20, 50));

        navF.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/vertical.png"))); // NOI18N
        jPanelRound1.add(navF, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 340, -1, 50));

        navG.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/vertical.png"))); // NOI18N
        jPanelRound1.add(navG, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 390, -1, 50));

        navH.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/vertical.png"))); // NOI18N
        jPanelRound1.add(navH, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 440, -1, 50));

        navA.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/vertical.png"))); // NOI18N
        jPanelRound1.add(navA, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 30, -1, 50));

        navE.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/vertical.png"))); // NOI18N
        jPanelRound1.add(navE, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 290, -1, 50));

        navD.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/vertical.png"))); // NOI18N
        jPanelRound1.add(navD, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 230, -1, 50));

        navC.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/vertical.png"))); // NOI18N
        jPanelRound1.add(navC, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 170, -1, 50));

        navB.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/vertical.png"))); // NOI18N
        jPanelRound1.add(navB, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 110, -1, 50));

        add(jPanelRound1, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 30, 100, 550));

        fSLabel1.setBackground(new java.awt.Color(238, 238, 238));
        fSLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/userLog.png"))); // NOI18N
        fSLabel1.setText("");
        add(fSLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(1230, 20, 30, 30));

        jLabel11.setFont(new java.awt.Font("Dialog", 1, 18)); // NOI18N
        jLabel11.setForeground(new java.awt.Color(255, 204, 0));
        jLabel11.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel11.setText("•");
        jLabel11.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jLabel11.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel11MouseClicked(evt);
            }
        });
        add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 0, 30, 30));

        jLabel12.setFont(new java.awt.Font("Dialog", 1, 18)); // NOI18N
        jLabel12.setForeground(new java.awt.Color(255, 102, 102));
        jLabel12.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel12.setText("•");
        jLabel12.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jLabel12.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel12MouseClicked(evt);
            }
        });
        add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 0, 20, 30));

        jPanel3.setBackground(new java.awt.Color(238, 238, 238));

        LBHora.setForeground(new java.awt.Color(29, 35, 58));

        LBFecha.setForeground(new java.awt.Color(29, 35, 58));

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(LBHora, javax.swing.GroupLayout.PREFERRED_SIZE, 107, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(LBFecha, javax.swing.GroupLayout.PREFERRED_SIZE, 97, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(LBHora, javax.swing.GroupLayout.DEFAULT_SIZE, 30, Short.MAX_VALUE)
                    .addComponent(LBFecha, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)))
        );

        add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(870, 20, 220, 30));

        jLabel14.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel14.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/portafolio/motors/ing/sis/proyecto/icon/prb2.png"))); // NOI18N
        add(jLabel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(1230, -10, 100, 80));
    }// </editor-fold>//GEN-END:initComponents

    private void jLabel12MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel12MouseClicked
        System.exit(0);
    }//GEN-LAST:event_jLabel12MouseClicked

    private void jLabel11MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel11MouseClicked

    }//GEN-LAST:event_jLabel11MouseClicked

    private void btnHomeMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnHomeMouseClicked
        navA.setVisible(true);
        navB.setVisible(false);
        navC.setVisible(false);
        navD.setVisible(false);
        navE.setVisible(false);
        navF.setVisible(false);
        navG.setVisible(false);
        navH.setVisible(false);
        navI.setVisible(false);
    }//GEN-LAST:event_btnHomeMouseClicked

    private void btnEmpleadosMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnEmpleadosMouseClicked
        pnlEmpleados.setVisible(true);
        pnlConcesionarios.setVisible(false);
        pnlOfertas.setVisible(false);
        navB.setVisible(true);
        navA.setVisible(false);
        navC.setVisible(false);
        navD.setVisible(false);
        navE.setVisible(false);
        navF.setVisible(false);
        navG.setVisible(false);
        navH.setVisible(false);
        navI.setVisible(false);
    }//GEN-LAST:event_btnEmpleadosMouseClicked

    private void btnMecanicoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnMecanicoMouseClicked
        navC.setVisible(true);
        navB.setVisible(false);
        navA.setVisible(false);
        navD.setVisible(false);
        navE.setVisible(false);
        navF.setVisible(false);
        navG.setVisible(false);
        navH.setVisible(false);
        navI.setVisible(false);
    }//GEN-LAST:event_btnMecanicoMouseClicked

    private void btnInventarioMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnInventarioMouseClicked
        navD.setVisible(true);
        navA.setVisible(false);
        navC.setVisible(false);
        navB.setVisible(false);
        navE.setVisible(false);
        navF.setVisible(false);
        navG.setVisible(false);
        navH.setVisible(false);
        navI.setVisible(false);
    }//GEN-LAST:event_btnInventarioMouseClicked

    private void btnOfertasMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnOfertasMouseClicked
        pnlEmpleados.setVisible(false);
        pnlConcesionarios.setVisible(false);
        pnlOfertas.setVisible(true);
        navE.setVisible(true);
        navA.setVisible(false);
        navC.setVisible(false);
        navD.setVisible(false);
        navB.setVisible(false);
        navF.setVisible(false);
        navG.setVisible(false);
        navH.setVisible(false);
        navI.setVisible(false);
    }//GEN-LAST:event_btnOfertasMouseClicked

    private void btnClientesMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnClientesMouseClicked
        navF.setVisible(true);
        navA.setVisible(false);
        navC.setVisible(false);
        navD.setVisible(false);
        navE.setVisible(false);
        navB.setVisible(false);
        navG.setVisible(false);
        navH.setVisible(false);
        navI.setVisible(false);
    }//GEN-LAST:event_btnClientesMouseClicked

    private void btnMediosPayMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnMediosPayMouseClicked
        navG.setVisible(true);
        navA.setVisible(false);
        navC.setVisible(false);
        navD.setVisible(false);
        navE.setVisible(false);
        navF.setVisible(false);
        navB.setVisible(false);
        navH.setVisible(false);
        navI.setVisible(false);
    }//GEN-LAST:event_btnMediosPayMouseClicked

    private void btnAutosMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnAutosMouseClicked
        navH.setVisible(true);
        navA.setVisible(false);
        navC.setVisible(false);
        navD.setVisible(false);
        navE.setVisible(false);
        navF.setVisible(false);
        navG.setVisible(false);
        navB.setVisible(false);
        navI.setVisible(false);
    }//GEN-LAST:event_btnAutosMouseClicked

    private void btnConcesionariosMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnConcesionariosMouseClicked
        pnlEmpleados.setVisible(false);
        pnlConcesionarios.setVisible(true);
        pnlOfertas.setVisible(false);
        navI.setVisible(true);
        navA.setVisible(false);
        navC.setVisible(false);
        navD.setVisible(false);
        navE.setVisible(false);
        navF.setVisible(false);
        navG.setVisible(false);
        navH.setVisible(false);
        navB.setVisible(false);
    }//GEN-LAST:event_btnConcesionariosMouseClicked

    private void kButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kButton2ActionPerformed
        main.irNewconcessionaire(this, cb);
    }//GEN-LAST:event_kButton2ActionPerformed

    private void btnNuevosConcesionariosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNuevosConcesionariosActionPerformed
        main.irNewconcessionaire(this, cb);
    }//GEN-LAST:event_btnNuevosConcesionariosActionPerformed

    private void btbBuscarConcesionariosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btbBuscarConcesionariosActionPerformed
        main.irShowConcessionaire(this, cb);
    }//GEN-LAST:event_btbBuscarConcesionariosActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private rojeru_san.RSLabelFecha LBFecha;
    private rojeru_san.RSLabelHora LBHora;
    private keeptoo.KButton btbBuscarConcesionarios;
    private javax.swing.JLabel btnAutos;
    private javax.swing.JLabel btnClientes;
    private javax.swing.JLabel btnConcesionarios;
    private keeptoo.KButton btnDesvincular;
    private javax.swing.JLabel btnEmpleados;
    private javax.swing.JLabel btnHome;
    private javax.swing.JLabel btnInventario;
    private javax.swing.JLabel btnMecanico;
    private javax.swing.JLabel btnMediosPay;
    private keeptoo.KButton btnModificarDatos;
    private keeptoo.KButton btnNuevosConcesionarios;
    private javax.swing.JLabel btnOfertas;
    private javax.swing.JPanel contenedor;
    private LIB.FSLabel fSLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel3;
    private LIB.JPanelRound jPanelRound1;
    private LIB.JPanelRound jPanelRound2;
    private keeptoo.KButton kButton1;
    private keeptoo.KButton kButton2;
    private keeptoo.KButton kButton3;
    private keeptoo.KButton kButton4;
    private javax.swing.JLabel navA;
    private javax.swing.JLabel navB;
    private javax.swing.JLabel navC;
    private javax.swing.JLabel navD;
    private javax.swing.JLabel navE;
    private javax.swing.JLabel navF;
    private javax.swing.JLabel navG;
    private javax.swing.JLabel navH;
    private javax.swing.JLabel navI;
    private javax.swing.JPanel pnlConcesionarios;
    private javax.swing.JPanel pnlEmpleados;
    private javax.swing.JPanel pnlOfertas;
    // End of variables declaration//GEN-END:variables
}
