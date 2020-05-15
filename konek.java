/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pembeli;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class konek { // koneksi ke database
    private static Connection konekSQL;
    public static Connection koneksiDB() throws SQLException {
            try {
                String Database="jdbc:mysql://127.0.0.1:3306/tokoberas?serverTimezone=UTC"; // tokoberas database
                String user="root"; // user database
                String pass=""; // password database
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                konekSQL = (Connection) DriverManager.getConnection(Database,user,pass);
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null,"Koneksi ke database  gagal");
            }
        
        return konekSQL;
    }
}

