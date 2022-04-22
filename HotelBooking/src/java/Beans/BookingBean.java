/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import HotelDAO.BookingDAO;



/**
 *
 * @author ASUS
 */
public class BookingBean {
    
       private String name;
       private String contact;
       private String checkin;
       private String checkout;
       private String adults;
       private String child;
       private String rooms;
       private String id;
       private String state;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setState(String state) {
        this.state = state;
    }
       
    
    public void setName(String name) {
        this.name = name;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public void setCheckin(String checkin) {
        this.checkin = checkin;
    }

    public void setCheckout(String checkout) {
        this.checkout = checkout;
    }

    public void setAdults(String adults) {
        this.adults = adults;
    }

    public void setChild(String child) {
        this.child = child;
    }

    public void setRooms(String rooms) {
        this.rooms = rooms;
    }

    public String getName() {
        return name;
    }

    public String getContact() {
        return contact;
    }

    public String getCheckin() {
        return checkin;
    }

    public String getCheckout() {
        return checkout;
    }

    public String getAdults() {
        return adults;
    }

    public String getChild() {
        return child;
    }

    public String getRooms() {
        return rooms;
    }

    public String getState() {
        return state;
    }
    
    public boolean updateState()
    {
        BookingDAO dao = new BookingDAO();
        boolean res=dao.updateState(this);
        
        return res;
    }
    
    public void update()
    {
        BookingDAO dao = new BookingDAO();
        dao.update(this);
    }

    public boolean addData()
    {
        boolean res = false;
        BookingDAO dao = new BookingDAO();
        res=dao.addData(this);
        return res;
    }
    
    public boolean add()
    {
        boolean res = false;
        BookingDAO dao = new BookingDAO();
        res=dao.add(this);
        
        return res;
    }
    
    public void delete()
    {
        BookingDAO dao = new BookingDAO();
        dao.delete(this);
    }
}
