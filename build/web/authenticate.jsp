<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="domain.User"%>
<%@page import="model.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authenticate</title>
    </head>
    <body>
        <%
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            String hashedPassword = "";
            
            UserModel model = new UserModel();
            User thisUser = model.findByEmail(email);
            
            try {
                
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
                
                if (hashedPassword.toString().equals(thisUser.getPassword())) {
                    session.setAttribute("id", thisUser.getId());                
                    session.setAttribute("email", thisUser.getEmail());
                    session.setAttribute("names", thisUser.getFullName());

                    response.sendRedirect("dashboard/index.jsp");
                    
                } else {
                    session.setAttribute("error", "Wrong email or password");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            } catch(Exception e) {
                 request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        %>
    </body>
</html>
