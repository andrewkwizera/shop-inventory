<%-- 
    Document   : login
    Created on : Apr 16, 2022, 7:03:22 PM
    Author     : hp
--%>

<%@page import="com.ShopInventory.model.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
UserModel um = (UserModel) request.getAttribute("user");
        if(um==null){
        um= new UserModel();
        request.setAttribute("user", um);
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
    </head>
    <body>
        <form action="UserLogin" method="POST">
            
            <label>E-mail</label><input type="email" name="email" required=""><br>
            <label>Password</label><input type="password" name="password"><label><%=um.getMsg() %></label><br><br>
            
            <input type="submit" value="Login">
            
        </form>
    </body>
</html>
