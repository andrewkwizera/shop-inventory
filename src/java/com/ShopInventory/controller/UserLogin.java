/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ShopInventory.controller;

import com.ShopInventory.model.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
@WebServlet(name = "UserLogin", urlPatterns = {"/UserLogin"})
public class UserLogin extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
        UserModel um = (UserModel) request.getAttribute("user");
        if(um==null){
        um= new UserModel();
        request.setAttribute("user", um);
        }
        
            RequestDispatcher rq= request.getRequestDispatcher("/login.jsp");
        um.getValues(request);
        if(um.userChecked()){
        rq.forward(request, response);
        }
        }catch(Exception ex){
        
        }
      
    }

  

}
