/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PerBerasan;

/**
 *
 * @author LEGION
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class tokoberas {
    private static Connection tokoberas;
    public static Connection configDB() throws SQLException{
        try{
            String url = "jdbc:mysql://localhost/tubes?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            String user = "root";
            String pass = "";
            
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            tokoberas = DriverManager.getConnection(url, user, pass);
        }catch(SQLException e){
            System.out.println("Koneksi ke Database Gagal" + e.getMessage());
        }
        return tokoberas;
    }
}