 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class DBConnection {
    
    public Connection getConnection(){
        
     Connection con = null;
     
     String path = "jdbc:mysql://127.0.0.1:3306/hotel";
     
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(path,"root","");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
     return con;
    }
    
}
