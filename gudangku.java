/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gudang;

/**
 *
 * @author LEGION
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class gudangku {
    private static Connection gudang;
    public static Connection configDB() throws SQLException{
        try{
            String url = "jdbc:mysql://localhost/tubes?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            String user = "root";
            String pass = "";
            
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            gudang = DriverManager.getConnection(url, user, pass);
        }catch(SQLException e){
            System.out.println("Koneksi ke Database Gagal" + e.getMessage());
        }
        return gudang;
    }
}