/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import HotelDAO.LoginDAO;



/**
 *
 * @author ASUS
 */
public class LoginBean {
    
    private String username;
    private String password;
    private String name;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public boolean loginValidate(){
        
        LoginDAO dao=new LoginDAO();
        
        boolean result = dao.LoginValidation(this);
        
        return result;
    }
}
