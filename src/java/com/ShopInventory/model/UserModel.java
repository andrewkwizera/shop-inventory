/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ShopInventory.model;

import com.ShopInventory.domain.Role;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author hp
 */
public class UserModel {
  private int id;
  private String names;
  private String email;
  private String password;
  private Role role;
  private boolean isActive;
  private Date createdAt;  
  
  private String msg="";
  
  public void getValues(HttpServletRequest request){
   email=request.getParameter("email").toString();
   password=request.getParameter("password").toString();
  }
  public boolean userChecked(){
     boolean ok=false;
  if(!(email.equals("r@gmail.com") && password.equals("mu"))){
   ok=true;
   msg="Invalid credentials";
   }
  

   return ok;
  }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNames() {
        return names;
    }

    public void setNames(String names) {
        this.names = names;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
  
  
  
}
