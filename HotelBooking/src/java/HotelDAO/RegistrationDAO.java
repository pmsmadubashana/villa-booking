/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HotelDAO;

import Beans.RegistrartionBean;
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
public class RegistrationDAO {
    boolean result = false;
    
    DBConnection dbcon = new DBConnection();
    Connection con;
    Statement stmt;
    
    public boolean validateMail(RegistrartionBean ben)
    {
        String email=ben.getEmail();
        String password=ben.getPassword();
        String username=ben.getUname();
        con= dbcon.getConnection();
        
        PreparedStatement pst;
        
        try {
            pst = con.prepareStatement("SELECT*FROM users WHERE email=?");
            pst.setString(1, email);
            
            ResultSet rst = pst.executeQuery();
            
            if(rst.next())
            {
                result = false;
            }else{
                result = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return result;
    }
    
    public void addData(RegistrartionBean ben)
    {
        String email=ben.getEmail();
        String password=ben.getPassword();
        String username=ben.getUname();
        
        
        Statement smt;
        con= dbcon.getConnection();

        try {
            smt= con.createStatement();
            String query="INSERT INTO users(name,email,password) VALUES('"+username+"','"+email+"','"+password+"')";
            smt.execute(query);
            
        } catch (SQLException ex) {
            Logger.getLogger(RegistrationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    public boolean removeData(RegistrartionBean ben)
    {
        boolean res= false;
        String id= ben.getId();
        
        Statement smt;
        con= dbcon.getConnection();
        
        try {
            smt= con.createStatement();
            String query="SELECT*FROM users WHERE id='"+id+"'";
            smt = con.createStatement();
            ResultSet rs = smt.executeQuery(query);
            if(rs.next())
            {
                try {
                smt= con.createStatement();
                String qery="DELETE FROM users WHERE id='"+id+"'";
                smt.execute(qery);
            
                } catch (SQLException ex) {
                Logger.getLogger(RegistrationDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
                res=true;
            }
            else
            {
                res=false;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(RegistrationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        return res;
    }
    
    public void update(RegistrartionBean ben)
    {
        String id = ben.getId();
        String email=ben.getEmail();
        String password=ben.getPassword();
        String username=ben.getUname();
        
        Statement smt;
        con= dbcon.getConnection();
        
        try {
            smt= con.createStatement();
            String query="UPDATE users SET name='"+username+"',email='"+email+"',password='"+password+"' WHERE id='"+id+"' ";
            smt.execute(query);
            
        } catch (SQLException ex) {
            Logger.getLogger(RegistrationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
