/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HotelDAO;


import Beans.LoginBean;
import Services.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class LoginDAO {
    
    DBConnection dbcon = new DBConnection();
    Connection con;
    Statement stmt;
    
    public boolean LoginValidation(LoginBean bean)
    {
        boolean result = false;
        
        String username= bean.getUsername();
        String password=bean.getPassword();
        String name;
        con= dbcon.getConnection();
        
        PreparedStatement pst;
        
        try {
            pst = con.prepareStatement("SELECT*FROM users WHERE email=? AND password=?");
            pst.setString(1, username);
            pst.setString(2,password);
            
            ResultSet rst = pst.executeQuery();
            
            if(rst.next())
            { 
                bean.setName(rst.getString(2));
                result = true;
            }else{
                result = false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return result;
    }
    
    
    
   
}
