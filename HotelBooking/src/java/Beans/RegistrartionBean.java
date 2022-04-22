/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import HotelDAO.RegistrationDAO;



/**
 *
 * @author ASUS
 */
public class RegistrartionBean {
    
    private String id;
    private String uname;
    private String password;
    private String email;
    
    public String getId() {
        return id;
    }
    

    public void setId(String id) {
        this.id = id;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUname() {
        return uname;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }
    
    public boolean validateMail()
    {
        boolean result;
        RegistrationDAO rdao = new RegistrationDAO();
        
        result =rdao.validateMail(this);
        
        return result;
    }
    
    public void add()
    {
        RegistrationDAO rdao = new RegistrationDAO();
        rdao.addData(this);
    }
    
    public boolean removeUser()
    {
        boolean res;
        RegistrationDAO rdao = new RegistrationDAO();
        res=rdao.removeData(this);
        return res;
    }
    
    public void update()
    {
        RegistrationDAO rdao = new RegistrationDAO();
        rdao.update(this);
    }
    
}
