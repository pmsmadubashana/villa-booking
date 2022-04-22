package HotelDAO;

import Beans.BookingBean;
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
public class BookingDAO {
    boolean result = false;
    
    DBConnection dbcon = new DBConnection();
    Connection con;
    Statement stmt;
    
    
    
    public boolean addData(BookingBean ben)
    { 
        boolean res = false;
       String name = ben.getName();
       String contact = ben.getContact();
       String checkin = ben.getCheckin();
       String checkout = ben.getCheckout();
       String adults= ben.getAdults();
       String child = ben.getChild();
       String room = ben.getRooms();
       
       Statement smt;
        con= dbcon.getConnection();
        
        
        try {
            smt= con.createStatement();
            String query="INSERT INTO booking(name,contact,checkin,checkout,adults,child,rooms) VALUES('"+name+"','"+contact+"','"+checkin+"','"+checkout+"','"+adults+"','"+child+"','"+room+"')";
            smt.execute(query);
            res = true;
            
        } catch (SQLException ex) {
            Logger.getLogger(RegistrationDAO.class.getName()).log(Level.SEVERE, null, ex);
            res = false;
        }
        
        return res;
    }
    
    public boolean add(BookingBean ben)
    {
         boolean res = false;
       String name = ben.getName();
       String contact = ben.getContact();
       String checkin = ben.getCheckin();
       String checkout = ben.getCheckout();
       String adults= ben.getAdults();
       String child = ben.getChild();
       String room = ben.getRooms();
       String state = ben.getState();
       
       Statement smt;
        con= dbcon.getConnection();
        
        
        try {
            smt= con.createStatement();
            String query="INSERT INTO booking(name,contact,checkin,checkout,adults,child,rooms,state) VALUES('"+name+"','"+contact+"','"+checkin+"','"+checkout+"','"+adults+"','"+child+"','"+room+"','"+state+"')";
            smt.execute(query);
            res = true;
            
        } catch (SQLException ex) {
            Logger.getLogger(RegistrationDAO.class.getName()).log(Level.SEVERE, null, ex);
            res = false;
        }
        
        return res;
    }
    
    public void update(BookingBean ben)
    {
        String id= ben.getId();
        String name = ben.getName();
       String contact = ben.getContact();
       String checkin = ben.getCheckin();
       String checkout = ben.getCheckout();
       String adults= ben.getAdults();
       String child = ben.getChild();
       String room = ben.getRooms();
//     String state = ben.getState();
       
       Statement smt;
        con= dbcon.getConnection();
        
        try {
            smt= con.createStatement();
            String query="UPDATE booking SET name='"+name+"',contact='"+contact+"',checkin='"+checkin+"',checkout='"+checkout+"',adults='"+adults+"',child='"+child+"',rooms='"+room+"'  WHERE id='"+id+"' ";
            smt.execute(query);
            
        } catch (SQLException ex) {
            Logger.getLogger(RegistrationDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean updateState(BookingBean ben)
    {
        String id= ben.getId();
        String state = ben.getState();
        Statement smt;
        boolean res = false;
        con= dbcon.getConnection();
        
        try {
            smt= con.createStatement();
            String query="UPDATE booking SET state='"+state+"' WHERE id='"+id+"' ";
            smt.execute(query);
            res= true;
            
        } catch (SQLException ex) {
            Logger.getLogger(RegistrationDAO.class.getName()).log(Level.SEVERE, null, ex);
            res =false;
        }
        
        return res;
    }
    
    public void delete(BookingBean ben)
    {
        String id= ben.getId();
        
        Statement smt;
        con= dbcon.getConnection();
        try {
                smt= con.createStatement();
                String qery="DELETE FROM booking WHERE id='"+id+"'";
                smt.execute(qery);
            
            } catch (SQLException ex) {
                Logger.getLogger(RegistrationDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    
    
//    public void addUser(BookingBean ben)
//    {
//       String name = ben.getName();
//       String contact=ben.getContact();
//       String date=ben.getDate();
//       String time =ben.getTime();
//       String redio=ben.getRedio();
//       String location= ben.getLocation();
//       String people = ben.getPeople();
//       
//       Statement smt;
//        con= dbcon.getConnection();
//        
//        
//        try {
//            smt= con.createStatement();
//            String query="INSERT INTO booking(name,contact,date,time,redio,location,peoples) VALUES('"+name+"','"+contact+"','"+date+"','"+time+"','"+redio+"','"+location+"','"+people+"')";
//            smt.execute(query);
//            
//        } catch (SQLException ex) {
//            Logger.getLogger(RegistrationDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        
//    }
    
}



