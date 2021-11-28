package kullanici;



import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JCheckBox;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import veritabani.DB;

public class kullaniciHesaplari extends javax.swing.JFrame {

    DefaultTableModel dt = new DefaultTableModel();
    DefaultTableModel dt2 = new DefaultTableModel();
    kontrol kontrol = new kontrol();
    private String sifreAcik = null;
    private String sifreKapali = null;
    private String yetki1 = null;
    private String yetki = null;
    private String kul_isim = null;
    private String per_id = null;
    ArrayList<String> arrID = new ArrayList<>();
    ArrayList<String> arrGorev = new ArrayList<>();

    public kullaniciHesaplari() {
        initComponents();
        dt.addColumn("Kullanıcı Adı");
        dt.addColumn("Şifre");
        dt2.addColumn("Adı");
        dt2.addColumn("Soyadı");
        dt2.addColumn("Görevi");
 
        jTable1.setModel(dt);
        jTable2.setModel(dt2);
        jTable1.setModel(dt);
        jTable2.setModel(dt2);
        tableYaz();
        table2Yaz();
    }

    private void table2Yaz() {
        dt2.setRowCount(0);

        DB db = new DB();
        db.baglan();
        try {
            ResultSet rs = db.dataGetir("personel");
            while (rs.next()) {
                dt2.addRow(new String[]{rs.getString("personelAdi"), rs.getString("personelSoyadi"),rs.getString("personelGorev")});
                arrID.add(rs.getString("personelID"));
                arrGorev.add(rs.getString("personelID"));
                
            }
            jTable2.setModel(dt2);
        } catch (Exception e) {
            System.out.println("table2yaz hatası:" + e);
        } finally {
            db.kapat();
        }
    }

