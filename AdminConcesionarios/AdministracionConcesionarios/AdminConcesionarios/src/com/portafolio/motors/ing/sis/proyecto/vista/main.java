package com.portafolio.motors.ing.sis.proyecto.vista;

import javax.swing.JPanel;

/**
 *
 * @author yonier
 */
public class main extends javax.swing.JFrame {

    private Dashboard dhs;
    private newConcessionaire nc;
    private showConcessionaire sc;
    //private estadistica es;

    public main() {
        setUndecorated(true);
        setName("Principal");
        setResizable(true);
        pack();
        setIconImage(getIconImage());
        setLocationRelativeTo(null);
        iniciar();
        //this.setAlwaysOnTop(true);
    }

    private void iniciar() {
        dhs = new Dashboard(this);
        dhs.setVisible(true);
        add(dhs);
        pack();
        setLocationRelativeTo(null);
    }

    protected void irDashboard(JPanel jPanel) {
        remove(jPanel);
        dhs = new Dashboard(this);
        dhs.setVisible(true);
        add(dhs);
        pack();
        setLocationRelativeTo(null);
    }

    public void irNewconcessionaire(JPanel jpanel) {
        remove(jpanel);
        nc = new newConcessionaire(this);

        nc.setVisible(true);
        add(nc);
        pack();
        setLocationRelativeTo(null);
    }

    public void irShowConcessionaire(JPanel jpanel) {
        remove(jpanel);
        sc = new showConcessionaire(this);
        sc.setVisible(true);
        add(sc);
        pack();
        setLocationRelativeTo(null);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Windows".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }

        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new main().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
