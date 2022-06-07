<%@page import="model.UserModel"%>
<%@page import="domain.User"%>
<%@page import="model.CategoryModel"%>
<%@page import="domain.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Category</title>
    </head>
    <body>
        <%
            if (session.getAttribute("id") == null) response.sendRedirect("logout.jsp");
            User me = new UserModel().find((Integer) session.getAttribute("id"));
            Category category = new Category();
            category.setId(Integer.parseInt(request.getParameter("id")));
            category.setName(request.getParameter("name"));
            category.setDescription(request.getParameter("description"));
            category.setUser(me);
            category.setIsActive(true);
            category.setCreatedAt(new java.sql.Date(new java.util.Date().getTime()));
            
            try {
                CategoryModel model = new CategoryModel();
                model.setCategory(category);
                model.update();
                response.sendRedirect("all-category.jsp");
                
            } catch(Exception e) {
                response.sendRedirect("all-category.jsp");
            }
        %>
    </body>
</html>