    private void tableYaz() {
        dt.setRowCount(0);
        DB db = new DB();
        db.baglan();

        try {
            ResultSet rs = db.dataGetir("kullanicilar");
            if (rs.next()) {
                if (jCheckBox_sifreGoster.isSelected()) {
                    while (rs.next()) {
                        dt.addRow(new String[]{rs.getString("kullanici_isim"), rs.getString("kullanici_sifre")});
                        sifreKapali = "";
                    }
                } else {
                    while (rs.next()) {
                        sifreAcik = rs.getString("kullanici_sifre");
                        for (int j = 0; j < sifreAcik.length(); j++) {
                            sifreKapali += "*";
                        }
                        dt.addRow(new String[]{rs.getString("kullanici_isim"), sifreKapali});
                        sifreKapali = "";
                    }
                }
            }
        } catch (SQLException ex) {
            System.out.println("tablo yazma hatası:" + ex);
        } finally {
            db.kapat();
        }
        jTable1.setModel(dt);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txtKullaniciAdi = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jPasswordField1 = new javax.swing.JPasswordField();
        jLabel9 = new javax.swing.JLabel();
        txt_personal_id = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jCheckBox_sifreGoster = new javax.swing.JCheckBox();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable2 = new javax.swing.JTable();
        jButton1 = new javax.swing.JButton();
        jButton_kaydet = new javax.swing.JButton();
        jButton_sil = new javax.swing.JButton();
        jButton_duzenle = new javax.swing.JButton();
        jLabel15 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Kullanıcı Hesapları Paneli");
        setMinimumSize(new java.awt.Dimension(600, 600));
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setOpaque(false);
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(0, 51, 102));
        jLabel1.setText("Kullanıcı Adı :");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 10, -1, -1));
        jPanel1.add(txtKullaniciAdi, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 10, 218, -1));

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 51, 102));
        jLabel2.setText("Şifre :");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 60, -1, -1));
        jPanel1.add(jPasswordField1, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 60, 218, -1));

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(0, 51, 102));
        jLabel9.setText("Personal ID :");
        jPanel1.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 110, -1, -1));
        jPanel1.add(txt_personal_id, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 110, 218, -1));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 80, 430, 140));

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
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
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        getContentPane().add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 260, 430, 100));

        jCheckBox_sifreGoster.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jCheckBox_sifreGoster.setForeground(new java.awt.Color(153, 0, 0));
        jCheckBox_sifreGoster.setText("Şifreyi Göster");
        jCheckBox_sifreGoster.setOpaque(false);
        jCheckBox_sifreGoster.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jCheckBox_sifreGosterMouseClicked(evt);
            }
        });
        getContentPane().add(jCheckBox_sifreGoster, new org.netbeans.lib.awtextra.AbsoluteConstraints(460, 230, -1, -1));

        jTable2.setModel(new javax.swing.table.DefaultTableModel(
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
        jTable2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable2MouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(jTable2);

        getContentPane().add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 410, 440, 100));

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton1.setForeground(new java.awt.Color(0, 51, 102));
        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icons/1466161311_agt_back.png"))); // NOI18N
        jButton1.setBorder(null);
        jButton1.setBorderPainted(false);
        jButton1.setContentAreaFilled(false);
        jButton1.setFocusable(false);
        jButton1.setLabel("ANA MENÜ");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(450, 10, 140, -1));

        jButton_kaydet.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton_kaydet.setForeground(new java.awt.Color(0, 51, 102));
        jButton_kaydet.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icons/kaydet.png"))); // NOI18N
        jButton_kaydet.setText("Kaydet");
        jButton_kaydet.setBorderPainted(false);
        jButton_kaydet.setOpaque(false);
        jButton_kaydet.setPreferredSize(new java.awt.Dimension(120, 40));
        jButton_kaydet.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton_kaydetActionPerformed(evt);
            }
        });
        getContentPane().add(jButton_kaydet, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 520, 140, -1));

        jButton_sil.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton_sil.setForeground(new java.awt.Color(0, 51, 102));
        jButton_sil.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icons/kayıtsil.png"))); // NOI18N
        jButton_sil.setText("Sil");
        jButton_sil.setBorderPainted(false);
        jButton_sil.setOpaque(false);
        jButton_sil.setPreferredSize(new java.awt.Dimension(120, 40));
        jButton_sil.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton_silActionPerformed(evt);
            }
        });
        getContentPane().add(jButton_sil, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 520, 140, -1));

        jButton_duzenle.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton_duzenle.setForeground(new java.awt.Color(0, 51, 102));
        jButton_duzenle.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icons/duzenle.png"))); // NOI18N
        jButton_duzenle.setText("Güncelle");
        jButton_duzenle.setBorderPainted(false);
        jButton_duzenle.setOpaque(false);
        jButton_duzenle.setPreferredSize(new java.awt.Dimension(121, 40));
        jButton_duzenle.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton_duzenleActionPerformed(evt);
            }
        });
        getContentPane().add(jButton_duzenle, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 520, 140, -1));

        jLabel15.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel15.setText("PERSONEL KAYIT İŞLEMLERİ");
        getContentPane().add(jLabel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 50, -1, -1));

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel4.setText("KULLANICI ADI OLAN PERSONEL LİSTESİ");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(190, 240, -1, -1));

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel5.setText(" PERSONEL LİSTESİ");
        getContentPane().add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(240, 390, -1, -1));

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents
boolean alanKontrol() {
        String isim = txtKullaniciAdi.getText().trim();
        String sifre = String.copyValueOf(jPasswordField1.getPassword());
        String personal_id = txt_personal_id.getText().trim();
        return !isim.isEmpty() && !sifre.isEmpty() && !personal_id.isEmpty();
    }
    private void jButton_kaydetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton_kaydetActionPerformed
        String isim = txtKullaniciAdi.getText().trim();
        String sifre = String.copyValueOf(jPasswordField1.getPassword());
        String personal_id = txt_personal_id.getText().trim();

        if (alanKontrol()) {
            int button_id = 8; // yetki kontrolü için
            if (kontrol.kontrol(button_id)) {
                
                DB db = new DB();
                db.baglan();
                try {
                    boolean durum = db.genelQuery("insert into kullanicilar values(null,'" + isim + "','" + sifre + personal_id + "')");
                    if (durum) {
                        JOptionPane.showMessageDialog(rootPane, "Kullanıcı kaydı başarılı.");
                    } else {
                        JOptionPane.showMessageDialog(rootPane, "Kullanıcı adı kayıtlı. Farklı bir kullanıcı adı kullanın.");
                    }
                } catch (Exception e) {
                    System.out.println("Kaydetme hatası" + e);
                } finally {
                    db.kapat();
                }
                yetki = "";
                tableYaz();
            }
        } else {
            JOptionPane.showMessageDialog(rootPane, "alanlar boş!");
        }

    }//GEN-LAST:event_jButton_kaydetActionPerformed


    private void jButton_silActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton_silActionPerformed
        int button_id = 9; // yetki kontrolü için
        if (jTable1.getSelectedRow() > -1) {
            if (kontrol.kontrol(button_id)) { //  yetki kontrolü
                int cevap = JOptionPane.showConfirmDialog(rootPane, "emin misiniz?", "Kullanıcı Sil", JOptionPane.YES_NO_OPTION);
                if (cevap == 0) {
                    DB db = new DB();
                    db.baglan();
                    try {
                        String isim = jTable1.getValueAt(jTable1.getSelectedRow(), 0).toString();
                        boolean durum = db.genelQuery("delete from kullanicilar where kullanici_isim='" + isim + "'");
                        if (durum) {
                            JOptionPane.showMessageDialog(rootPane, "silme işlemi başarılı.");
                        }
                        tableYaz();
                    } catch (Exception e) {
                        System.out.println("Silme işlemi hatası");
                    } finally {
                        db.kapat();
                    }
                }
            }
        } else {
            JOptionPane.showMessageDialog(rootPane, "seçim yapınız.");
        }
    }//GEN-LAST:event_jButton_silActionPerformed

    private void jCheckBox_sifreGosterMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jCheckBox_sifreGosterMouseClicked
        tableYaz();    }//GEN-LAST:event_jCheckBox_sifreGosterMouseClicked

  

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked

        DB db = new DB();
        db.baglan();
        try {
            kul_isim = jTable1.getValueAt(jTable1.getSelectedRow(), 0).toString();
            ResultSet rs = db.dataGetir("kullanicilar where kullanici_isim='" + kul_isim + "'");
            if (rs.next()) {
                txtKullaniciAdi.setText(rs.getString("kullanici_isim"));
                jPasswordField1.setText(rs.getString("kullanici_sifre"));
                yetki1 = rs.getString("kullanici_yetki");
                txt_personal_id.setText(rs.getString("personalID"));
                per_id = rs.getString("personalID");
            }
        } catch (Exception e) {
            System.out.println("jtable1 clicked hatası:" + e);
        } finally {
            db.kapat();
        }
       
    }//GEN-LAST:event_jTable1MouseClicked

    private void jButton_duzenleActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton_duzenleActionPerformed
        int button_id = 10;
        String isim = txtKullaniciAdi.getText().trim();
        String sifre = (String.copyValueOf(jPasswordField1.getPassword()));
        String personal_id = txt_personal_id.getText().trim();
        if (alanKontrol()) {
            if (kontrol.kontrol(button_id)) {
                if (jTable1.getSelectedRow() > -1) {
                    kul_isim = jTable1.getValueAt(jTable1.getSelectedRow(), 0).toString();
                    
                    DB db = new DB();
                    db.baglan();
                    boolean durum = db.genelQuery("UPDATE kullanicilar SET kullanici_isim='" + isim + "',kullanici_sifre ='" + sifre + "',kullanici_yetki='" + yetki + "',personalID='" + personal_id + "' WHERE kullanici_isim='" + kul_isim + "'");
                    if (durum) {
                        JOptionPane.showMessageDialog(rootPane, "Düzenleme başarılı.");
                    } else {
                        JOptionPane.showMessageDialog(rootPane, "Düzenleme başarısız.");
                    }
                    db.kapat();
                    yetki = "";
                    tableYaz();
                } else {
                    JOptionPane.showMessageDialog(rootPane, "seçim yapınız.");
                }
            }
        } else {
            JOptionPane.showMessageDialog(rootPane, "alanlar boş!");
        }
    }//GEN-LAST:event_jButton_duzenleActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
/*        Menu don = new Menu();
       don.setVisible(true);*/
        this.setVisible(false);

    }//GEN-LAST:event_jButton1ActionPerformed

    private void jTable2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable2MouseClicked
        txtKullaniciAdi.setText("");
        jPasswordField1.setText("");
        txt_personal_id.setText(arrID.get(jTable2.getSelectedRow()));
    }//GEN-LAST:event_jTable2MouseClicked
    private JCheckBox jCheckBoxd;

    

    public static void main(String args[]) {
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("windows".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(kullaniciHesaplari.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        java.awt.EventQueue.invokeLater(() -> {
            new kullaniciHesaplari().setVisible(true);
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton_duzenle;
    private javax.swing.JButton jButton_kaydet;
    private javax.swing.JButton jButton_sil;
    private javax.swing.JCheckBox jCheckBox_sifreGoster;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPasswordField jPasswordField1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    private javax.swing.JTable jTable2;
    private javax.swing.JTextField txtKullaniciAdi;
    private javax.swing.JTextField txt_personal_id;
    // End of variables declaration//GEN-END:variables
}
