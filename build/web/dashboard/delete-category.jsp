<%@page import="model.UserModel"%>
<%@page import="domain.User"%>
<%@page import="model.CategoryModel"%>
<%@page import="domain.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Category</title>
    </head>
    <body>
        <%
            if (session.getAttribute("id") == null) response.sendRedirect("logout.jsp");
            Category category = new CategoryModel().find(Integer.parseInt(request.getParameter("id")));
            
            try {
                CategoryModel model = new CategoryModel();
                model.setCategory(category);
                model.delete();
                response.sendRedirect("all-category.jsp");
                
            } catch(Exception e) {
                response.sendRedirect("all-category.jsp");
            }
        %>
    </body>
</html>
