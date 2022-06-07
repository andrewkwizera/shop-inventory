<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="domain.UserRole"%>
<%@page import="model.UserModel"%>
<%@page import="domain.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Save User</title>
    </head>
    <body>
        <%
            String hashedPassword = "";
            String password=request.getParameter("password");
            
            try {
                MessageDigest md = MessageDigest.getInstance("MD5");
                md.update(password.getBytes());
                byte[] bytes = md.digest();
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < bytes.length; i++) {
                    sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
                }
                hashedPassword = sb.toString();
            } catch (NoSuchAlgorithmException e) {
                hashedPassword = password;
            }
            
            User user = new User();
            user.setId(new UserModel().all().size() + 1);
            user.setFullName(request.getParameter("names"));
            user.setEmail(request.getParameter("email"));
            user.setPassword(hashedPassword);
            user.setUserRole(UserRole.USER);
            user.setIsActive(false);
            user.setCreatedAt(new java.sql.Date(new java.util.Date().getTime()));
            
            try {
                UserModel model = new UserModel();
                model.setUser(user);
                model.save();
                request.getRequestDispatcher("login.jsp").forward(request, response);
                
            } catch(Exception e) {
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        %>
    </body>
</html>
